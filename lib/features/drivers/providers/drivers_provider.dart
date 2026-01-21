import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../models/driver.dart';
import '../models/driver_requests.dart';
import '../services/drivers_api_service.dart';

part 'drivers_provider.freezed.dart';

// State
@freezed
class DriversState with _$DriversState {
  const factory DriversState({
    @Default([]) List<Driver> drivers,
    @Default(false) bool isLoading,
    String? error,
  }) = _DriversState;
}

// Notifier
class DriversNotifier extends StateNotifier<DriversState> {
  final DriversApiService _apiService;

  DriversNotifier(this._apiService) : super(const DriversState());

  // Fetch drivers
  Future<void> fetchDrivers() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final drivers = await _apiService.getDrivers();
      state = state.copyWith(drivers: drivers, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  // Add driver
  Future<void> addDriver(AddDriverRequest request) async {
    try {
      final newDriver = await _apiService.addDriver(request);
      state = state.copyWith(
        drivers: [...state.drivers, newDriver],
      );
    } catch (e) {
      rethrow; // Let UI handle error
    }
  }

  // Update driver
  Future<void> updateDriver(String driverId, UpdateDriverRequest request) async {
    try {
      final updatedDriver = await _apiService.updateDriver(driverId, request);
      final updatedDrivers = state.drivers.map((driver) {
        return driver.id == driverId ? updatedDriver : driver;
      }).toList();
      state = state.copyWith(drivers: updatedDrivers);
    } catch (e) {
      rethrow;
    }
  }

  // Delete driver
  Future<void> deleteDriver(String driverId) async {
    try {
      await _apiService.deleteDriver(driverId);
      final updatedDrivers = state.drivers
          .where((driver) => driver.id != driverId)
          .toList();
      state = state.copyWith(drivers: updatedDrivers);
    } catch (e) {
      rethrow;
    }
  }
}

// Provider
final driversProvider =
    StateNotifierProvider<DriversNotifier, DriversState>((ref) {
  final apiService = ref.watch(driversApiServiceProvider);
  return DriversNotifier(apiService);
});
