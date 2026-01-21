import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/dashboard_stats.dart';
import '../services/dashboard_api_service.dart';

part 'dashboard_provider.freezed.dart';

// State
@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    DashboardStats? stats,
    @Default(false) bool isLoading,
    String? error,
  }) = _DashboardState;
}

// Notifier
class DashboardNotifier extends StateNotifier<DashboardState> {
  final DashboardApiService _apiService;

  DashboardNotifier(this._apiService) : super(const DashboardState());

  /// Fetch dashboard statistics
  Future<void> fetchDashboardStats() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final stats = await _apiService.getDashboardStats();
      state = state.copyWith(stats: stats, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Refresh dashboard (for pull-to-refresh)
  Future<void> refresh() async {
    await fetchDashboardStats();
  }

  /// Clear error
  void clearError() {
    state = state.copyWith(error: null);
  }
}

// Provider
final dashboardProvider =
    StateNotifierProvider<DashboardNotifier, DashboardState>((ref) {
  final apiService = ref.watch(dashboardApiServiceProvider);
  return DashboardNotifier(apiService);
});
