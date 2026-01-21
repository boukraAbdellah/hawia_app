# Flutter Drivers Management Implementation Guide

> **Purpose**: Complete documentation for implementing the Drivers Management feature in the Flutter mobile app
> 
> **Scope**: List drivers, view driver details, add new driver, edit driver, delete driver
> 
> **Target**: AI agent implementation - includes all fields, API contracts, validation rules, and Flutter code patterns

---

## Table of Contents

1. [Overview](#overview)
2. [Driver Data Model](#driver-data-model)
3. [API Endpoints](#api-endpoints)
4. [Screens Structure](#screens-structure)
5. [Screen 1: Drivers List](#screen-1-drivers-list)
6. [Screen 2: Driver Details](#screen-2-driver-details)
7. [Screen 3: Add Driver](#screen-3-add-driver)
8. [Screen 4: Edit Driver](#screen-4-edit-driver)
9. [Screen 5: Delete Driver](#screen-5-delete-driver)
10. [Flutter Models](#flutter-models)
11. [API Service](#api-service)
12. [State Management (Riverpod)](#state-management-riverpod)
13. [UI Implementation Patterns](#ui-implementation-patterns)
14. [Implementation Checklist](#implementation-checklist)
15. [Required Packages](#required-packages)

---

## Overview

The Drivers Management feature allows companies to manage their delivery drivers. Key functionalities:

- **List all drivers** with status badges (available, on_duty, off_duty, on_break)
- **View driver details** including personal info, statistics, and assigned orders
- **Add new driver** with validation
- **Edit driver** information (optional password update)
- **Delete driver** with confirmation

**Important Notes**:
- ❌ **DO NOT include ERP fields** in mobile app (baseSalary, passportNumber, iqamaNumber, hireDate, extraSalary, iqamaRenewalDate)
- ✅ **Only mobile-relevant fields** (name, phone, email, password, availability, identityNumber)
- All API calls require Bearer token authentication
- Error handling for network failures and validation errors
- Loading states for all operations

---

## Driver Data Model

### Core Driver Fields (Mobile App)

| Field | Type | Required | Description | Validation |
|-------|------|----------|-------------|------------|
| `id` | int | Auto | Driver unique identifier | - |
| `name` | String | ✅ Yes | Driver full name | Min 2 characters |
| `phone` | String | ✅ Yes | Driver phone number | Required |
| `email` | String? | Optional | Driver email address | Valid email format if provided |
| `password` | String? | Optional | Driver password | Min 6 characters if provided |
| `availability` | String | ✅ Yes | Driver status | One of: available, on_duty, off_duty, on_break |
| `identityNumber` | String | ✅ Yes | National ID number | Required |
| `createdAt` | DateTime? | Auto | Creation timestamp | - |
| `updatedAt` | DateTime? | Auto | Last update timestamp | - |

### Availability Status Enum

```dart
enum DriverAvailability {
  available,    // متاح
  on_duty,      // في الخدمة
  off_duty,     // خارج الخدمة
  on_break      // في استراحة
}
```

**Status UI Mapping**:
- `available` → Green badge → "متاح"
- `on_duty` → Blue badge → "في الخدمة"
- `off_duty` → Orange badge → "خارج الخدمة"
- `on_break` → Orange badge → "في استراحة"

---

## API Endpoints

### Base URL
```
/api/company/drivers
```

### 1. Get All Drivers

**Endpoint**: `GET /api/company/drivers`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "drivers": [
    {
      "id": 1,
      "name": "أحمد محمد",
      "phone": "+966501234567",
      "email": "ahmed@example.com",
      "availability": "available",
      "identityNumber": "1234567890",
      "createdAt": "2024-01-15T10:30:00Z",
      "updatedAt": "2024-01-15T10:30:00Z"
    },
    {
      "id": 2,
      "name": "محمد علي",
      "phone": "+966507654321",
      "email": null,
      "availability": "on_duty",
      "identityNumber": "9876543210",
      "createdAt": "2024-01-16T11:00:00Z",
      "updatedAt": "2024-01-16T11:00:00Z"
    }
  ]
}
```

**Error Response** (401/500):
```json
{
  "message": "Failed to fetch drivers"
}
```

---

### 2. Get Driver Details

**Endpoint**: `GET /api/company/drivers/{driverId}/details`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "driver": {
    "id": 1,
    "name": "أحمد محمد",
    "phone": "+966501234567",
    "email": "ahmed@example.com",
    "availability": "available",
    "identityNumber": "1234567890",
    "createdAt": "2024-01-15T10:30:00Z",
    "updatedAt": "2024-01-15T10:30:00Z"
  },
  "statistics": {
    "currentApplications": 5,
    "completedApplications": 120,
    "totalApplications": 125
  },
  "orders": [
    {
      "id": 101,
      "truck": "🚛",
      "containerNumber": "CNT-001",
      "type": "نفايات عامة",
      "size": "240L",
      "deliveryDate": "2024-01-20",
      "status": "in_transit"
    },
    {
      "id": 102,
      "truck": "🚚",
      "containerNumber": "CNT-002",
      "type": "إعادة تدوير",
      "size": "120L",
      "deliveryDate": "2024-01-21",
      "status": "pending"
    }
  ]
}
```

**Order Status Values**:
- `pending` → "في الانتظار" (Blue)
- `scheduled` → "مجدولة" (Blue)
- `in_transit` → "يتم التوصيل" (Orange)
- `delivered` → "تم التوصيل" (Green)
- `pick_up_in_progress` → "الالتقاط قيد التنفيذ" (Orange)
- `picked_up` → "التقطت" (Blue)
- `re_delivery_in_progress` → "إعادة التسليم قيد التنفيذ" (Orange)
- `completed` → "مكتمل" (Green)
- `late` → "متأخر" (Red)
- `canceled` → "ملغي" (Gray)

---

### 3. Add Driver

**Endpoint**: `POST /api/company/drivers/add`

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
  "name": "أحمد محمد",
  "phone": "+966501234567",
  "email": "ahmed@example.com",
  "password": "password123",
  "availability": "available",
  "identityNumber": "1234567890"
}
```

**Field Requirements**:
- `name`: Required, min 2 characters
- `phone`: Required
- `email`: Optional, valid email format if provided
- `password`: Optional, min 6 characters if provided
- `availability`: Required, one of: available, on_duty, off_duty, on_break
- `identityNumber`: Required

**Response** (201 Created):
```json
{
  "driver": {
    "id": 3,
    "name": "أحمد محمد",
    "phone": "+966501234567",
    "email": "ahmed@example.com",
    "availability": "available",
    "identityNumber": "1234567890",
    "createdAt": "2024-01-20T12:00:00Z",
    "updatedAt": "2024-01-20T12:00:00Z"
  }
}
```

**Error Response** (400):
```json
{
  "message": "Validation error: Name is required"
}
```

**Error Response** (500):
```json
{
  "message": "Failed to add driver"
}
```

---

### 4. Update Driver

**Endpoint**: `PATCH /api/company/drivers/{driverId}`

**Headers**:
```json
{
  "Authorization": "Bearer <token>",
  "Content-Type": "application/json"
}
```

**Request Body** (only include fields to update):
```json
{
  "name": "أحمد محمد السعيد",
  "phone": "+966501234567",
  "email": "ahmed.new@example.com",
  "password": "newpassword123",
  "availability": "on_duty",
  "identityNumber": "1234567890"
}
```

**Important Notes**:
- Only send fields that should be updated
- Backend handles null checks
- Password is optional - leave empty to keep current password
- All validation rules same as Add Driver

**Response** (200 OK):
```json
{
  "driver": {
    "id": 1,
    "name": "أحمد محمد السعيد",
    "phone": "+966501234567",
    "email": "ahmed.new@example.com",
    "availability": "on_duty",
    "identityNumber": "1234567890",
    "createdAt": "2024-01-15T10:30:00Z",
    "updatedAt": "2024-01-20T13:00:00Z"
  }
}
```

**Error Response** (400/404/500):
```json
{
  "message": "Failed to update driver"
}
```

---

### 5. Delete Driver

**Endpoint**: `DELETE /api/company/drivers/{driverId}`

**Headers**:
```json
{
  "Authorization": "Bearer <token>"
}
```

**Response** (200 OK):
```json
{
  "message": "Driver deleted successfully"
}
```

**Error Response** (404):
```json
{
  "message": "Driver not found"
}
```

**Error Response** (500):
```json
{
  "message": "Failed to delete driver"
}
```

---

## Screens Structure

### Navigation Flow

```
DriversListScreen (Main)
  │
  ├─► DriverDetailsScreen (Tap on driver card)
  │     └─► Show driver info, statistics, assigned orders
  │
  ├─► AddDriverBottomSheet (Tap "Add Driver" button)
  │     └─► Form with validation → Success → Refresh list
  │
  ├─► EditDriverBottomSheet (Tap Edit icon on driver card)
  │     └─► Pre-filled form → Success → Refresh list
  │
  └─► DeleteDriverDialog (Tap Delete icon on driver card)
        └─► Confirmation → Delete → Refresh list
```

---

## Screen 1: Drivers List

### UI Layout

```
┌─────────────────────────────────────┐
│ ← Back    Drivers List   [+ Add]    │
├─────────────────────────────────────┤
│                                     │
│ ┌─────────────┐ ┌─────────────┐   │
│ │   Driver 1   │ │   Driver 2   │   │
│ │   Image      │ │   Image      │   │
│ │   Name       │ │   Name       │   │
│ │   Phone      │ │   Phone      │   │
│ │  [Status]    │ │  [Status]    │   │
│ │  [Edit][Del] │ │  [Edit][Del] │   │
│ └─────────────┘ └─────────────┘   │
│                                     │
│ ┌─────────────┐ ┌─────────────┐   │
│ │   Driver 3   │ │   Driver 4   │   │
│ │   ...        │ │   ...        │   │
│ └─────────────┘ └─────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

### Behavior

1. **On Load**:
   - Call `GET /api/company/drivers`
   - Show loading spinner while fetching
   - Display grid of driver cards

2. **Empty State**:
   - If no drivers: Show "لا يوجد سائقين" with icon
   - Display "ابدأ بإضافة سائق جديد لإدارة فريق السائقين"

3. **Error State**:
   - If API fails: Show error message in red box
   - Display retry option

4. **Driver Card**:
   - **Image**: Static driver placeholder (`/assets/driver.png`)
   - **Name**: Display driver name
   - **Phone**: Display phone (RTL direction)
   - **Status Badge**: Colored pill with Arabic label
   - **Edit Button**: Opens EditDriverBottomSheet
   - **Delete Button**: Opens DeleteDriverDialog
   - **Card Tap**: Navigate to DriverDetailsScreen

5. **Add Button**:
   - Floating action button at top
   - Opens AddDriverBottomSheet

6. **Grid Layout**:
   - Mobile: 1 column
   - Tablet: 2-3 columns
   - Animate cards on load (fade in with delay)

---

## Screen 2: Driver Details

### UI Layout

```
┌─────────────────────────────────────┐
│ ← Back         حول السائق           │
├─────────────────────────────────────┤
│ ┌───────────────────────────────┐  │
│ │  Driver Info Card              │  │
│ │  ┌─────────┐  ┌─────────────┐ │  │
│ │  │ Image   │  │ Name        │ │  │
│ │  │         │  │ ID: xxx     │ │  │
│ │  │         │  │ Phone: xxx  │ │  │
│ │  └─────────┘  │ Email: xxx  │ │  │
│ │               └─────────────┘ │  │
│ └───────────────────────────────┘  │
│                                     │
│ ┌───────────────────────────────┐  │
│ │  Statistics (Circle Charts)    │  │
│ │  Current: 5  Completed: 120   │  │
│ │  Total: 125                    │  │
│ └───────────────────────────────┘  │
│                                     │
│ الطلبات الخاصة بالسائق (10)       │
│ ┌───────────────────────────────┐  │
│ │ Table Header                   │  │
│ ├───────────────────────────────┤  │
│ │ 🚛 CNT-001 | نفايات | 240L... │  │
│ │ 🚚 CNT-002 | إعادة | 120L...  │  │
│ └───────────────────────────────┘  │
└─────────────────────────────────────┘
```

### Behavior

1. **On Load**:
   - Call `GET /api/company/drivers/{driverId}/details`
   - Show loading spinner
   - Parse response into 3 sections: driver, statistics, orders

2. **Driver Info Card**:
   - Display driver image (placeholder)
   - Show name, identity number (formatted: `1 2345 67890`), phone (RTL), email
   - If email is null: Display "غير محدد"

3. **Statistics Section**:
   - Use circle charts (like CircleStats component)
   - Show current applications (orange), completed (green), total
   - Display exact counts

4. **Orders Table**:
   - Display count: "الطلبات الخاصة بالسائق ({count})"
   - Table columns: Truck emoji, Container Number, Type, Size, Delivery Date, Status
   - Status badge with color mapping (see API section)
   - Empty state: "لا توجد طلبات مخصصة لهذا السائق"

5. **Back Button**:
   - Navigate back to drivers list

6. **Error Handling**:
   - Loading error: Show "خطأ في تحميل بيانات السائق"
   - Not found: Show "لم يتم العثور على بيانات السائق"

---

## Screen 3: Add Driver

### UI Layout (Bottom Sheet / Full Screen)

```
┌─────────────────────────────────────┐
│ إضافة سائق جديد              [X]   │
├─────────────────────────────────────┤
│                                     │
│ [Error Message if validation fails] │
│                                     │
│ معلومات السائق                     │
│ ┌─────────────────────────────────┐ │
│ │ 👤 اسم السائق *                │ │
│ │ [_____________]                 │ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ 📱 رقم الهاتف *                │ │
│ │ [_____________]                 │ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ 🆔 رقم الهوية *                │ │
│ │ [_____________]                 │ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ 🚦 حالة السائق *               │ │
│ │ [Dropdown: متاح / في الخدمة... ]│ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ ✉️ البريد الإلكتروني (اختياري)│ │
│ │ [_____________]                 │ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌─────────────────────────────────┐ │
│ │ 🔒 كلمة المرور (اختياري)      │ │
│ │ [_____________] [👁]            │ │
│ └─────────────────────────────────┘ │
│                                     │
│ ┌──────────────┐ ┌──────────────┐  │
│ │ إضافة السائق │ │    إلغاء     │  │
│ └──────────────┘ └──────────────┘  │
└─────────────────────────────────────┘
```

### Fields & Validation

| Field | Label (Arabic) | Required | Icon | Validation | Placeholder |
|-------|----------------|----------|------|------------|-------------|
| name | اسم السائق | ✅ | 👤 User | Min 2 chars, trim whitespace | "أدخل الاسم الكامل" |
| phone | رقم الهاتف | ✅ | 📱 Phone | Required | "+966 50 123 4567" |
| identityNumber | رقم الهوية | ✅ | 🆔 IdCard | Required | "1234567890" |
| availability | حالة السائق | ✅ | 🚦 UserCheck | One of 4 statuses | Dropdown |
| email | البريد الإلكتروني (اختياري) | ❌ | ✉️ Mail | Valid email format if provided | "driver@example.com" |
| password | كلمة المرور (اختياري) | ❌ | 🔒 Lock | Min 6 chars if provided | "••••••••" |

**Dropdown Options (availability)**:
```dart
[
  {'value': 'available', 'label': 'متاح'},
  {'value': 'on_duty', 'label': 'في الخدمة'},
  {'value': 'off_duty', 'label': 'خارج الخدمة'},
  {'value': 'on_break', 'label': 'في استراحة'},
]
```

### Behavior

1. **Form State**:
   - Initialize all fields as empty
   - Set availability to empty (force selection)
   - Track validation errors per field

2. **Real-time Validation**:
   - Clear error when user types in field
   - Show error below field if validation fails
   - Red border on fields with errors

3. **Password Toggle**:
   - Show eye icon only when password has value
   - Toggle between text/password type

4. **Submit Flow**:
   - On "إضافة السائق" tap:
     - Validate all required fields
     - Validate email format (if provided)
     - Validate password length (if provided)
     - If validation fails: Show errors, don't submit
     - If validation passes: Call API
   - Show loading spinner on button during API call
   - Disable all fields during loading

5. **Success**:
   - Close bottom sheet
   - Show success snackbar: "تمت إضافة السائق بنجاح"
   - Refresh drivers list (add new driver to state)

6. **Error**:
   - Show server error in red box at top of form
   - Keep form open with data intact
   - Re-enable submit button

7. **Cancel**:
   - Close bottom sheet
   - Clear all form data

---

## Screen 4: Edit Driver

### UI Layout

Same as Add Driver, but:
- Title: "تعديل بيانات السائق"
- Fields are pre-filled with current driver data
- Password field has different label: "كلمة المرور الجديدة (اتركها فارغة إذا لم ترد تغييرها)"
- Submit button: "تحديث البيانات"

### Pre-fill Behavior

When opening edit sheet:
```dart
{
  name: driver.name,
  phone: driver.phone,
  email: driver.email ?? '',
  password: '', // Always empty
  availability: driver.availability,
  identityNumber: driver.identityNumber
}
```

### Submit Behavior

1. **Build Update Payload**:
   - Only include non-empty fields
   - Always include availability (required)
   - Trim whitespace from strings
   - Skip password if empty

```dart
Map<String, dynamic> updateData = {};
if (name.trim().isNotEmpty) updateData['name'] = name.trim();
if (phone.trim().isNotEmpty) updateData['phone'] = phone.trim();
if (email.trim().isNotEmpty) updateData['email'] = email.trim();
if (password.trim().isNotEmpty) updateData['password'] = password.trim();
if (identityNumber.trim().isNotEmpty) updateData['identityNumber'] = identityNumber.trim();
updateData['availability'] = availability; // Always include
```

2. **API Call**:
   - `PATCH /api/company/drivers/{driverId}`
   - Send only fields in updateData

3. **Success**:
   - Close sheet
   - Show "تم تحديث بيانات السائق بنجاح"
   - Update driver in list state

4. **Error**:
   - Show server error
   - Keep form open

---

## Screen 5: Delete Driver

### UI Layout (Alert Dialog)

```
┌─────────────────────────────────────┐
│         تأكيد حذف السائق            │
├─────────────────────────────────────┤
│                                     │
│  هل أنت متأكد من حذف السائق:       │
│  "{driver.name}"؟                   │
│                                     │
│  لا يمكن التراجع عن هذا الإجراء.    │
│                                     │
│  ┌──────────┐    ┌──────────┐      │
│  │   حذف    │    │  إلغاء   │      │
│  └──────────┘    └──────────┘      │
└─────────────────────────────────────┘
```

### Behavior

1. **On Delete Icon Tap**:
   - Show confirmation dialog
   - Display driver name in message

2. **On Confirm**:
   - Close dialog
   - Show loading indicator
   - Call `DELETE /api/company/drivers/{driverId}`

3. **Success**:
   - Show "تم حذف السائق بنجاح"
   - Remove driver from list state
   - Refresh UI

4. **Error**:
   - Show error snackbar: "فشل حذف السائق: {error message}"
   - Keep driver in list

5. **On Cancel**:
   - Close dialog
   - No changes

---

## Flutter Models

### 1. Driver Model

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver.freezed.dart';
part 'driver.g.dart';

@freezed
class Driver with _$Driver {
  const factory Driver({
    required int id,
    required String name,
    required String phone,
    String? email,
    required String availability,
    required String identityNumber,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Driver;

  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

// Extension for UI helpers
extension DriverX on Driver {
  String get availabilityLabel {
    switch (availability) {
      case 'available': return 'متاح';
      case 'on_duty': return 'في الخدمة';
      case 'off_duty': return 'خارج الخدمة';
      case 'on_break': return 'في استراحة';
      default: return availability;
    }
  }

  Color get statusColor {
    switch (availability) {
      case 'available': return Colors.green;
      case 'on_duty': return Colors.blue;
      case 'off_duty': return Colors.orange;
      case 'on_break': return Colors.orange;
      default: return Colors.grey;
    }
  }
}
```

### 2. Add Driver Request

```dart
@freezed
class AddDriverRequest with _$AddDriverRequest {
  const factory AddDriverRequest({
    required String name,
    required String phone,
    String? email,
    String? password,
    required String availability,
    required String identityNumber,
  }) = _AddDriverRequest;

  factory AddDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDriverRequestFromJson(json);
}
```

### 3. Update Driver Request

```dart
@freezed
class UpdateDriverRequest with _$UpdateDriverRequest {
  const factory UpdateDriverRequest({
    String? name,
    String? phone,
    String? email,
    String? password,
    String? availability,
    String? identityNumber,
  }) = _UpdateDriverRequest;

  factory UpdateDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDriverRequestFromJson(json);
}
```

### 4. Driver Details Response

```dart
@freezed
class DriverDetails with _$DriverDetails {
  const factory DriverDetails({
    required Driver driver,
    required DriverStatistics statistics,
    required List<DriverOrder> orders,
  }) = _DriverDetails;

  factory DriverDetails.fromJson(Map<String, dynamic> json) =>
      _$DriverDetailsFromJson(json);
}

@freezed
class DriverStatistics with _$DriverStatistics {
  const factory DriverStatistics({
    required int currentApplications,
    required int completedApplications,
    required int totalApplications,
  }) = _DriverStatistics;

  factory DriverStatistics.fromJson(Map<String, dynamic> json) =>
      _$DriverStatisticsFromJson(json);
}

@freezed
class DriverOrder with _$DriverOrder {
  const factory DriverOrder({
    required int id,
    required String truck,
    String? containerNumber,
    required String type,
    required String size,
    required String deliveryDate,
    required String status,
  }) = _DriverOrder;

  factory DriverOrder.fromJson(Map<String, dynamic> json) =>
      _$DriverOrderFromJson(json);
}

// Extension for order status UI
extension DriverOrderX on DriverOrder {
  String get statusLabel {
    switch (status) {
      case 'pending': return 'في الانتظار';
      case 'scheduled': return 'مجدولة';
      case 'in_transit': return 'يتم التوصيل';
      case 'delivered': return 'تم التوصيل';
      case 'pick_up_in_progress': return 'الالتقاط قيد التنفيذ';
      case 'picked_up': return 'التقطت';
      case 're_delivery_in_progress': return 'إعادة التسليم قيد التنفيذ';
      case 'completed': return 'مكتمل';
      case 'late': return 'متأخر';
      case 'canceled': return 'ملغي';
      default: return status;
    }
  }

  Color get statusColor {
    switch (status) {
      case 'pending':
      case 'scheduled':
      case 'picked_up':
        return Colors.blue;
      case 'in_transit':
      case 'pick_up_in_progress':
      case 're_delivery_in_progress':
        return Colors.orange;
      case 'delivered':
      case 'completed':
        return Colors.green;
      case 'late':
        return Colors.red;
      case 'canceled':
        return Colors.grey;
      default:
        return Colors.grey;
    }
  }
}
```

---

## API Service

```dart
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DriversApiService {
  final Dio _dio;
  static const String _baseUrl = '/api/company/drivers';

  DriversApiService(this._dio);

  // Get all drivers
  Future<List<Driver>> getDrivers() async {
    try {
      final response = await _dio.get(_baseUrl);
      final drivers = (response.data['drivers'] as List)
          .map((json) => Driver.fromJson(json))
          .toList();
      return drivers;
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch drivers';
    }
  }

  // Get driver details
  Future<DriverDetails> getDriverDetails(int driverId) async {
    try {
      final response = await _dio.get('$_baseUrl/$driverId/details');
      return DriverDetails.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to fetch driver details';
    }
  }

  // Add driver
  Future<Driver> addDriver(AddDriverRequest request) async {
    try {
      final response = await _dio.post(
        '$_baseUrl/add',
        data: request.toJson(),
      );
      return Driver.fromJson(response.data['driver']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to add driver';
    }
  }

  // Update driver
  Future<Driver> updateDriver(int driverId, UpdateDriverRequest request) async {
    try {
      // Remove null values from request
      final data = request.toJson()
        ..removeWhere((key, value) => value == null);
      
      final response = await _dio.patch(
        '$_baseUrl/$driverId',
        data: data,
      );
      return Driver.fromJson(response.data['driver']);
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to update driver';
    }
  }

  // Delete driver
  Future<void> deleteDriver(int driverId) async {
    try {
      await _dio.delete('$_baseUrl/$driverId');
    } on DioException catch (e) {
      throw e.response?.data['message'] ?? 'Failed to delete driver';
    }
  }
}

// Provider
final driversApiServiceProvider = Provider<DriversApiService>((ref) {
  final dio = ref.watch(dioProvider); // Assumes you have a configured Dio provider
  return DriversApiService(dio);
});
```

---

## State Management (Riverpod)

### 1. Drivers List State

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  Future<void> updateDriver(int driverId, UpdateDriverRequest request) async {
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
  Future<void> deleteDriver(int driverId) async {
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
final driversProvider = StateNotifierProvider<DriversNotifier, DriversState>((ref) {
  final apiService = ref.watch(driversApiServiceProvider);
  return DriversNotifier(apiService);
});
```

### 2. Driver Details State

```dart
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

  Future<void> fetchDriverDetails(int driverId) async {
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
final driverDetailsProvider = StateNotifierProvider<DriverDetailsNotifier, DriverDetailsState>((ref) {
  final apiService = ref.watch(driversApiServiceProvider);
  return DriverDetailsNotifier(apiService);
});
```

---

## UI Implementation Patterns

### 1. Driver Card Widget

```dart
class DriverCard extends StatelessWidget {
  final Driver driver;
  final VoidCallback onTap;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const DriverCard({
    required this.driver,
    required this.onTap,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            // Driver image
            Image.asset('assets/driver.png', width: 112, height: 112),
            SizedBox(height: 8),
            
            // Name
            Text(driver.name, style: TextStyle(fontSize: 18)),
            
            // Phone
            Directionality(
              textDirection: TextDirection.ltr,
              child: Text(driver.phone, style: TextStyle(fontSize: 18)),
            ),
            SizedBox(height: 8),
            
            // Status badge
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: driver.statusColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: driver.statusColor),
              ),
              child: Text(
                driver.availabilityLabel,
                style: TextStyle(
                  color: driver.statusColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            
            // Action buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Delete button
                IconButton(
                  onPressed: onDelete,
                  icon: Icon(Icons.delete, color: Colors.red),
                  style: IconButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                ),
                
                // Edit button
                IconButton(
                  onPressed: onEdit,
                  icon: Icon(Icons.edit, color: primaryColor),
                  style: IconButton.styleFrom(
                    side: BorderSide(color: primaryColor, width: 2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

### 2. Status Badge Widget

```dart
class StatusBadge extends StatelessWidget {
  final String status;
  final String label;
  final Color color;

  const StatusBadge({
    required this.status,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: color),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
```

### 3. Form Field with Icon

```dart
class IconTextFormField extends StatelessWidget {
  final String label;
  final String? hintText;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isRequired;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? suffixIcon;

  const IconTextFormField({
    required this.label,
    this.hintText,
    required this.icon,
    required this.controller,
    this.validator,
    this.isRequired = false,
    this.keyboardType,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: label,
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
            children: isRequired
                ? [TextSpan(text: ' *', style: TextStyle(color: Colors.red))]
                : [],
          ),
        ),
        SizedBox(height: 8),
        TextFormField(
          controller: controller,
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: Icon(icon, color: Colors.grey),
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}
```

### 4. Loading Button

```dart
class LoadingButton extends StatelessWidget {
  final String text;
  final bool isLoading;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  const LoadingButton({
    required this.text,
    required this.isLoading,
    this.onPressed,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: isLoading
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
            )
          : Text(text, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );
  }
}
```

### 5. Empty State Widget

```dart
class EmptyDriversState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Icon(Icons.person, size: 40, color: Colors.grey[400]),
          ),
          SizedBox(height: 16),
          Text(
            'لا يوجد سائقين',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'لم يتم إضافة أي سائقين بعد. ابدأ بإضافة سائق جديد لإدارة فريق السائقين.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600]),
            ),
          ),
        ],
      ),
    );
  }
}
```

---

## Implementation Checklist

### Setup
- [ ] Install required packages (freezed, riverpod, dio, etc.)
- [ ] Generate freezed models (`flutter pub run build_runner build`)
- [ ] Configure Dio with base URL and interceptors
- [ ] Add driver placeholder image to assets

### Models
- [ ] Create `Driver` model with freezed
- [ ] Create `AddDriverRequest` model
- [ ] Create `UpdateDriverRequest` model
- [ ] Create `DriverDetails`, `DriverStatistics`, `DriverOrder` models
- [ ] Add extension methods for status labels and colors
- [ ] Generate JSON serialization code

### API Service
- [ ] Implement `DriversApiService` class
- [ ] Add `getDrivers()` method
- [ ] Add `getDriverDetails(driverId)` method
- [ ] Add `addDriver(request)` method
- [ ] Add `updateDriver(driverId, request)` method
- [ ] Add `deleteDriver(driverId)` method
- [ ] Create provider for API service

### State Management
- [ ] Create `DriversState` with freezed
- [ ] Implement `DriversNotifier` with all CRUD operations
- [ ] Create `driversProvider`
- [ ] Create `DriverDetailsState` with freezed
- [ ] Implement `DriverDetailsNotifier`
- [ ] Create `driverDetailsProvider`

### Screens - Drivers List
- [ ] Create `DriversListScreen` widget
- [ ] Implement AppBar with title and Add button
- [ ] Fetch drivers on screen load
- [ ] Show loading spinner while fetching
- [ ] Display error state if API fails
- [ ] Display empty state if no drivers
- [ ] Implement grid layout for driver cards
- [ ] Create `DriverCard` widget
- [ ] Add tap navigation to driver details
- [ ] Add edit/delete button handlers

### Screens - Driver Details
- [ ] Create `DriverDetailsScreen` widget
- [ ] Fetch driver details on load using route parameter
- [ ] Display loading/error/empty states
- [ ] Create driver info card section
- [ ] Format identity number (1 2345 67890)
- [ ] Display phone in RTL direction
- [ ] Implement statistics circle charts
- [ ] Create orders table with status badges
- [ ] Add back button navigation

### Screens - Add Driver
- [ ] Create `AddDriverBottomSheet` widget
- [ ] Implement form with all 6 fields
- [ ] Add icons to each field
- [ ] Implement dropdown for availability
- [ ] Add password visibility toggle
- [ ] Implement real-time validation
- [ ] Clear field error on change
- [ ] Show validation errors below fields
- [ ] Disable form during API call
- [ ] Handle submit success (close sheet, refresh list)
- [ ] Handle submit error (show message)
- [ ] Implement cancel button

### Screens - Edit Driver
- [ ] Create `EditDriverBottomSheet` widget
- [ ] Pre-fill form with driver data
- [ ] Keep password empty (optional update)
- [ ] Use same validation as Add
- [ ] Build update payload (only non-empty fields)
- [ ] Call update API
- [ ] Handle success/error
- [ ] Update driver in state

### Screens - Delete Driver
- [ ] Create `DeleteDriverDialog` widget
- [ ] Show driver name in confirmation message
- [ ] Add warning text about irreversible action
- [ ] Implement delete API call
- [ ] Show loading during deletion
- [ ] Handle success (remove from list, show snackbar)
- [ ] Handle error (show snackbar, keep in list)

### UI Components
- [ ] Create `StatusBadge` widget
- [ ] Create `IconTextFormField` widget
- [ ] Create `LoadingButton` widget
- [ ] Create `EmptyDriversState` widget
- [ ] Create reusable error display widget
- [ ] Create loading spinner widget

### Validation
- [ ] Implement name validation (min 2 chars)
- [ ] Implement phone validation (required)
- [ ] Implement email validation (optional, valid format)
- [ ] Implement password validation (optional, min 6 chars)
- [ ] Implement identity number validation (required)
- [ ] Implement availability validation (required, one of 4 options)

### Testing
- [ ] Test drivers list loading
- [ ] Test empty state display
- [ ] Test error state display
- [ ] Test driver card navigation
- [ ] Test add driver flow (success + error)
- [ ] Test edit driver flow (with and without password)
- [ ] Test delete driver flow
- [ ] Test driver details screen
- [ ] Test validation for all fields
- [ ] Test network error handling

### Polish
- [ ] Add fade-in animation for driver cards
- [ ] Add proper RTL support for Arabic
- [ ] Test on different screen sizes
- [ ] Ensure consistent spacing and padding
- [ ] Add haptic feedback for delete action
- [ ] Implement pull-to-refresh on list
- [ ] Add smooth transitions between screens

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
  
  # UI
  flutter_hooks: ^0.20.3
  
dev_dependencies:
  # Code Generation
  build_runner: ^2.4.6
  freezed: ^2.4.5
  json_serializable: ^6.7.1
```

---

## Summary

This guide provides complete specifications for implementing the Drivers Management feature in Flutter:

✅ **5 Screens**: List, Details, Add, Edit, Delete  
✅ **5 API Endpoints**: GET list, GET details, POST add, PATCH update, DELETE  
✅ **6 Core Fields**: name, phone, email, password, availability, identityNumber  
✅ **4 Status Options**: available, on_duty, off_duty, on_break  
✅ **Complete Models**: Freezed models with JSON serialization  
✅ **State Management**: Riverpod providers and notifiers  
✅ **Validation Rules**: Client-side validation for all fields  
✅ **UI Patterns**: Reusable widgets with Arabic support  
✅ **Error Handling**: Network errors, validation errors, empty states  

**Mobile App Changes from Web**:
- ❌ Removed all ERP fields (baseSalary, passportNumber, iqamaNumber, hireDate, extraSalary, iqamaRenewalDate)
- ✅ Kept only driver-essential fields for mobile use
- ✅ Simplified UI for mobile screen sizes
- ✅ Added bottom sheets instead of modals for better mobile UX

**Key Implementation Notes**:
1. Always include Bearer token in Authorization header
2. Use Freezed for immutable models
3. Handle null email gracefully (optional field)
4. Password is optional for both add and edit
5. Format identity number with spaces: `1 2345 67890`
6. Display phone in RTL direction
7. Use color-coded status badges
8. Show loading states during all API calls
9. Validate on client before submitting
10. Clear form errors on field change
