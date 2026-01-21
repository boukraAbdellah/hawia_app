import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/driver.dart';
import '../models/driver_requests.dart';
import '../models/driver_details.dart';
import '../../../core/services/api_service.dart';

class DriversApiService {
  final ApiService _apiService;
  static const String _baseUrl = '/api/company/drivers';

  DriversApiService(this._apiService);

  // Get all drivers
  Future<List<Driver>> getDrivers() async {
    try {
      final response = await _apiService.get(_baseUrl);
      final drivers = (response.data['drivers'] as List)
          .map((json) => Driver.fromJson(json))
          .toList();
      return drivers;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch drivers';
    }
  }

  // Get driver details
  Future<DriverDetails> getDriverDetails(String driverId) async {
    try {
      final response = await _apiService.get('$_baseUrl/$driverId/details');
      return DriverDetails.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch driver details';
    }
  }

  // Add driver
  Future<Driver> addDriver(AddDriverRequest request) async {
    try {
      final response = await _apiService.post(
        '$_baseUrl/add',
        data: request.toJson(),
      );
      return Driver.fromJson(response.data['driver']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to add driver';
    }
  }

  // Update driver
  Future<Driver> updateDriver(String driverId, UpdateDriverRequest request) async {
    try {
      // Remove null values from request
      final data = request.toJson()
        ..removeWhere((key, value) => value == null);

      final response = await _apiService.patch(
        '$_baseUrl/$driverId',
        data: data,
      );
      return Driver.fromJson(response.data['driver']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to update driver';
    }
  }

  // Delete driver
  Future<void> deleteDriver(String driverId) async {
    try {
      await _apiService.delete('$_baseUrl/$driverId');
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to delete driver';
    }
  }
}

// Provider
final driversApiServiceProvider = Provider<DriversApiService>((ref) {
  return DriversApiService(ApiService());
});
