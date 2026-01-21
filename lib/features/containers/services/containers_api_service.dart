import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/services/api_service.dart';
import '../models/container_models.dart';

class ContainersApiService {
  final ApiService _apiService;

  ContainersApiService(this._apiService);

  /// Get container summary (aggregated by type/size)
  Future<ContainerSummaryResponse> getContainerSummary() async {
    try {
      final response = await _apiService.get('/api/company/containers/summary');
      return ContainerSummaryResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch container summary';
    }
  }

  /// Get container details for specific type/size
  Future<ContainerDetailsResponse> getContainerDetails({
    required String type,
    required String size,
  }) async {
    try {
      print('🌐 API Call: GET /api/company/containers/details?type=$type&size=$size');
      final response = await _apiService.get(
        '/api/company/containers/details',
        queryParameters: {'type': type, 'size': size},
      );
      print('📦 Raw Response: ${response.data}');
      print('🔍 Response data type: ${response.data.runtimeType}');
      
      final result = ContainerDetailsResponse.fromJson(response.data);
      print('✅ Successfully parsed ContainerDetailsResponse');
      return result;
    } on DioException catch (e) {
      print('❌ DioException: ${e.message}');
      throw e.response?.data['message'] ?? 'Failed to fetch container details';
    } catch (e, stackTrace) {
      print('❌ Parsing error: $e');
      print('Stack trace: $stackTrace');
      rethrow;
    }
  }

  /// Get container types
  Future<ContainerTypesResponse> getContainerTypes() async {
    try {
      final response = await _apiService.get('/api/container-types');
      return ContainerTypesResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch container types';
    }
  }

  /// Add containers in bulk
  Future<AddContainersResponse> addContainers(
    AddContainersRequest request,
  ) async {
    try {
      final response = await _apiService.post(
        '/api/company/containers/add',
        data: request.toJson(),
      );
      return AddContainersResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to add containers';
    }
  }

  /// Update container status in bulk
  Future<BulkUpdateStatusResponse> bulkUpdateStatus(
    BulkUpdateStatusRequest request,
  ) async {
    try {
      final response = await _apiService.patch(
        '/api/company/containers/bulk-status',
        data: request.toJson(),
      );
      return BulkUpdateStatusResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to update container status';
    }
  }

  /// Delete containers in bulk
  Future<BulkDeleteContainersResponse> bulkDeleteContainers(
    BulkDeleteContainersRequest request,
  ) async {
    try {
      final response = await _apiService.delete(
        '/api/company/containers/bulk-delete',
        data: request.toJson(),
      );
      return BulkDeleteContainersResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to delete containers';
    }
  }
}

// Provider
final containersApiServiceProvider = Provider<ContainersApiService>((ref) {
  return ContainersApiService(ApiService());
});
