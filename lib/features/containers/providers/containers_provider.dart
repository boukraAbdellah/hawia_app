import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/container_models.dart';
import '../services/containers_api_service.dart';

part 'containers_provider.freezed.dart';

// ==================== Containers State ====================

@freezed
class ContainersState with _$ContainersState {
  const factory ContainersState({
    @Default([]) List<ContainerSummaryItem> summary,
    @Default(false) bool isLoading,
    String? error,
  }) = _ContainersState;
}

// ==================== Containers Notifier ====================

class ContainersNotifier extends StateNotifier<ContainersState> {
  final ContainersApiService _apiService;

  ContainersNotifier(this._apiService) : super(const ContainersState());

  /// Fetch container summary
  Future<void> fetchSummary() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final response = await _apiService.getContainerSummary();
      state = state.copyWith(summary: response.summary, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Refresh summary
  Future<void> refresh() async {
    await fetchSummary();
  }

  /// Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }
}

// ==================== Containers Provider ====================

final containersProvider =
    StateNotifierProvider<ContainersNotifier, ContainersState>((ref) {
  final apiService = ref.watch(containersApiServiceProvider);
  return ContainersNotifier(apiService);
});

// ==================== Container Details State ====================

@freezed
class ContainerDetailsState with _$ContainerDetailsState {
  const factory ContainerDetailsState({
    ContainerDetailsResponse? details,
    @Default(false) bool isLoading,
    String? error,
  }) = _ContainerDetailsState;
}

// ==================== Container Details Notifier ====================

class ContainerDetailsNotifier extends StateNotifier<ContainerDetailsState> {
  final ContainersApiService _apiService;

  ContainerDetailsNotifier(this._apiService)
      : super(const ContainerDetailsState());

  /// Fetch container details
  Future<void> fetchDetails({
    required String type,
    required String size,
  }) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      print('🔍 Fetching container details for type: $type, size: $size');
      final details =
          await _apiService.getContainerDetails(type: type, size: size);
      print('✅ Successfully fetched container details');
      print('📊 Details: ${details.toString()}');
      state = state.copyWith(details: details, isLoading: false);
    } catch (e, stackTrace) {
      print('❌ Error fetching container details: $e');
      print('Stack trace: $stackTrace');
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Clear state
  void clear() {
    state = const ContainerDetailsState();
  }
}

// ==================== Container Details Provider ====================

final containerDetailsProvider =
    StateNotifierProvider<ContainerDetailsNotifier, ContainerDetailsState>(
        (ref) {
  final apiService = ref.watch(containersApiServiceProvider);
  return ContainerDetailsNotifier(apiService);
});

// ==================== Container Types Provider ====================

final containerTypesProvider = FutureProvider<List<ContainerType>>((ref) async {
  final apiService = ref.watch(containersApiServiceProvider);
  final response = await apiService.getContainerTypes();
  return response.data;
});
