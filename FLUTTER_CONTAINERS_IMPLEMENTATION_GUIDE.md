# Flutter Containers Management Implementation Guide

> **Purpose**: Complete documentation for implementing the Containers Management feature in the Flutter mobile app
> 
> **Scope**: List containers summary, add containers in bulk, edit container status, delete containers
> 
> **Target**: AI agent implementation - includes all API contracts, data models, and Flutter code patterns

---

## Table of Contents

1. [Overview](#overview)
2. [Container Data Models](#container-data-models)
3. [API Endpoints](#api-endpoints)
4. [Screens Structure](#screens-structure)
5. [Screen 1: Containers Summary List](#screen-1-containers-summary-list)
6. [Screen 2: Add Containers (Bulk)](#screen-2-add-containers-bulk)
7. [Screen 3: Edit Container Status](#screen-3-edit-container-status)
8. [Screen 4: Delete Containers](#screen-4-delete-containers)
9. [Flutter Models](#flutter-models)
10. [API Service](#api-service)
11. [State Management (Riverpod)](#state-management-riverpod)
12. [UI Implementation Patterns](#ui-implementation-patterns)
13. [Implementation Checklist](#implementation-checklist)
14. [Required Packages](#required-packages)

---

## Overview

The Containers Management feature allows companies to manage their waste containers inventory:

- **View Summary**: Aggregated table showing containers grouped by type/size
- **Add Containers**: Bulk add multiple containers of the same type/size
- **Edit Status**: Update status of multiple containers at once (available, rented, maintenance)
- **Delete Containers**: Bulk delete available containers only

**Key Features**:
- ✅ Aggregated summary view (not individual containers)
- ✅ Bulk operations (add/edit/delete multiple at once)
- ✅ Dynamic container types from API
- ✅ Status-based filtering and management
- ✅ Only available containers can be deleted

**Container Statuses**:
- `available` → "متاح" (Available for rent)
- `rented` → "مؤجرة" (Currently rented)
- `maintenance` → "صيانة" (Under maintenance)

---

## Container Data Models

### Container Summary (Aggregated)

Each row represents containers grouped by type and size:

```typescript
{
  type: string,        // Container type (e.g., "نفايات عامة")
  size: string,        // Container size (e.g., "240L")
  total: number,       // Total containers of this type/size
  available: number,   // Available for rent
  rented: number,      // Currently rented
  maintenance: number  // Under maintenance
}
```

### Individual Container

```typescript
{
  id: number,              // Unique container ID
  containerNumber: string, // Container number (e.g., "CNT-001")
  type: string,           // Container type
  size: string,           // Container size
  status: string,         // available | rented | maintenance
  createdAt: string,      // ISO date
  updatedAt: string       // ISO date
}
```

### Container Type (from API)

```typescript
{
  id: number,
  name: string,          // Type name (e.g., "نفايات عامة")
  description: string,   // Type description
  sizes: [
    {
      id: number,
      size: string,        // Size value (e.g., "240L")
      imageUrl: string     // Container image URL
    }
  ]
}
```

---

## API Endpoints

### Base URL
```
/api/company/containers
```

---

### 1. Get Container Summary

**Endpoint**: `GET /api/company/containers/summary`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "summary": [
    {
      "type": "نفايات عامة",
      "size": "240L",
      "total": 150,
      "available": 95,
      "rented": 45,
      "maintenance": 10
    },
    {
      "type": "نفايات عامة",
      "size": "120L",
      "total": 80,
      "available": 50,
      "rented": 25,
      "maintenance": 5
    },
    {
      "type": "إعادة تدوير",
      "size": "240L",
      "total": 60,
      "available": 40,
      "rented": 15,
      "maintenance": 5
    }
  ]
}
```

**Error Response** (401/500):
```json
{
  "message": "Failed to fetch summary"
}
```

---

### 2. Get Container Details (by Type/Size)

**Endpoint**: `GET /api/company/containers/details?type={type}&size={size}`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Query Parameters**:
- `type`: Container type (e.g., "نفايات عامة")
- `size`: Container size (e.g., "240L")

**Response** (200 OK):
```json
{
  "type": "نفايات عامة",
  "size": "240L",
  "containers": {
    "available": [
      {
        "id": 1,
        "containerNumber": "CNT-001",
        "type": "نفايات عامة",
        "size": "240L",
        "status": "available",
        "createdAt": "2024-01-15T10:00:00Z",
        "updatedAt": "2024-01-15T10:00:00Z"
      },
      {
        "id": 2,
        "containerNumber": "CNT-002",
        "type": "نفايات عامة",
        "size": "240L",
        "status": "available",
        "createdAt": "2024-01-15T10:00:00Z",
        "updatedAt": "2024-01-15T10:00:00Z"
      }
    ],
    "rented": [
      {
        "id": 3,
        "containerNumber": "CNT-003",
        "type": "نفايات عامة",
        "size": "240L",
        "status": "rented",
        "createdAt": "2024-01-15T10:00:00Z",
        "updatedAt": "2024-01-15T10:00:00Z"
      }
    ],
    "maintenance": [
      {
        "id": 4,
        "containerNumber": "CNT-004",
        "type": "نفايات عامة",
        "size": "240L",
        "status": "maintenance",
        "createdAt": "2024-01-15T10:00:00Z",
        "updatedAt": "2024-01-15T10:00:00Z"
      }
    ]
  }
}
```

---

### 3. Get Container Types

**Endpoint**: `GET /api/container-types`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "data": [
    {
      "id": 1,
      "name": "نفايات عامة",
      "description": "حاويات للنفايات العامة والمنزلية",
      "sizes": [
        {
          "id": 1,
          "size": "120L",
          "imageUrl": "/uploads/containers/general-120.png"
        },
        {
          "id": 2,
          "size": "240L",
          "imageUrl": "/uploads/containers/general-240.png"
        },
        {
          "id": 3,
          "size": "660L",
          "imageUrl": "/uploads/containers/general-660.png"
        }
      ]
    },
    {
      "id": 2,
      "name": "إعادة تدوير",
      "description": "حاويات مخصصة لإعادة التدوير",
      "sizes": [
        {
          "id": 4,
          "size": "240L",
          "imageUrl": "/uploads/containers/recycle-240.png"
        }
      ]
    }
  ]
}
```

---

### 4. Add Containers (Bulk)

**Endpoint**: `POST /api/company/containers/add`

**Headers**:
```json
{
  "Authorization": "Bearer <token>",
  "Content-Type": "application/json"
}
```

**Request Body**:
```json
{
  "type": "نفايات عامة",
  "size": "240L",
  "quantity": 10,
  "status": "available"
}
```

**Field Requirements**:
- `type`: Required, must match existing container type
- `size`: Required, must be valid size for selected type
- `quantity`: Required, integer between 1-100
- `status`: Required, one of: available, rented, maintenance

**Response** (201 Created):
```json
{
  "message": "Successfully added 10 containers",
  "containersAdded": 10
}
```

**Error Response** (400):
```json
{
  "message": "Validation error: Quantity must be between 1 and 100"
}
```

---

### 5. Update Container Status (Bulk)

**Endpoint**: `PATCH /api/company/containers/bulk-status`

**Headers**:
```json
{
  "Authorization": "Bearer <token>",
  "Content-Type": "application/json"
}
```

**Request Body**:
```json
{
  "containerIds": [1, 2, 5, 8, 12],
  "newStatus": "available"
}
```

**Field Requirements**:
- `containerIds`: Array of container IDs (at least 1)
- `newStatus`: One of: available, rented, maintenance

**Response** (200 OK):
```json
{
  "message": "Successfully updated 5 containers",
  "updatedCount": 5
}
```

**Error Response** (400/404):
```json
{
  "message": "Failed to update status"
}
```

---

### 6. Delete Containers (Bulk)

**Endpoint**: `DELETE /api/company/containers/bulk-delete`

**Headers**:
```json
{
  "Authorization": "Bearer <token>",
  "Content-Type": "application/json"
}
```

**Request Body**:
```json
{
  "type": "نفايات عامة",
  "size": "240L",
  "quantity": 5
}
```

**Important Notes**:
- ⚠️ Only **available** containers can be deleted
- Backend will select and delete `quantity` available containers
- Rented and maintenance containers are protected

**Response** (200 OK):
```json
{
  "message": "Successfully deleted 5 containers",
  "deletedCount": 5
}
```

**Error Response** (400):
```json
{
  "message": "Not enough available containers to delete"
}
```

---

## Screens Structure

### Navigation Flow

```
ContainersSummaryScreen (Main)
  │
  ├─► AddContainersBottomSheet
  │     └─► Select type → Select size → Enter quantity → Add
  │
  ├─► EditContainerStatusBottomSheet (Tap Edit on row)
  │     └─► Fetch details → Filter by status → Select containers → Update status
  │
  └─► DeleteContainersDialog (Tap Delete on row)
        └─► Show available count → Enter quantity → Confirm delete
```

---

## Screen 1: Containers Summary List

### UI Layout

```
┌─────────────────────────────────────┐
│ ← Back  إدارة الحاويات    [+ Add]  │
├─────────────────────────────────────┤
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ Table                           │ │
│ ├─────┬──────┬─────┬──────┬──────┤ │
│ │ النوع│الحجم│الإجمالي│متاح│مؤجرة│ │
│ ├─────┼──────┼─────┼──────┼──────┤ │
│ │نفايات│240L │ 150 │ 95  │ 45  │ │
│ │عامة │     │     │     │ 10 صيانة││
│ │     │     │     │[Edit][Del]   │ │
│ ├─────┼──────┼─────┼──────┼──────┤ │
│ │نفايات│120L │ 80  │ 50  │ 25  │ │
│ │عامة │     │     │     │ 5 صيانة ││
│ │     │     │     │[Edit][Del]   │ │
│ └─────┴──────┴─────┴──────┴──────┘ │
│                                     │
└─────────────────────────────────────┘
```

### Behavior

1. **On Load**:
   - Call `GET /api/company/containers/summary`
   - Show loading spinner
   - Display table with aggregated data

2. **Empty State**:
   - If no containers: Show "لا توجد حاويات"
   - Display "ابدأ بإضافة حاويات جديدة"

3. **Table Structure**:
   - **Columns**: Type, Size, Total, Available (green), Rented (blue), Maintenance (orange), Actions
   - **Color Coding**: 
     - Available: Green text
     - Rented: Blue text
     - Maintenance: Orange text
   - **Actions**: Edit button (primary), Delete button (red)

4. **Add Button**:
   - Opens AddContainersBottomSheet

5. **Edit Button**:
   - Opens EditContainerStatusBottomSheet with type/size

6. **Delete Button**:
   - Opens DeleteContainersDialog with type/size

7. **Pull to Refresh**:
   - Refreshes summary data

---

## Screen 2: Add Containers (Bulk)

### UI Layout

```
┌─────────────────────────────────────┐
│ إضافة حاوية جديدة             [X]  │
├─────────────────────────────────────┤
│                                     │
│ [Error/Success message if any]      │
│                                     │
│ 📦 نوع الحاوية *                   │
│ [Dropdown: نفايات عامة ▼]           │
│ (Description text if available)     │
│                                     │
│ 📏 حجم الحاوية *                   │
│ [Dropdown: 240L ▼]                  │
│                                     │
│ [Container Image Preview]           │
│                                     │
│ 📦 عدد الحاويات *                  │
│ [___10___]                          │
│ (سيتم إضافة 10 حاوية من نفس النوع) │
│                                     │
│ ⚙️ حالة الحاوية                    │
│ [Dropdown: متاح للتأجير ▼]         │
│                                     │
│ ┌──────────────┐ ┌──────────────┐  │
│ │ إضافة الحاوية │ │    إلغاء     │  │
│ └──────────────┘ └──────────────┘  │
└─────────────────────────────────────┘
```

### Fields & Validation

| Field | Label (Arabic) | Required | Validation | Default |
|-------|----------------|----------|------------|---------|
| type | نوع الحاوية | ✅ | Must select from API types | "" |
| size | حجم الحاوية | ✅ | Must select from type's sizes | "" |
| quantity | عدد الحاويات | ✅ | Integer 1-100 | 1 |
| status | حالة الحاوية | ✅ | One of 3 statuses | "available" |

**Status Options**:
```dart
[
  {'value': 'available', 'label': 'متاح للتأجير'},
  {'value': 'rented', 'label': 'مؤجرة'},
  {'value': 'maintenance', 'label': 'صيانة'},
]
```

### Behavior

1. **On Open**:
   - Fetch container types: `GET /api/container-types`
   - Show loading if fetching types
   - Initialize form with defaults

2. **Type Selection**:
   - When type selected:
     - Populate sizes dropdown with type's sizes
     - Reset size selection
     - Show type description if available

3. **Size Selection**:
   - When size selected:
     - Show container image preview (if imageUrl exists)
     - Load image from backend URL

4. **Image Display**:
   - Construct URL: `${BACKEND_URL}/${imageUrl}`
   - Show fallback if image fails to load
   - Container: 192px height, rounded, bordered

5. **Quantity Input**:
   - Show helper text: "سيتم إضافة {quantity} حاوية من نفس النوع والحجم"
   - Validate: 1 ≤ quantity ≤ 100

6. **Submit**:
   - Validate all fields
   - Call `POST /api/company/containers/add`
   - Show loading spinner on button
   - On success:
     - Show success message
     - Reset form
     - Close after 1 second
     - Refresh summary list

7. **Error Handling**:
   - Show server errors at top
   - Show field validation errors below fields

---

## Screen 3: Edit Container Status

### UI Layout

```
┌─────────────────────────────────────┐
│ إدارة الحاويات                [X]  │
│ نفايات عامة - 240L • 150 حاوية     │
├─────────────────────────────────────┤
│ [الكل (150)] [متاح (95)]           │
│ [مؤجرة (45)] [صيانة (10)]          │
├─────────────────────────────────────┤
│                                     │
│ تم تحديد 5 من 95 حاوية             │
│          [تحديد الكل] [إلغاء التحديد]│
│                                     │
│ ┌──────────────┐ ┌──────────────┐  │
│ │☑ #CNT-001    │ │☐ #CNT-002    │  │
│ │  [متاح]      │ │  [متاح]      │  │
│ └──────────────┘ └──────────────┘  │
│                                     │
│ ┌──────────────┐ ┌──────────────┐  │
│ │☑ #CNT-005    │ │☐ #CNT-008    │  │
│ │  [متاح]      │ │  [متاح]      │  │
│ └──────────────┘ └──────────────┘  │
│                                     │
├─────────────────────────────────────┤
│ [Dropdown: اختر الحالة الجديدة ▼]  │
│ [تغيير الحالة] button              │
└─────────────────────────────────────┘
```

### Behavior

1. **On Open**:
   - Receive type and size from summary row
   - Call `GET /api/company/containers/details?type={}&size={}`
   - Show loading spinner

2. **Tabs**:
   - 4 tabs: All, Available, Rented, Maintenance
   - Show count in each tab
   - Default: All tab selected

3. **Container List**:
   - Display as grid (2 columns)
   - Each card shows container number and status badge
   - Tap card to toggle checkbox
   - Selected cards: Primary border and background tint

4. **Bulk Actions**:
   - "Select All": Selects all in current tab
   - "Deselect All": Clears all selections
   - Show count: "تم تحديد X من Y حاوية"

5. **Status Update**:
   - Dropdown: Choose new status
   - Button disabled if no selection or no new status
   - On submit:
     - Collect selected container IDs
     - Call `PATCH /api/company/containers/bulk-status`
     - Show loading on button
   - On success:
     - Show success message
     - Close after 1.5 seconds
     - Refresh summary

6. **Empty State**:
   - If no containers in tab: Show "لا توجد حاويات في هذه الفئة"

---

## Screen 4: Delete Containers

### UI Layout

```
┌─────────────────────────────────────┐
│ 🗑️ حذف حاويات                 [X] │
├─────────────────────────────────────┤
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ النوع: نفايات عامة              │ │
│ │ الحجم: 240L                     │ │
│ │ عدد الحاويات المتاحة للحذف: 95 │ │
│ └─────────────────────────────────┘ │
│                                     │
│ كم حاوية تريد حذفها؟                │
│ [____5____]                         │
│ الحد الأقصى: 95 حاوية               │
│                                     │
│ ⚠️ تنبيه مهم                        │
│ • سيتم حذف فقط الحاويات المتاحة     │
│   (غير المؤجرة)                     │
│ • لا يمكن التراجع عن هذا الإجراء    │
│                                     │
│ ┌──────────────┐ ┌──────────────┐  │
│ │ حذف 5 حاوية  │ │    إلغاء     │  │
│ └──────────────┘ └──────────────┘  │
└─────────────────────────────────────┘
```

### Behavior

1. **On Open**:
   - Receive type and size from summary row
   - Call `GET /api/company/containers/details?type={}&size={}`
   - Extract available containers count
   - Show loading while fetching

2. **Display Info**:
   - Show type and size
   - Highlight available count in green
   - Initialize quantity to 1

3. **Quantity Input**:
   - Number input with min=1, max=availableCount
   - Show helper text: "الحد الأقصى: {availableCount} حاوية"
   - Update button text dynamically: "حذف {quantity} حاوية"

4. **Warning Box**:
   - Yellow background with warning icon
   - List deletion rules:
     - Only available containers deleted
     - Action is irreversible

5. **No Available Containers**:
   - If availableCount = 0:
     - Hide quantity input
     - Hide submit button
     - Show: "لا توجد حاويات متاحة للحذف. جميع الحاويات مؤجرة أو في الصيانة."

6. **Submit**:
   - Validate: 1 ≤ quantity ≤ availableCount
   - Call `DELETE /api/company/containers/bulk-delete`
   - Show loading: "جاري الحذف..."
   - On success:
     - Show success: "تم حذف الحاويات بنجاح!"
     - Close after 1.5 seconds
     - Refresh summary

7. **Error Handling**:
   - Show error if not enough available containers
   - Keep dialog open with error message

---

## Flutter Models

### 1. Container Summary Model

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_summary.freezed.dart';
part 'container_summary.g.dart';

@freezed
class ContainerSummary with _$ContainerSummary {
  const factory ContainerSummary({
    required String type,
    required String size,
    required int total,
    required int available,
    required int rented,
    required int maintenance,
  }) = _ContainerSummary;

  factory ContainerSummary.fromJson(Map<String, dynamic> json) =>
      _$ContainerSummaryFromJson(json);
}
```

### 2. Container Model

```dart
@freezed
class Container with _$Container {
  const factory Container({
    required int id,
    required String containerNumber,
    required String type,
    required String size,
    required String status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Container;

  factory Container.fromJson(Map<String, dynamic> json) =>
      _$ContainerFromJson(json);
}

// Extension for UI helpers
extension ContainerX on Container {
  String get statusLabel {
    switch (status) {
      case 'available': return 'متاح';
      case 'rented': return 'مؤجرة';
      case 'maintenance': return 'صيانة';
      default: return status;
    }
  }

  Color get statusColor {
    switch (status) {
      case 'available': return Colors.green;
      case 'rented': return Colors.blue;
      case 'maintenance': return Colors.orange;
      default: return Colors.grey;
    }
  }
}
```

### 3. Container Details Response

```dart
@freezed
class ContainerDetails with _$ContainerDetails {
  const factory ContainerDetails({
    required String type,
    required String size,
    required ContainersByStatus containers,
  }) = _ContainerDetails;

  factory ContainerDetails.fromJson(Map<String, dynamic> json) =>
      _$ContainerDetailsFromJson(json);
}

@freezed
class ContainersByStatus with _$ContainersByStatus {
  const factory ContainersByStatus({
    @Default([]) List<Container> available,
    @Default([]) List<Container> rented,
    @Default([]) List<Container> maintenance,
  }) = _ContainersByStatus;

  factory ContainersByStatus.fromJson(Map<String, dynamic> json) =>
      _$ContainersByStatusFromJson(json);
}
```

### 4. Container Type Model

```dart
@freezed
class ContainerType with _$ContainerType {
  const factory ContainerType({
    required int id,
    required String name,
    String? description,
    @Default([]) List<ContainerSize> sizes,
  }) = _ContainerType;

  factory ContainerType.fromJson(Map<String, dynamic> json) =>
      _$ContainerTypeFromJson(json);
}

@freezed
class ContainerSize with _$ContainerSize {
  const factory ContainerSize({
    required int id,
    required String size,
    String? imageUrl,
  }) = _ContainerSize;

  factory ContainerSize.fromJson(Map<String, dynamic> json) =>
      _$ContainerSizeFromJson(json);
}
```

### 5. Add Container Request

```dart
@freezed
class AddContainerRequest with _$AddContainerRequest {
  const factory AddContainerRequest({
    required String type,
    required String size,
    required int quantity,
    required String status,
  }) = _AddContainerRequest;

  factory AddContainerRequest.fromJson(Map<String, dynamic> json) =>
      _$AddContainerRequestFromJson(json);
}
```

### 6. Bulk Update Request

```dart
@freezed
class BulkUpdateStatusRequest with _$BulkUpdateStatusRequest {
  const factory BulkUpdateStatusRequest({
    required List<int> containerIds,
    required String newStatus,
  }) = _BulkUpdateStatusRequest;

  factory BulkUpdateStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkUpdateStatusRequestFromJson(json);
}
```

### 7. Bulk Delete Request

```dart
@freezed
class BulkDeleteRequest with _$BulkDeleteRequest {
  const factory BulkDeleteRequest({
    required String type,
    required String size,
    required int quantity,
  }) = _BulkDeleteRequest;

  factory BulkDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDeleteRequestFromJson(json);
}
```

---

## API Service

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainersApiService {
  final Dio _dio;
  static const String _baseUrl = '/api/company/containers';

  ContainersApiService(this._dio);

  /// Get container summary (aggregated by type/size)
  Future<List<ContainerSummary>> getContainerSummary() async {
    try {
      final response = await _dio.get('$_baseUrl/summary');
      final summaries = (response.data['summary'] as List)
          .map((json) => ContainerSummary.fromJson(json))
          .toList();
      return summaries;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch summary';
    }
  }

  /// Get container details for specific type/size
  Future<ContainerDetails> getContainerDetails({
    required String type,
    required String size,
  }) async {
    try {
      final response = await _dio.get(
        '$_baseUrl/details',
        queryParameters: {'type': type, 'size': size},
      );
      return ContainerDetails.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch details';
    }
  }

  /// Get container types
  Future<List<ContainerType>> getContainerTypes() async {
    try {
      final response = await _dio.get('/api/container-types');
      final types = (response.data['data'] as List)
          .map((json) => ContainerType.fromJson(json))
          .toList();
      return types;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch container types';
    }
  }

  /// Add containers in bulk
  Future<Map<String, dynamic>> addContainers(AddContainerRequest request) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/add',
        data: request.toJson(),
      );
      return response.data;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to add containers';
    }
  }

  /// Update container status in bulk
  Future<Map<String, dynamic>> bulkUpdateStatus(
    BulkUpdateStatusRequest request,
  ) async {
    try {
      final response = await _dio.patch(
        '$_baseUrl/bulk-status',
        data: request.toJson(),
      );
      return response.data;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to update status';
    }
  }

  /// Delete containers in bulk
  Future<Map<String, dynamic>> bulkDeleteContainers(
    BulkDeleteRequest request,
  ) async {
    try {
      final response = await _dio.delete(
        '$_baseUrl/bulk-delete',
        data: request.toJson(),
      );
      return response.data;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to delete containers';
    }
  }
}

// Provider
final containersApiServiceProvider = Provider<ContainersApiService>((ref) {
  final dio = ref.watch(dioProvider);
  return ContainersApiService(dio);
});
```

---

## State Management (Riverpod)

### 1. Containers Summary State

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// State
@freezed
class ContainersState with _$ContainersState {
  const factory ContainersState({
    @Default([]) List<ContainerSummary> summary,
    @Default(false) bool isLoading,
    String? error,
    @Default(false) bool addSuccess,
    @Default(false) bool updateSuccess,
    @Default(false) bool deleteSuccess,
  }) = _ContainersState;
}

// Notifier
class ContainersNotifier extends StateNotifier<ContainersState> {
  final ContainersApiService _apiService;

  ContainersNotifier(this._apiService) : super(const ContainersState());

  /// Fetch container summary
  Future<void> fetchSummary() async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final summary = await _apiService.getContainerSummary();
      state = state.copyWith(summary: summary, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Add containers
  Future<void> addContainers(AddContainerRequest request) async {
    try {
      await _apiService.addContainers(request);
      state = state.copyWith(addSuccess: true);
      // Refresh summary
      await fetchSummary();
    } catch (e) {
      state = state.copyWith(error: e.toString());
      rethrow;
    }
  }

  /// Clear add success
  void clearAddState() {
    state = state.copyWith(addSuccess: false, error: null);
  }

  /// Clear update success
  void clearUpdateState() {
    state = state.copyWith(updateSuccess: false, error: null);
  }

  /// Clear delete success
  void clearDeleteState() {
    state = state.copyWith(deleteSuccess: false, error: null);
  }
}

// Provider
final containersProvider = StateNotifierProvider<ContainersNotifier, ContainersState>((ref) {
  final apiService = ref.watch(containersApiServiceProvider);
  return ContainersNotifier(apiService);
});
```

### 2. Container Details State

```dart
// State for edit/delete operations
@freezed
class ContainerDetailsState with _$ContainerDetailsState {
  const factory ContainerDetailsState({
    ContainerDetails? details,
    @Default(false) bool isLoading,
    String? error,
  }) = _ContainerDetailsState;
}

// Notifier
class ContainerDetailsNotifier extends StateNotifier<ContainerDetailsState> {
  final ContainersApiService _apiService;
  final ContainersNotifier _containersNotifier;

  ContainerDetailsNotifier(this._apiService, this._containersNotifier)
      : super(const ContainerDetailsState());

  /// Fetch container details
  Future<void> fetchDetails({required String type, required String size}) async {
    state = state.copyWith(isLoading: true, error: null);
    try {
      final details = await _apiService.getContainerDetails(type: type, size: size);
      state = state.copyWith(details: details, isLoading: false);
    } catch (e) {
      state = state.copyWith(error: e.toString(), isLoading: false);
    }
  }

  /// Update container status
  Future<void> updateStatus(BulkUpdateStatusRequest request) async {
    try {
      await _apiService.bulkUpdateStatus(request);
      // Refresh summary in main notifier
      await _containersNotifier.fetchSummary();
      _containersNotifier.state = _containersNotifier.state.copyWith(updateSuccess: true);
    } catch (e) {
      state = state.copyWith(error: e.toString());
      rethrow;
    }
  }

  /// Delete containers
  Future<void> deleteContainers(BulkDeleteRequest request) async {
    try {
      await _apiService.bulkDeleteContainers(request);
      // Refresh summary
      await _containersNotifier.fetchSummary();
      _containersNotifier.state = _containersNotifier.state.copyWith(deleteSuccess: true);
    } catch (e) {
      state = state.copyWith(error: e.toString());
      rethrow;
    }
  }

  void clear() {
    state = const ContainerDetailsState();
  }
}

// Provider
final containerDetailsProvider = StateNotifierProvider<ContainerDetailsNotifier, ContainerDetailsState>((ref) {
  final apiService = ref.watch(containersApiServiceProvider);
  final containersNotifier = ref.watch(containersProvider.notifier);
  return ContainerDetailsNotifier(apiService, containersNotifier);
});
```

### 3. Container Types State

```dart
// Simple provider for container types
final containerTypesProvider = FutureProvider<List<ContainerType>>((ref) async {
  final apiService = ref.watch(containersApiServiceProvider);
  return apiService.getContainerTypes();
});
```

---

## UI Implementation Patterns

### 1. Container Summary Table

```dart
class ContainerSummaryTable extends StatelessWidget {
  final List<ContainerSummary> summary;
  final Function(ContainerSummary) onEdit;
  final Function(ContainerSummary) onDelete;

  const ContainerSummaryTable({
    required this.summary,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('نوع الحاوية')),
          DataColumn(label: Text('الحجم')),
          DataColumn(label: Text('الإجمالي')),
          DataColumn(label: Text('متاح', style: TextStyle(color: Colors.green))),
          DataColumn(label: Text('مؤجرة', style: TextStyle(color: Colors.blue))),
          DataColumn(label: Text('صيانة', style: TextStyle(color: Colors.orange))),
          DataColumn(label: Text('الإجراءات')),
        ],
        rows: summary.map((row) {
          return DataRow(
            cells: [
              DataCell(Text(row.type)),
              DataCell(Text(row.size)),
              DataCell(Text('${row.total}', style: TextStyle(fontWeight: FontWeight.bold))),
              DataCell(Text('${row.available}', style: TextStyle(color: Colors.green))),
              DataCell(Text('${row.rented}', style: TextStyle(color: Colors.blue))),
              DataCell(Text('${row.maintenance}', style: TextStyle(color: Colors.orange))),
              DataCell(
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () => onEdit(row),
                      icon: Icon(Icons.edit, size: 16),
                      label: Text('تعديل'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                    SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: () => onDelete(row),
                      icon: Icon(Icons.delete, size: 16),
                      label: Text('حذف'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
```

### 2. Add Container Bottom Sheet

```dart
class AddContainerBottomSheet extends ConsumerStatefulWidget {
  const AddContainerBottomSheet({Key? key}) : super(key: key);

  @override
  ConsumerState<AddContainerBottomSheet> createState() => _AddContainerBottomSheetState();
}

class _AddContainerBottomSheetState extends ConsumerState<AddContainerBottomSheet> {
  String? selectedType;
  String? selectedSize;
  int quantity = 1;
  String status = 'available';

  ContainerType? selectedTypeData;
  ContainerSize? selectedSizeData;

  @override
  Widget build(BuildContext context) {
    final containerTypesAsync = ref.watch(containerTypesProvider);
    final containersState = ref.watch(containersProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      builder: (context, scrollController) {
        return Container(
          padding: EdgeInsets.all(16),
          child: ListView(
            controller: scrollController,
            children: [
              // Header
              Text('إضافة حاوية جديدة', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),

              // Type dropdown
              containerTypesAsync.when(
                data: (types) => DropdownButtonFormField<String>(
                  value: selectedType,
                  decoration: InputDecoration(labelText: 'نوع الحاوية *'),
                  items: types.map((type) {
                    return DropdownMenuItem(value: type.name, child: Text(type.name));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedType = value;
                      selectedSize = null;
                      selectedTypeData = types.firstWhere((t) => t.name == value);
                      selectedSizeData = null;
                    });
                  },
                ),
                loading: () => CircularProgressIndicator(),
                error: (err, stack) => Text('Error loading types'),
              ),
              SizedBox(height: 16),

              // Size dropdown
              if (selectedTypeData != null)
                DropdownButtonFormField<String>(
                  value: selectedSize,
                  decoration: InputDecoration(labelText: 'حجم الحاوية *'),
                  items: selectedTypeData!.sizes.map((size) {
                    return DropdownMenuItem(value: size.size, child: Text(size.size));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedSize = value;
                      selectedSizeData = selectedTypeData!.sizes.firstWhere((s) => s.size == value);
                    });
                  },
                ),
              SizedBox(height: 16),

              // Image preview
              if (selectedSizeData?.imageUrl != null)
                Container(
                  height: 192,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    '${BACKEND_URL}/${selectedSizeData!.imageUrl}',
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Icon(Icons.broken_image, size: 48),
                  ),
                ),
              SizedBox(height: 16),

              // Quantity
              TextFormField(
                initialValue: quantity.toString(),
                decoration: InputDecoration(labelText: 'عدد الحاويات *'),
                keyboardType: TextInputType.number,
                onChanged: (value) => quantity = int.tryParse(value) ?? 1,
              ),
              SizedBox(height: 16),

              // Status dropdown
              DropdownButtonFormField<String>(
                value: status,
                decoration: InputDecoration(labelText: 'حالة الحاوية'),
                items: [
                  DropdownMenuItem(value: 'available', child: Text('متاح للتأجير')),
                  DropdownMenuItem(value: 'rented', child: Text('مؤجرة')),
                  DropdownMenuItem(value: 'maintenance', child: Text('صيانة')),
                ],
                onChanged: (value) => setState(() => status = value!),
              ),
              SizedBox(height: 24),

              // Submit button
              ElevatedButton(
                onPressed: containersState.isLoading ? null : () {
                  if (selectedType != null && selectedSize != null) {
                    ref.read(containersProvider.notifier).addContainers(
                      AddContainerRequest(
                        type: selectedType!,
                        size: selectedSize!,
                        quantity: quantity,
                        status: status,
                      ),
                    );
                  }
                },
                child: containersState.isLoading
                    ? CircularProgressIndicator(color: Colors.white)
                    : Text('إضافة الحاوية'),
              ),
            ],
          ),
        );
      },
    );
  }
}
```

### 3. Edit Status Bottom Sheet (Simplified)

```dart
// Tabs for filtering
Row(
  children: [
    FilterChip(
      label: Text('الكل (${allContainers.length})'),
      selected: activeTab == 'all',
      onSelected: (_) => setState(() => activeTab = 'all'),
    ),
    FilterChip(
      label: Text('متاح (${available.length})'),
      selected: activeTab == 'available',
      onSelected: (_) => setState(() => activeTab = 'available'),
    ),
    // ... more tabs
  ],
)

// Container selection grid
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    childAspectRatio: 3,
  ),
  itemCount: filteredContainers.length,
  itemBuilder: (context, index) {
    final container = filteredContainers[index];
    final isSelected = selectedIds.contains(container.id);
    
    return CheckboxListTile(
      value: isSelected,
      onChanged: (checked) {
        setState(() {
          if (checked!) {
            selectedIds.add(container.id);
          } else {
            selectedIds.remove(container.id);
          }
        });
      },
      title: Text('#${container.containerNumber}'),
      subtitle: Text(container.statusLabel),
    );
  },
)

// Update button
ElevatedButton(
  onPressed: () {
    ref.read(containerDetailsProvider.notifier).updateStatus(
      BulkUpdateStatusRequest(
        containerIds: selectedIds.toList(),
        newStatus: newStatus,
      ),
    );
  },
  child: Text('تغيير الحالة'),
)
```

### 4. Delete Confirmation Dialog

```dart
AlertDialog(
  title: Row(
    children: [
      Icon(Icons.delete, color: Colors.red),
      SizedBox(width: 8),
      Text('حذف حاويات'),
    ],
  ),
  content: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('النوع: ${containerData.type}'),
      Text('الحجم: ${containerData.size}'),
      Text('عدد الحاويات المتاحة: ${availableCount}', 
        style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
      SizedBox(height: 16),
      
      TextFormField(
        decoration: InputDecoration(
          labelText: 'كم حاوية تريد حذفها؟',
          helperText: 'الحد الأقصى: $availableCount حاوية',
        ),
        keyboardType: TextInputType.number,
        initialValue: '1',
        onChanged: (value) => quantity = int.tryParse(value) ?? 1,
      ),
      SizedBox(height: 16),
      
      Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.yellow[50],
          border: Border.all(color: Colors.orange),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.orange),
                SizedBox(width: 8),
                Text('تنبيه مهم', style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(height: 8),
            Text('• سيتم حذف فقط الحاويات المتاحة (غير المؤجرة)'),
            Text('• لا يمكن التراجع عن هذا الإجراء'),
          ],
        ),
      ),
    ],
  ),
  actions: [
    TextButton(
      onPressed: () => Navigator.pop(context),
      child: Text('إلغاء'),
    ),
    ElevatedButton(
      onPressed: () {
        ref.read(containerDetailsProvider.notifier).deleteContainers(
          BulkDeleteRequest(
            type: containerData.type,
            size: containerData.size,
            quantity: quantity,
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: Text('حذف $quantity حاوية'),
    ),
  ],
)
```

---

## Implementation Checklist

### Setup
- [ ] Install required packages (freezed, riverpod, dio)
- [ ] Generate freezed models (`flutter pub run build_runner build`)
- [ ] Configure Dio with base URL and auth interceptors

### Models
- [ ] Create `ContainerSummary` model
- [ ] Create `Container` model with status extension
- [ ] Create `ContainerDetails` model
- [ ] Create `ContainersByStatus` model
- [ ] Create `ContainerType` and `ContainerSize` models
- [ ] Create `AddContainerRequest` model
- [ ] Create `BulkUpdateStatusRequest` model
- [ ] Create `BulkDeleteRequest` model
- [ ] Generate JSON serialization code

### API Service
- [ ] Implement `ContainersApiService` class
- [ ] Add `getContainerSummary()` method
- [ ] Add `getContainerDetails(type, size)` method
- [ ] Add `getContainerTypes()` method
- [ ] Add `addContainers(request)` method
- [ ] Add `bulkUpdateStatus(request)` method
- [ ] Add `bulkDeleteContainers(request)` method
- [ ] Create provider for API service

### State Management
- [ ] Create `ContainersState` with freezed
- [ ] Implement `ContainersNotifier` with fetch and add methods
- [ ] Create `containersProvider`
- [ ] Create `ContainerDetailsState` with freezed
- [ ] Implement `ContainerDetailsNotifier` with update/delete methods
- [ ] Create `containerDetailsProvider`
- [ ] Create `containerTypesProvider` (FutureProvider)

### Summary Screen
- [ ] Create `ContainersSummaryScreen` widget
- [ ] Implement AppBar with title and Add button
- [ ] Fetch summary on screen load
- [ ] Show loading spinner while fetching
- [ ] Display error state if API fails
- [ ] Display empty state if no containers
- [ ] Implement DataTable for summary
- [ ] Color-code status columns (green, blue, orange)
- [ ] Add Edit and Delete buttons per row
- [ ] Implement pull-to-refresh

### Add Container Sheet
- [ ] Create `AddContainerBottomSheet` widget
- [ ] Fetch container types on open
- [ ] Implement type dropdown
- [ ] Implement size dropdown (filtered by type)
- [ ] Show container image preview
- [ ] Construct image URL correctly
- [ ] Implement quantity input (1-100)
- [ ] Implement status dropdown
- [ ] Add form validation
- [ ] Handle submit with loading state
- [ ] Show success/error messages
- [ ] Reset form and close on success

### Edit Status Sheet
- [ ] Create `EditContainerStatusBottomSheet` widget
- [ ] Fetch container details on open
- [ ] Implement 4 tabs (All, Available, Rented, Maintenance)
- [ ] Display container grid with checkboxes
- [ ] Implement "Select All" / "Deselect All"
- [ ] Track selected container IDs
- [ ] Implement new status dropdown
- [ ] Handle bulk update with loading state
- [ ] Show success message
- [ ] Refresh summary on success

### Delete Dialog
- [ ] Create `DeleteContainersDialog` widget
- [ ] Fetch container details on open
- [ ] Display type, size, available count
- [ ] Implement quantity input
- [ ] Validate quantity ≤ availableCount
- [ ] Show warning box
- [ ] Handle case when no available containers
- [ ] Submit delete request
- [ ] Show loading during deletion
- [ ] Show success message and close

### UI Components
- [ ] Create status badge widget with color coding
- [ ] Create loading spinner widget
- [ ] Create error display widget
- [ ] Create empty state widget
- [ ] Ensure RTL support for Arabic text

### Testing
- [ ] Test summary loading
- [ ] Test empty state
- [ ] Test add container flow (success + error)
- [ ] Test type/size dropdowns
- [ ] Test image preview
- [ ] Test edit status flow
- [ ] Test tab filtering
- [ ] Test bulk selection
- [ ] Test delete flow
- [ ] Test validation (quantity limits)
- [ ] Test error handling
- [ ] Test pull-to-refresh

---

## Required Packages

Add to `pubspec.yaml`:

```yaml
dependencies:
  flutter:
    sdk: flutter
  
  # State Management
  flutter_riverpod: ^2.4.0
  
  # Networking
  dio: ^5.4.0
  
  # JSON Serialization
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  
dev_dependencies:
  # Code Generation
  build_runner: ^2.4.6
  freezed: ^2.4.5
  json_serializable: ^6.7.1
```

---

## Summary

This guide provides complete specifications for implementing the Containers Management feature in Flutter:

✅ **6 API Endpoints**: Summary, Details, Types, Add, Update, Delete  
✅ **8 Data Models**: Summary, Container, Details, Type, Size, 3 Request models  
✅ **4 Main Operations**: View summary, Add bulk, Edit status, Delete bulk  
✅ **Aggregated View**: Summary table groups by type/size  
✅ **Bulk Operations**: Add/update/delete multiple containers at once  
✅ **Dynamic Types**: Container types loaded from API  
✅ **Status Management**: Three statuses with color coding  
✅ **Image Preview**: Show container image when adding  

**Key Design Decisions**:
- **Aggregated Summary**: Table shows totals, not individual containers
- **Bulk Add**: Add multiple identical containers in one operation
- **Filtered Edit**: Tab-based filtering by status
- **Protected Delete**: Only available containers can be deleted
- **Dynamic Types**: Types and sizes come from backend API
- **Image URLs**: Construct from backend URL + path

**Implementation Notes**:
1. Summary is aggregated (not list of individual containers)
2. Add operation creates multiple containers with same specs
3. Edit operation works on selected containers from details view
4. Delete only removes available containers (not rented/maintenance)
5. Container types are fetched dynamically from API
6. Image preview shows container appearance
7. All operations refresh summary automatically
8. Quantity limits enforced (1-100 for add, max available for delete)
