import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/driver_details.dart';
import '../services/drivers_api_service.dart';

part 'driver_details_provider.freezed.dart';

// State for individual driver details
@freezed
class DriverDetailsState with _$DriverDetailsState {
  const factory DriverDetailsState({
    DriverDetails? details,
    @Default(false) bool isLoading,
    String? error,
  }) = _DriverDetailsState;
}

// Notifier
class DriverDetailsNotifier extends StateNotifier<DriverDetailsState> {
  final DriversApiService _apiService;

  DriverDetailsNotifier(this._apiService) : super(const DriverDetailsState());

  Future<void> fetchDriverDetails(String driverId) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final details = await _apiService.getDriverDetails(driverId);
      state = state.copyWith(details: details, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  void clear() {
    state = const DriverDetailsState();
  }
}

// Provider
final driverDetailsProvider =
    StateNotifierProvider<DriverDetailsNotifier, DriverDetailsState>((ref) {
  final apiService = ref.watch(driversApiServiceProvider);
  return DriverDetailsNotifier(apiService);
});
