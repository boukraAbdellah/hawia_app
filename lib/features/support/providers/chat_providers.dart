import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../auth/providers/auth_provider.dart'; // Ensure this path is correct
import '../models/company_chat_message.dart';
import '../models/chat_response.dart';
import '../services/chat_api_service.dart';
import '../services/chat_websocket_service.dart';

// ==================== Service Providers ====================
// These are the missing providers causing your errors

/// Chat API Service Provider
final chatApiServiceProvider = Provider<ChatApiService>((ref) {
  // Assuming you have a general apiServiceProvider that holds the Dio instance
  final apiService = ref.watch(apiServiceProvider);
  return ChatApiService(apiService.dio);
});

/// Chat WebSocket Service Provider  
final chatWebsocketServiceProvider = Provider<ChatWebsocketService>((ref) {
  return ChatWebsocketService.instance;
});

// ==================== Chat State ====================

class ChatState {
  final List<CompanyChatMessage> messages;
  final bool isLoading;
  final bool isLoadingMore;
  final bool isSendingMessage;
  final String? error;
  final int unreadCount;
  final bool isConnected;
  final ChatPagination? pagination;
  final int currentPage;
  final bool hasMorePages;

  const ChatState({
    this.messages = const [],
    this.isLoading = false,
    this.isLoadingMore = false,
    this.isSendingMessage = false,
    this.error,
    this.unreadCount = 0,
    this.isConnected = false,
    this.pagination,
    this.currentPage = 1,
    this.hasMorePages = false,
  });

  ChatState copyWith({
    List<CompanyChatMessage>? messages,
    bool? isLoading,
    bool? isLoadingMore,
    bool? isSendingMessage,
    String? error,
    int? unreadCount,
    bool? isConnected,
    ChatPagination? pagination,
    int? currentPage,
    bool? hasMorePages,
  }) {
    return ChatState(
      messages: messages ?? this.messages,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      isSendingMessage: isSendingMessage ?? this.isSendingMessage,
      error: error,
      unreadCount: unreadCount ?? this.unreadCount,
      isConnected: isConnected ?? this.isConnected,
      pagination: pagination ?? this.pagination,
      currentPage: currentPage ?? this.currentPage,
      hasMorePages: hasMorePages ?? this.hasMorePages,
    );
  }
}

// ==================== Chat Notifier ====================

class ChatNotifier extends StateNotifier<ChatState> {
  final ChatApiService _apiService;
  final ChatWebsocketService _websocketService;
  final String _companyId;
  final String _userId;
  final String _token;
  StreamSubscription<CompanyChatMessage>? _messageSubscription;
  final Set<String> _processedMessageIds = {};
  bool _skipInitialization = false;

  ChatNotifier(
    this._apiService,
    this._websocketService,
    this._companyId,
    this._userId,
    this._token,
  ) : super(const ChatState()) {
    if (!_skipInitialization && _token.isNotEmpty) {
      _initialize();
    }
  }

  Future<void> _initialize() async {
    await _connectWebSocket();
    await loadMessages();
    await markAsRead();
  }

  Future<void> _connectWebSocket() async {
    try {
      await _websocketService.connect(_token, _companyId, _userId);
      state = state.copyWith(isConnected: _websocketService.isConnected);
      _messageSubscription?.cancel();
      _messageSubscription = _websocketService.messageStream.listen(_handleWebSocketMessage);
    } catch (e) {
      print('❌ WebSocket Error: $e');
    }
  }

  void _handleWebSocketMessage(CompanyChatMessage message) {
    if (message.senderType == SenderType.companyAdmin) return;
    
    final messageKey = message.id;
    if (_processedMessageIds.contains(messageKey)) return;

    final exists = state.messages.any((m) => m.id == message.id);
    if (exists) return;

    _processedMessageIds.add(messageKey);

    final updatedMessages = state.messages.where((m) => !m.id.startsWith('temp-')).toList();
    
    final completeMessage = message.companyId == null 
        ? message.copyWith(companyId: _companyId)
        : message;
    
    updatedMessages.add(completeMessage);
    updatedMessages.sort((a, b) => a.createdAt.compareTo(b.createdAt));

    state = state.copyWith(messages: updatedMessages);

    if (message.senderType == SenderType.superAdmin) {
      markAsRead();
    }

    Future.delayed(const Duration(seconds: 10), () => _processedMessageIds.remove(messageKey));
  }

  Future<void> loadMessages({int page = 1, int limit = 50}) async {
    if (page == 1) state = state.copyWith(isLoading: true, error: null);

    try {
      final response = await _apiService.getChatMessages(page: page, limit: limit);
      final sortedMessages = List<CompanyChatMessage>.from(response.data.messages)
        ..sort((a, b) => a.createdAt.compareTo(b.createdAt));

      state = state.copyWith(
        messages: sortedMessages,
        pagination: response.data.pagination,
        currentPage: page,
        hasMorePages: response.data.pagination.page < response.data.pagination.totalPages,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isLoading: false, error: 'Error loading messages');
    }
  }

  Future<void> loadMoreMessages() async {
    if (state.isLoadingMore || !state.hasMorePages) return;
    state = state.copyWith(isLoadingMore: true);

    try {
      final nextPage = state.currentPage + 1;
      final response = await _apiService.getChatMessages(page: nextPage, limit: 50);
      
      final olderMessages = List<CompanyChatMessage>.from(response.data.messages);
      final allMessages = [...olderMessages, ...state.messages];
      allMessages.sort((a, b) => a.createdAt.compareTo(b.createdAt));

      state = state.copyWith(
        messages: allMessages,
        pagination: response.data.pagination,
        currentPage: nextPage,
        hasMorePages: response.data.pagination.page < response.data.pagination.totalPages,
        isLoadingMore: false,
      );
    } catch (e) {
      state = state.copyWith(isLoadingMore: false);
    }
  }

  Future<void> sendMessage(String text) async {
    final trimmed = text.trim();
    if (trimmed.isEmpty) return;

    final tempId = 'temp-${DateTime.now().millisecondsSinceEpoch}';
    final tempMessage = CompanyChatMessage(
      id: tempId,
      companyId: _companyId,
      senderId: _userId,
      senderType: SenderType.companyAdmin,
      senderName: 'أنت',
      message: trimmed,
      isRead: false,
      readBy: [],
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );

    state = state.copyWith(
      messages: [...state.messages, tempMessage],
      isSendingMessage: true,
    );

    try {
      final response = await _apiService.sendMessage(trimmed);
      _processedMessageIds.add(response.data.id);
      
      final updatedList = state.messages.where((m) => m.id != tempId).toList();
      updatedList.add(response.data);
      updatedList.sort((a, b) => a.createdAt.compareTo(b.createdAt));

      state = state.copyWith(messages: updatedList, isSendingMessage: false);
    } catch (e) {
      state = state.copyWith(
        messages: state.messages.where((m) => m.id != tempId).toList(),
        isSendingMessage: false,
      );
      rethrow;
    }
  }

  Future<void> markAsRead() async {
    try {
      await _apiService.markAllAsRead();
      state = state.copyWith(unreadCount: 0);
    } catch (_) {}
  }

  @override
  void dispose() {
    _messageSubscription?.cancel();
    _websocketService.disconnect();
    super.dispose();
  }
}

// ==================== Chat Provider ====================

final chatProvider = StateNotifierProvider<ChatNotifier, ChatState>((ref) {
  final authState = ref.watch(authProvider);

  if (!authState.isAuthenticated || 
      authState.user == null || 
      authState.company == null || 
      authState.token == null) {
    return ChatNotifier(
      ref.watch(chatApiServiceProvider),
      ref.watch(chatWebsocketServiceProvider),
      '', 
      '', 
      '', 
    ).._skipInitialization = true;
  }

  return ChatNotifier(
    ref.watch(chatApiServiceProvider),
    ref.watch(chatWebsocketServiceProvider),
    authState.company!.id,
    authState.user!.id,
    authState.token!,
  );
});