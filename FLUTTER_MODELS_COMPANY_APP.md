# Flutter Models & API Documentation - Company Mobile App
## For Flutter + Riverpod Implementation

---

## 🎯 Overview

This document provides all Flutter/Dart models and API specifications for the Hawiya company mobile app. All models use `freezed` for immutability and JSON serialization.

**Tech Stack:**
- Flutter
- Riverpod for state management
- freezed for data classes
- json_serializable for JSON parsing
- dio for HTTP requests

---

## 📦 Required Packages

```yaml
dependencies:
  flutter_riverpod: ^2.5.1
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  dio: ^5.4.0

dev_dependencies:
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

---

## 🔐 Authentication Header

All API requests require JWT token in Authorization header:

```dart
final options = Options(
  headers: {
    'Authorization': 'Bearer $token',
  },
);
```

---

## 📊 API 1: Dashboard Statistics

### Endpoint
```
GET /api/company/dashboard/stats
```

### Request
No request body or query parameters required.

### Response Structure
```json
{
  "success": true,
  "message": "Dashboard statistics retrieved successfully",
  "data": {
    "containerStats": {
      "total": 150,
      "rented": 85,
      "available": 65
    },
    "orderStats": {
      "total": 320,
      "pending": 45,
      "completed": 275
    },
    "driverStats": {
      "total": 25,
      "completionRate": 87
    },
    "monthlyData": [
      {
        "month": "يناير",
        "requests": 28,
        "revenue": 45
      },
      {
        "month": "فبراير",
        "requests": 32,
        "revenue": 52
      }
      // ... 12 months total
    ],
    "currentMonth": {
      "orders": 32,
      "revenue": 52000,
      "month": "يناير"
    }
  }
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';
part 'dashboard_stats.g.dart';

// ==================== Main Response Model ====================

@freezed
class DashboardStatsResponse with _$DashboardStatsResponse {
  const factory DashboardStatsResponse({
    required bool success,
    required String message,
    required DashboardData data,
  }) = _DashboardStatsResponse;

  factory DashboardStatsResponse.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsResponseFromJson(json);
}

// ==================== Dashboard Data Model ====================

@freezed
class DashboardData with _$DashboardData {
  const factory DashboardData({
    required ContainerStats containerStats,
    required OrderStats orderStats,
    required DriverStats driverStats,
    required List<MonthlyData> monthlyData,
    required CurrentMonthData currentMonth,
  }) = _DashboardData;

  factory DashboardData.fromJson(Map<String, dynamic> json) =>
      _$DashboardDataFromJson(json);
}

// ==================== Container Stats ====================

@freezed
class ContainerStats with _$ContainerStats {
  const factory ContainerStats({
    required int total,
    required int rented,
    required int available,
  }) = _ContainerStats;

  factory ContainerStats.fromJson(Map<String, dynamic> json) =>
      _$ContainerStatsFromJson(json);
}

// ==================== Order Stats ====================

@freezed
class OrderStats with _$OrderStats {
  const factory OrderStats({
    required int total,
    required int pending,
    required int completed,
  }) = _OrderStats;

  factory OrderStats.fromJson(Map<String, dynamic> json) =>
      _$OrderStatsFromJson(json);
}

// ==================== Driver Stats ====================

@freezed
class DriverStats with _$DriverStats {
  const factory DriverStats({
    required int total,
    required int completionRate,
  }) = _DriverStats;

  factory DriverStats.fromJson(Map<String, dynamic> json) =>
      _$DriverStatsFromJson(json);
}

// ==================== Monthly Data (for charts) ====================

@freezed
class MonthlyData with _$MonthlyData {
  const factory MonthlyData({
    required String month,
    required int requests,
    required int revenue, // In thousands (SAR)
  }) = _MonthlyData;

  factory MonthlyData.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataFromJson(json);
}

// ==================== Current Month Data ====================

@freezed
class CurrentMonthData with _$CurrentMonthData {
  const factory CurrentMonthData({
    required int orders,
    required int revenue, // Actual revenue (SAR)
    required String month,
  }) = _CurrentMonthData;

  factory CurrentMonthData.fromJson(Map<String, dynamic> json) =>
      _$CurrentMonthDataFromJson(json);
}
```

---

## 📦 API 2: Container Summary

### Endpoint
```
GET /api/company/containers/summary
```

### Request
No request body or query parameters required.

### Response Structure
```json
{
  "success": true,
  "message": "Container summary fetched successfully.",
  "summary": [
    {
      "type": "دباب",
      "size": "10 متر",
      "total": 45,
      "available": 20,
      "rented": 23,
      "maintenance": 2
    },
    {
      "type": "دباب",
      "size": "20 متر",
      "total": 35,
      "available": 15,
      "rented": 18,
      "maintenance": 2
    },
    {
      "type": "صهريج",
      "size": "5000 لتر",
      "total": 28,
      "available": 12,
      "rented": 15,
      "maintenance": 1
    }
  ]
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_summary.freezed.dart';
part 'container_summary.g.dart';

// ==================== Main Response Model ====================

@freezed
class ContainerSummaryResponse with _$ContainerSummaryResponse {
  const factory ContainerSummaryResponse({
    required bool success,
    required String message,
    required List<ContainerSummaryItem> summary,
  }) = _ContainerSummaryResponse;

  factory ContainerSummaryResponse.fromJson(Map<String, dynamic> json) =>
      _$ContainerSummaryResponseFromJson(json);
}

// ==================== Container Summary Item ====================

@freezed
class ContainerSummaryItem with _$ContainerSummaryItem {
  const factory ContainerSummaryItem({
    required String type,
    required String size,
    required int total,
    required int available,
    required int rented,
    required int maintenance,
  }) = _ContainerSummaryItem;

  factory ContainerSummaryItem.fromJson(Map<String, dynamic> json) =>
      _$ContainerSummaryItemFromJson(json);
}

// ==================== Helper Extension ====================

extension ContainerSummaryItemX on ContainerSummaryItem {
  // Calculate percentage of rented containers
  double get rentedPercentage {
    if (total == 0) return 0.0;
    return (rented / total) * 100;
  }

  // Calculate percentage of available containers
  double get availablePercentage {
    if (total == 0) return 0.0;
    return (available / total) * 100;
  }

  // Check if any containers are in maintenance
  bool get hasMaintenanceIssues => maintenance > 0;

  // Get status color (for UI)
  String get statusColor {
    if (available == 0) return 'red'; // All rented/maintenance
    if (availablePercentage < 20) return 'orange'; // Low availability
    return 'green'; // Good availability
  }
}
```

---

## 🔍 API 3: Container Details (Individual Containers)

### Endpoint
```
GET /api/company/containers/details?type={type}&size={size}
```

### Request Parameters
- `type` (string, required): Container type (e.g., "دباب", "صهريج")
- `size` (string, required): Container size (e.g., "10 متر", "5000 لتر")

### Response Structure
```json
{
  "success": true,
  "type": "دباب",
  "size": "10 متر",
  "total": 45,
  "containers": {
    "available": [
      {
        "id": "uuid-1",
        "type": "دباب",
        "size": "10 متر",
        "containerNumber": "CNT-001",
        "status": "available",
        "createdAt": "2026-01-01T10:00:00.000Z",
        "updatedAt": "2026-01-01T10:00:00.000Z"
      }
      // ... more available containers
    ],
    "rented": [
      {
        "id": "uuid-2",
        "type": "دباب",
        "size": "10 متر",
        "containerNumber": "CNT-002",
        "status": "rented",
        "createdAt": "2026-01-01T10:00:00.000Z",
        "updatedAt": "2026-01-05T14:30:00.000Z"
      }
      // ... containers with status: reserved, in_transit, rented, awaiting_pickup
    ],
    "maintenance": [
      {
        "id": "uuid-3",
        "type": "دباب",
        "size": "10 متر",
        "containerNumber": "CNT-003",
        "status": "maintenance",
        "createdAt": "2026-01-01T10:00:00.000Z",
        "updatedAt": "2026-01-10T08:00:00.000Z"
      }
    ]
  },
  "allContainers": [
    // Array of all containers (for backward compatibility)
  ]
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_details.freezed.dart';
part 'container_details.g.dart';

// ==================== Main Response Model ====================

@freezed
class ContainerDetailsResponse with _$ContainerDetailsResponse {
  const factory ContainerDetailsResponse({
    required bool success,
    required String type,
    required String size,
    required int total,
    required GroupedContainers containers,
    required List<Container> allContainers,
  }) = _ContainerDetailsResponse;

  factory ContainerDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ContainerDetailsResponseFromJson(json);
}

// ==================== Grouped Containers ====================

@freezed
class GroupedContainers with _$GroupedContainers {
  const factory GroupedContainers({
    required List<Container> available,
    required List<Container> rented,
    required List<Container> maintenance,
  }) = _GroupedContainers;

  factory GroupedContainers.fromJson(Map<String, dynamic> json) =>
      _$GroupedContainersFromJson(json);
}

// ==================== Container Model ====================

@freezed
class Container with _$Container {
  const factory Container({
    required String id,
    required String type,
    required String size,
    String? containerNumber,
    required String status, // available, reserved, in_transit, rented, awaiting_pickup, maintenance
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Container;

  factory Container.fromJson(Map<String, dynamic> json) =>
      _$ContainerFromJson(json);
}

// ==================== Container Status Enum ====================

enum ContainerStatus {
  available,
  reserved,
  @JsonValue('in_transit')
  inTransit,
  rented,
  @JsonValue('awaiting_pickup')
  awaitingPickup,
  maintenance;

  String get displayName {
    switch (this) {
      case ContainerStatus.available:
        return 'متاح';
      case ContainerStatus.reserved:
        return 'محجوز';
      case ContainerStatus.inTransit:
        return 'في الطريق';
      case ContainerStatus.rented:
        return 'مؤجر';
      case ContainerStatus.awaitingPickup:
        return 'في انتظار الاستلام';
      case ContainerStatus.maintenance:
        return 'صيانة';
    }
  }

  String get colorHex {
    switch (this) {
      case ContainerStatus.available:
        return '#4CAF50'; // Green
      case ContainerStatus.reserved:
        return '#2196F3'; // Blue
      case ContainerStatus.inTransit:
        return '#FF9800'; // Orange
      case ContainerStatus.rented:
        return '#9C27B0'; // Purple
      case ContainerStatus.awaitingPickup:
        return '#FFC107'; // Amber
      case ContainerStatus.maintenance:
        return '#F44336'; // Red
    }
  }
}
```

---

## 🏷️ API 4: Container Types (Master Data)

### Endpoint
```
GET /api/container-types
```

### Request
No request body or query parameters required.

### Response Structure
```json
{
  "success": true,
  "data": [
    {
      "id": "type-uuid-1",
      "name": "دباب",
      "description": "دباب نقل المياه والمخلفات",
      "sizes": [
        {
          "id": "size-uuid-1",
          "size": "10 متر",
          "imageUrl": "https://example.com/images/10m.jpg",
          "priceRange": "500-800 SAR"
        },
        {
          "id": "size-uuid-2",
          "size": "20 متر",
          "imageUrl": "https://example.com/images/20m.jpg",
          "priceRange": "900-1200 SAR"
        }
      ]
    },
    {
      "id": "type-uuid-2",
      "name": "صهريج",
      "description": "صهريج نقل المياه",
      "sizes": [
        {
          "id": "size-uuid-3",
          "size": "5000 لتر",
          "imageUrl": "https://example.com/images/5000l.jpg",
          "priceRange": "400-600 SAR"
        },
        {
          "id": "size-uuid-4",
          "size": "10000 لتر",
          "imageUrl": "https://example.com/images/10000l.jpg",
          "priceRange": "700-1000 SAR"
        }
      ]
    }
  ]
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_types.freezed.dart';
part 'container_types.g.dart';

// ==================== Main Response Model ====================

@freezed
class ContainerTypesResponse with _$ContainerTypesResponse {
  const factory ContainerTypesResponse({
    required bool success,
    required List<ContainerType> data,
  }) = _ContainerTypesResponse;

  factory ContainerTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$ContainerTypesResponseFromJson(json);
}

// ==================== Container Type Model ====================

@freezed
class ContainerType with _$ContainerType {
  const factory ContainerType({
    required String id,
    required String name,
    String? description,
    required List<ContainerSize> sizes,
  }) = _ContainerType;

  factory ContainerType.fromJson(Map<String, dynamic> json) =>
      _$ContainerTypeFromJson(json);
}

// ==================== Container Size Model ====================

@freezed
class ContainerSize with _$ContainerSize {
  const factory ContainerSize({
    required String id,
    required String size,
    String? imageUrl,
    String? priceRange,
  }) = _ContainerSize;

  factory ContainerSize.fromJson(Map<String, dynamic> json) =>
      _$ContainerSizeFromJson(json);
}
```

---

## ➕ API 5: Add Containers (Bulk)

### Endpoint
```
POST /api/company/containers/add
```

### Request Body
```json
{
  "type": "دباب",
  "size": "10 متر",
  "quantity": 5,
  "status": "available"
}
```

**Fields:**
- `type` (string, required): Container type
- `size` (string, required): Container size
- `quantity` (int, optional): Number of containers to add (default: 1, max: 100)
- `status` (string, optional): Initial status (default: "available")

### Response Structure
```json
{
  "success": true,
  "message": "Successfully added 5 container(s).",
  "count": 5,
  "containers": [
    {
      "id": "uuid-1",
      "type": "دباب",
      "size": "10 متر",
      "containerNumber": null,
      "status": "available",
      "createdAt": "2026-01-16T10:00:00.000Z",
      "updatedAt": "2026-01-16T10:00:00.000Z"
    }
    // ... 4 more containers
  ]
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_containers.freezed.dart';
part 'add_containers.g.dart';

// ==================== Request Model ====================

@freezed
class AddContainersRequest with _$AddContainersRequest {
  const factory AddContainersRequest({
    required String type,
    required String size,
    @Default(1) int quantity,
    @Default('available') String status,
  }) = _AddContainersRequest;

  factory AddContainersRequest.fromJson(Map<String, dynamic> json) =>
      _$AddContainersRequestFromJson(json);
}

// ==================== Response Model ====================

@freezed
class AddContainersResponse with _$AddContainersResponse {
  const factory AddContainersResponse({
    required bool success,
    required String message,
    required int count,
    required List<Container> containers,
  }) = _AddContainersResponse;

  factory AddContainersResponse.fromJson(Map<String, dynamic> json) =>
      _$AddContainersResponseFromJson(json);
}
```

---

## 🔄 API 6: Bulk Update Container Status

### Endpoint
```
PATCH /api/company/containers/bulk-status
```

### Request Body
```json
{
  "containerIds": [
    "uuid-1",
    "uuid-2",
    "uuid-3"
  ],
  "newStatus": "maintenance"
}
```

**Fields:**
- `containerIds` (array of strings, required): IDs of containers to update
- `newStatus` (string, required): New status value
  - Valid values: `available`, `reserved`, `in_transit`, `rented`, `maintenance`, `awaiting_pickup`

### Response Structure
```json
{
  "success": true,
  "message": "Successfully updated status of 3 container(s) to 'maintenance'.",
  "updatedCount": 3
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bulk_update_status.freezed.dart';
part 'bulk_update_status.g.dart';

// ==================== Request Model ====================

@freezed
class BulkUpdateStatusRequest with _$BulkUpdateStatusRequest {
  const factory BulkUpdateStatusRequest({
    required List<String> containerIds,
    required String newStatus,
  }) = _BulkUpdateStatusRequest;

  factory BulkUpdateStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkUpdateStatusRequestFromJson(json);
}

// ==================== Response Model ====================

@freezed
class BulkUpdateStatusResponse with _$BulkUpdateStatusResponse {
  const factory BulkUpdateStatusResponse({
    required bool success,
    required String message,
    required int updatedCount,
  }) = _BulkUpdateStatusResponse;

  factory BulkUpdateStatusResponse.fromJson(Map<String, dynamic> json) =>
      _$BulkUpdateStatusResponseFromJson(json);
}
```

---

## 🗑️ API 7: Bulk Delete Containers

### Endpoint
```
DELETE /api/company/containers/bulk-delete
```

### Request Body (Option 1: Delete by Type/Size)
```json
{
  "type": "دباب",
  "size": "10 متر",
  "quantity": 5
}
```

### Request Body (Option 2: Delete Specific IDs)
```json
{
  "specificIds": [
    "uuid-1",
    "uuid-2",
    "uuid-3"
  ]
}
```

**Fields:**
- **Option 1:** `type`, `size`, `quantity` - Delete N available containers of type/size
- **Option 2:** `specificIds` - Delete specific containers by ID

**Safety:** Only containers with status `available` can be deleted. Rented/reserved containers will cause error.

### Response Structure (Success)
```json
{
  "success": true,
  "message": "Successfully deleted 5 container(s).",
  "deletedCount": 5
}
```

### Response Structure (Error: Rented Containers)
```json
{
  "message": "Cannot delete: 2 container(s) are currently rented or reserved.",
  "rentedContainers": [
    {
      "id": "uuid-1",
      "containerNumber": "CNT-001",
      "status": "rented"
    },
    {
      "id": "uuid-2",
      "containerNumber": "CNT-002",
      "status": "reserved"
    }
  ]
}
```

### Flutter Models

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bulk_delete_containers.freezed.dart';
part 'bulk_delete_containers.g.dart';

// ==================== Request Model ====================

@freezed
class BulkDeleteContainersRequest with _$BulkDeleteContainersRequest {
  const factory BulkDeleteContainersRequest.byTypeSize({
    required String type,
    required String size,
    required int quantity,
  }) = _BulkDeleteByTypeSize;

  const factory BulkDeleteContainersRequest.byIds({
    required List<String> specificIds,
  }) = _BulkDeleteByIds;

  factory BulkDeleteContainersRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDeleteContainersRequestFromJson(json);
}

// ==================== Response Model (Success) ====================

@freezed
class BulkDeleteContainersResponse with _$BulkDeleteContainersResponse {
  const factory BulkDeleteContainersResponse({
    required bool success,
    required String message,
    required int deletedCount,
  }) = _BulkDeleteContainersResponse;

  factory BulkDeleteContainersResponse.fromJson(Map<String, dynamic> json) =>
      _$BulkDeleteContainersResponseFromJson(json);
}

// ==================== Error Response (Rented Containers) ====================

@freezed
class BulkDeleteErrorResponse with _$BulkDeleteErrorResponse {
  const factory BulkDeleteErrorResponse({
    required String message,
    required List<RentedContainerInfo> rentedContainers,
  }) = _BulkDeleteErrorResponse;

  factory BulkDeleteErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$BulkDeleteErrorResponseFromJson(json);
}

@freezed
class RentedContainerInfo with _$RentedContainerInfo {
  const factory RentedContainerInfo({
    required String id,
    String? containerNumber,
    required String status,
  }) = _RentedContainerInfo;

  factory RentedContainerInfo.fromJson(Map<String, dynamic> json) =>
      _$RentedContainerInfoFromJson(json);
}
```

---

## 🚀 Riverpod Providers Example

### API Service Provider

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ==================== Dio Client Provider ====================

final dioProvider = Provider<Dio>((ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'http://localhost:3000/api',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
    ),
  );

  // Add auth interceptor
  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) {
        final token = ref.read(authTokenProvider);
        if (token != null) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        return handler.next(options);
      },
    ),
  );

  return dio;
});

// ==================== Auth Token Provider ====================

final authTokenProvider = StateProvider<String?>((ref) => null);

// ==================== Container Service Provider ====================

final containerServiceProvider = Provider<ContainerService>((ref) {
  return ContainerService(ref.read(dioProvider));
});

// ==================== Container Service Class ====================

class ContainerService {
  final Dio _dio;

  ContainerService(this._dio);

  // Get dashboard stats
  Future<DashboardStatsResponse> getDashboardStats() async {
    final response = await _dio.get('/company/dashboard/stats');
    return DashboardStatsResponse.fromJson(response.data);
  }

  // Get container summary
  Future<ContainerSummaryResponse> getContainerSummary() async {
    final response = await _dio.get('/company/containers/summary');
    return ContainerSummaryResponse.fromJson(response.data);
  }

  // Get container details
  Future<ContainerDetailsResponse> getContainerDetails({
    required String type,
    required String size,
  }) async {
    final response = await _dio.get(
      '/company/containers/details',
      queryParameters: {'type': type, 'size': size},
    );
    return ContainerDetailsResponse.fromJson(response.data);
  }

  // Get container types
  Future<ContainerTypesResponse> getContainerTypes() async {
    final response = await _dio.get('/container-types');
    return ContainerTypesResponse.fromJson(response.data);
  }

  // Add containers
  Future<AddContainersResponse> addContainers(
    AddContainersRequest request,
  ) async {
    final response = await _dio.post(
      '/company/containers/add',
      data: request.toJson(),
    );
    return AddContainersResponse.fromJson(response.data);
  }

  // Bulk update status
  Future<BulkUpdateStatusResponse> bulkUpdateStatus(
    BulkUpdateStatusRequest request,
  ) async {
    final response = await _dio.patch(
      '/company/containers/bulk-status',
      data: request.toJson(),
    );
    return BulkUpdateStatusResponse.fromJson(response.data);
  }

  // Bulk delete containers
  Future<BulkDeleteContainersResponse> bulkDeleteContainers(
    BulkDeleteContainersRequest request,
  ) async {
    final response = await _dio.delete(
      '/company/containers/bulk-delete',
      data: request.toJson(),
    );
    return BulkDeleteContainersResponse.fromJson(response.data);
  }
}
```

### State Providers (AsyncNotifier Pattern)

```dart
// ==================== Dashboard Stats Provider ====================

@riverpod
class DashboardStats extends _$DashboardStats {
  @override
  Future<DashboardData> build() async {
    final service = ref.read(containerServiceProvider);
    final response = await service.getDashboardStats();
    return response.data;
  }

  // Refresh method
  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final service = ref.read(containerServiceProvider);
      final response = await service.getDashboardStats();
      return response.data;
    });
  }
}

// ==================== Container Summary Provider ====================

@riverpod
class ContainerSummary extends _$ContainerSummary {
  @override
  Future<List<ContainerSummaryItem>> build() async {
    final service = ref.read(containerServiceProvider);
    final response = await service.getContainerSummary();
    return response.summary;
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final service = ref.read(containerServiceProvider);
      final response = await service.getContainerSummary();
      return response.summary;
    });
  }
}

// ==================== Container Details Provider (Family) ====================

@riverpod
class ContainerDetails extends _$ContainerDetails {
  @override
  Future<ContainerDetailsResponse> build({
    required String type,
    required String size,
  }) async {
    final service = ref.read(containerServiceProvider);
    return await service.getContainerDetails(type: type, size: size);
  }
}

// ==================== Container Types Provider ====================

@riverpod
class ContainerTypes extends _$ContainerTypes {
  @override
  Future<List<ContainerType>> build() async {
    final service = ref.read(containerServiceProvider);
    final response = await service.getContainerTypes();
    return response.data;
  }
}
```

---

## 📱 UI Usage Examples

### Dashboard Screen

```dart
class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardAsync = ref.watch(dashboardStatsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('لوحة التحكم')),
      body: dashboardAsync.when(
        data: (data) => DashboardContent(data: data),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => ErrorWidget(error: error.toString()),
      ),
    );
  }
}

class DashboardContent extends StatelessWidget {
  final DashboardData data;

  const DashboardContent({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Container Stats Card
        StatCard(
          title: 'الحاويات',
          total: data.containerStats.total,
          available: data.containerStats.available,
          rented: data.containerStats.rented,
        ),
        const SizedBox(height: 16),

        // Order Stats Card
        StatCard(
          title: 'الطلبات',
          total: data.orderStats.total,
          pending: data.orderStats.pending,
          completed: data.orderStats.completed,
        ),
        const SizedBox(height: 16),

        // Driver Stats Card
        DriverStatCard(stats: data.driverStats),
        const SizedBox(height: 24),

        // Monthly Chart
        MonthlyRevenueChart(monthlyData: data.monthlyData),
      ],
    );
  }
}
```

### Container Summary Screen

```dart
class ContainerSummaryScreen extends ConsumerWidget {
  const ContainerSummaryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final summaryAsync = ref.watch(containerSummaryProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('إدارة الحاويات'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => _showAddContainersDialog(context, ref),
          ),
        ],
      ),
      body: summaryAsync.when(
        data: (summary) => ListView.builder(
          itemCount: summary.length,
          itemBuilder: (context, index) {
            final item = summary[index];
            return ContainerSummaryCard(
              item: item,
              onTap: () => _navigateToDetails(context, item),
            );
          },
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => ErrorWidget(error: error.toString()),
      ),
    );
  }

  void _navigateToDetails(BuildContext context, ContainerSummaryItem item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ContainerDetailsScreen(
          type: item.type,
          size: item.size,
        ),
      ),
    );
  }
}
```

### Add Containers Dialog

```dart
Future<void> _showAddContainersDialog(BuildContext context, WidgetRef ref) async {
  final typesAsync = await ref.read(containerTypesProvider.future);
  
  // Show dialog with type/size selection and quantity input
  // On submit:
  final request = AddContainersRequest(
    type: selectedType,
    size: selectedSize,
    quantity: quantity,
    status: 'available',
  );

  try {
    final service = ref.read(containerServiceProvider);
    await service.addContainers(request);
    
    // Refresh summary
    ref.invalidate(containerSummaryProvider);
    
    // Show success message
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تم إضافة الحاويات بنجاح')),
    );
  } catch (e) {
    // Show error
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('خطأ: $e')),
    );
  }
}
```

---

## 🔧 Error Handling

### Common Error Response Structure

```json
{
  "message": "Error message here",
  "error": "Detailed error (only in development)"
}
```

### Error Handling in Riverpod

```dart
dashboardAsync.when(
  data: (data) => DashboardContent(data: data),
  loading: () => const LoadingWidget(),
  error: (error, stack) {
    if (error is DioException) {
      if (error.response?.statusCode == 401) {
        // Unauthorized - redirect to login
        return const UnauthorizedWidget();
      } else if (error.response?.statusCode == 404) {
        return const NotFoundWidget();
      }
      // Other HTTP errors
      return ErrorWidget(message: error.response?.data['message']);
    }
    // Network or other errors
    return ErrorWidget(message: error.toString());
  },
);
```

---

## 📝 Code Generation Commands

After creating your models, run:

```bash
# Generate freezed and JSON serialization files
flutter pub run build_runner build --delete-conflicting-outputs

# Watch mode (auto-regenerate on file changes)
flutter pub run build_runner watch --delete-conflicting-outputs
```

---

## 🎨 UI Component Examples

### Container Status Badge

```dart
class ContainerStatusBadge extends StatelessWidget {
  final String status;

  const ContainerStatusBadge({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final statusEnum = ContainerStatus.values.firstWhere(
      (e) => e.name == status,
      orElse: () => ContainerStatus.available,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Color(int.parse(statusEnum.colorHex.substring(1), radix: 16) + 0xFF000000),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        statusEnum.displayName,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
    );
  }
}
```

---

This documentation provides all the models and API specifications you need to build the company mobile app with Flutter and Riverpod!
