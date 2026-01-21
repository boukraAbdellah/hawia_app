import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/api_service.dart';
import '../models/dashboard_stats.dart';

class DashboardApiService {
  final ApiService _apiService;

  DashboardApiService(this._apiService);

  /// Fetch all dashboard statistics
  Future<DashboardStats> getDashboardStats() async {
    try {
      final response = await _apiService.get('/api/company/dashboard/stats');
      
      if (response.data == null) {
        throw 'No data received from API';
      }
      
      final data = response.data['data'];
      
      if (data == null) {
        throw 'No data field in response';
      }
      
      return DashboardStats.fromJson(data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch dashboard stats';
    }
  }
}

// Provider
final dashboardApiServiceProvider = Provider<DashboardApiService>((ref) {
  return DashboardApiService(ApiService());
});
