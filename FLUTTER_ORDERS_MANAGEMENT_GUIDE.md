# Flutter Models & UI Guide - Company Orders Management
## For Flutter + Riverpod Implementation

---

## 🎯 Overview

This document provides Flutter models and UI guidance for the **complete order management workflow** in the Hawiya company mobile app. The app mirrors the web version for on-the-go access.

**Order Lifecycle:**
```
Pending Orders → Submit Offer → Order Accepted → Assign Driver → 
Driver Delivery → Sub-orders (Unload/Return) → Completed
```

---

## 📋 Table of Contents

1. [Pending Orders API](#pending-orders)
2. [Submit Offer API](#submit-offer)
3. [Accepted Orders API](#accepted-orders)
4. [Assign Driver API](#assign-driver)
5. [Sub-orders API](#sub-orders)
6. [Completed Orders API](#completed-orders)
7. [Cancelled Orders API](#cancelled-orders)
8. [Flutter Models](#flutter-models)
9. [UI/UX Guidance](#ui-ux-guidance)

---

## 📦 API 1: Get Pending Orders

### Endpoint
```
GET /api/company/orders/pending
```

### Request
No query parameters required.

### Business Logic
- **Level-based delay system:** Companies see orders based on their level (1-10)
  - Level 10: Immediate (0 min delay)
  - Level 9: 1 min delay
  - Level 8: 2 min delay
  - ...
  - Level 1: 9 min delay
- **Distance filter:** Only shows orders within 100km of company location
- **Shows if applied:** Indicates whether your company already submitted an offer

### Response Structure
```json
{
  "message": "Found 5 pending order requests within 100km.",
  "orders": [
    {
      "id": "order-uuid-1",
      "orderNumber": "ORD-2026-001234",
      "customerId": "customer-uuid",
      "customerName": "أحمد محمد",
      "customerPhone": "+966501234567",
      "containerType": "دباب",
      "containerSize": "10 متر",
      "deliveryLocation": {
        "latitude": 24.7136,
        "longitude": 46.6753,
        "address": "الرياض، حي النرجس"
      },
      "deliveryDate": "2026-01-20T10:00:00.000Z",
      "rentalType": "once",
      "status": "pending_offers",
      "createdAt": "2026-01-17T08:30:00.000Z",
      "applied": false,
      "distance": 15.3
    },
    {
      "id": "order-uuid-2",
      "orderNumber": "ORD-2026-001235",
      "customerId": "customer-uuid-2",
      "customerName": "فاطمة علي",
      "customerPhone": "+966507654321",
      "containerType": "صهريج",
      "containerSize": "5000 لتر",
      "deliveryLocation": {
        "latitude": 24.6877,
        "longitude": 46.7219,
        "address": "الرياض، حي العليا"
      },
      "deliveryDate": "2026-01-21T14:00:00.000Z",
      "rentalType": "monthly",
      "status": "pending_offers",
      "createdAt": "2026-01-17T09:15:00.000Z",
      "applied": true,
      "distance": 8.7
    }
  ]
}
```

**Key Fields:**
- `applied`: Boolean indicating if your company submitted an offer
- `distance`: Distance in km from your company to delivery location
- `rentalType`: "once", "monthly", or "annual"

---

## 💰 API 2: Submit Offer

### Endpoint
```
POST /api/company/offers
```

### Request Body
```json
{
  "globalOrderId": "order-uuid-1",
  "price": 800,
  "rentalDuration": 7
}
```

**Fields:**
- `globalOrderId` (string, required): Order ID
- `price` (number, required): Base price (before commission & VAT)
- `rentalDuration` (number, required for "once" type): Number of days (ignored for monthly/annual)

### Business Logic
- **Automatic availability check:** System checks if you have available containers for the rental period
- **Automatic pricing calculation:**
  ```
  Base Price: 800 SAR
  + Commission (e.g., 10%): 80 SAR
  = Subtotal: 880 SAR
  + VAT (15%): 132 SAR
  = Total Price: 1012 SAR
  ```
- **Container reservation:** First available container is automatically picked

### Response Structure
```json
{
  "message": "Offer submitted.",
  "offer": {
    "id": "offer-uuid",
    "globalOrderId": "order-uuid-1",
    "companyId": "company-uuid",
    "containerId": "container-uuid",
    "price": 800,
    "totalPrice": 1012,
    "commissionAmount": 80,
    "vatAmount": 132,
    "rentalDuration": 7,
    "status": "pending",
    "createdAt": "2026-01-17T10:00:00.000Z"
  }
}
```

### Error Responses
```json
// No available containers
{
  "message": "No available containers for the requested dates."
}

// Missing rental duration for "once" type
{
  "message": "Missing required offer details."
}

// No containers of type/size
{
  "message": "No containers of the required type/size found."
}
```

---

## ✅ API 3: Get Accepted Orders

### Endpoint
```
GET /api/company/orders/accepted
```

### Request
No query parameters required.

### Business Logic
- Returns all orders where your company's offer was accepted by the customer
- Excludes completed and cancelled orders
- Shows current driver assignment status

### Response Structure
```json
{
  "message": "Found 3 accepted order requests.",
  "orders": [
    {
      "id": "company-order-uuid-1",
      "globalOrderId": "global-order-uuid",
      "orderNumber": "ORD-2026-001234",
      "containerType": "دباب",
      "containerSize": "10 متر",
      "status": "pending",
      "deliveryDate": "2026-01-20T10:00:00.000Z",
      "deliveryLocation": {
        "latitude": 24.7136,
        "longitude": 46.6753,
        "address": "الرياض، حي النرجس"
      },
      "driverId": null,
      "Driver": null,
      "Container": {
        "type": "دباب",
        "size": "10 متر",
        "containerNumber": "CNT-001"
      },
      "createdAt": "2026-01-17T10:30:00.000Z",
      "updatedAt": "2026-01-17T10:30:00.000Z"
    },
    {
      "id": "company-order-uuid-2",
      "globalOrderId": "global-order-uuid-2",
      "orderNumber": "ORD-2026-001235",
      "containerType": "صهريج",
      "containerSize": "5000 لتر",
      "status": "in_transit",
      "deliveryDate": "2026-01-19T14:00:00.000Z",
      "deliveryLocation": {
        "latitude": 24.6877,
        "longitude": 46.7219,
        "address": "الرياض، حي العليا"
      },
      "driverId": "driver-uuid-1",
      "Driver": {
        "id": "driver-uuid-1",
        "licenseNumber": "LIC-12345",
        "vehicleType": "شاحنة",
        "user": {
          "name": "خالد السعيد"
        }
      },
      "Container": {
        "type": "صهريج",
        "size": "5000 لتر",
        "containerNumber": "CNT-045"
      },
      "createdAt": "2026-01-18T08:00:00.000Z",
      "updatedAt": "2026-01-19T09:30:00.000Z"
    }
  ]
}
```

**Status Values:**
- `pending`: Accepted but no driver assigned yet
- `in_transit`: Driver on the way
- `delivered`: Container delivered to customer

---

## 👨‍✈️ API 4: Assign Driver to Order

### Endpoint
```
PATCH /api/company/orders/{orderId}/assign-driver
```

### Request Body
```json
{
  "driverId": "driver-uuid-1"
}
```

### Business Logic
- **Supports reassignment:** Can change driver even if one already assigned
- **Automatic notifications:**
  - Customer: "Driver assigned/changed"
  - New driver: "You've been assigned to order"
  - Previous driver (if reassignment): "You've been unassigned"

### Response Structure
```json
{
  "message": "Driver assigned successfully.",
  "order": {
    "id": "company-order-uuid-1",
    "globalOrderId": "global-order-uuid",
    "driverId": "driver-uuid-1",
    "status": "pending",
    "updatedAt": "2026-01-17T11:00:00.000Z"
  }
}
```

---

## 📦 API 5: Get Sub-orders (Unload/Return Requests)

### Endpoint
```
GET /api/company/orders/sub-orders
```

### Request
No query parameters required.

### Business Logic
- Sub-orders are created when customer requests:
  - **Unload:** Empty the container (for waste removal)
  - **Return:** Pick up the container (end of rental)

### Response Structure
```json
{
  "message": "Found 2 pending sub-order requests.",
  "subOrders": [
    {
      "id": "sub-order-uuid-1",
      "orderId": "company-order-uuid",
      "type": "unload",
      "status": "pending",
      "requestedDate": "2026-01-22T10:00:00.000Z",
      "driverId": null,
      "Driver": null,
      "Order": {
        "id": "company-order-uuid",
        "globalOrderId": "global-order-uuid",
        "deliveryLocation": {
          "latitude": 24.7136,
          "longitude": 46.6753,
          "address": "الرياض، حي النرجس"
        },
        "Container": {
          "type": "دباب",
          "size": "10 متر",
          "containerNumber": "CNT-001"
        }
      },
      "createdAt": "2026-01-21T15:30:00.000Z"
    },
    {
      "id": "sub-order-uuid-2",
      "orderId": "company-order-uuid-2",
      "type": "return",
      "status": "scheduled",
      "requestedDate": "2026-01-25T14:00:00.000Z",
      "driverId": "driver-uuid-2",
      "Driver": {
        "id": "driver-uuid-2",
        "licenseNumber": "LIC-67890",
        "user": {
          "name": "عبدالله أحمد"
        }
      },
      "Order": {
        "id": "company-order-uuid-2",
        "globalOrderId": "global-order-uuid-2",
        "deliveryLocation": {
          "latitude": 24.6877,
          "longitude": 46.7219,
          "address": "الرياض، حي العليا"
        },
        "Container": {
          "type": "صهريج",
          "size": "5000 لتر",
          "containerNumber": "CNT-045"
        }
      },
      "createdAt": "2026-01-20T12:00:00.000Z"
    }
  ]
}
```

**Type Values:**
- `unload`: Customer requests to empty the container
- `return`: Customer requests to return the container

**Status Values:**
- `pending`: Waiting for driver assignment
- `scheduled`: Driver assigned
- `in_progress`: Driver on the way
- `completed`: Sub-order completed

---

## 👨‍✈️ API 6: Assign Driver to Sub-order

### Endpoint
```
PATCH /api/company/sub-orders/{subOrderId}/assign-driver
```

### Request Body
```json
{
  "driverId": "driver-uuid-2",
  "deliveryDate": "2026-01-25T14:00:00.000Z"
}
```

### Response Structure
```json
{
  "message": "Driver driver-uuid-2 assigned to sub-order sub-order-uuid-1 successfully.",
  "subOrder": {
    "id": "sub-order-uuid-1",
    "orderId": "company-order-uuid",
    "type": "unload",
    "status": "scheduled",
    "driverId": "driver-uuid-2",
    "driverName": "عبدالله أحمد",
    "requestedDate": "2026-01-25T14:00:00.000Z"
  }
}
```

---

## ✅ API 7: Get Completed Orders

### Endpoint
```
GET /api/company/orders/completed
```

### Request
Query parameters for filtering (all optional):
```
?containerType=دباب&containerSize=10 متر&startDate=2026-01-01&endDate=2026-01-31
```

### Response Structure
```json
{
  "success": true,
  "data": {
    "orders": [
      {
        "id": "company-order-uuid",
        "globalOrderId": "global-order-uuid",
        "orderNumber": "ORD-2026-001200",
        "containerType": "دباب",
        "containerSize": "10 متر",
        "status": "completed",
        "deliveryDate": "2026-01-15T10:00:00.000Z",
        "completedAt": "2026-01-22T16:30:00.000Z",
        "totalPrice": 1012,
        "Driver": {
          "user": {
            "name": "خالد السعيد"
          }
        },
        "Container": {
          "containerNumber": "CNT-001"
        }
      }
    ],
    "pagination": {
      "total": 45,
      "page": 1,
      "limit": 20,
      "pages": 3
    }
  }
}
```

---

## ❌ API 8: Get Cancelled Orders

### Endpoint
```
GET /api/company/orders/cancelled
```

### Response Structure
Similar to completed orders, but with `status: "cancelled"` and cancellation reason.

```json
{
  "message": "Found 2 cancelled orders.",
  "orders": [
    {
      "id": "company-order-uuid",
      "orderNumber": "ORD-2026-001150",
      "status": "cancelled",
      "cancellationReason": "العميل ألغى الطلب",
      "cancelledAt": "2026-01-16T12:00:00.000Z"
    }
  ]
}
```

---

## 🎨 Flutter Models (Freezed)

### Main Order Model

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_order.freezed.dart';
part 'company_order.g.dart';

// ==================== Pending Order (Global Order) ====================

@freezed
class PendingOrder with _$PendingOrder {
  const factory PendingOrder({
    required String id,
    required String orderNumber,
    required String customerId,
    String? customerName,
    String? customerPhone,
    required String containerType,
    required String containerSize,
    required DeliveryLocation deliveryLocation,
    required DateTime deliveryDate,
    required String rentalType, // once, monthly, annual
    required String status,
    required DateTime createdAt,
    required bool applied, // Has your company submitted offer?
    required double distance, // Distance in km
  }) = _PendingOrder;

  factory PendingOrder.fromJson(Map<String, dynamic> json) =>
      _$PendingOrderFromJson(json);
}

// ==================== Delivery Location ====================

@freezed
class DeliveryLocation with _$DeliveryLocation {
  const factory DeliveryLocation({
    required double latitude,
    required double longitude,
    String? address,
  }) = _DeliveryLocation;

  factory DeliveryLocation.fromJson(Map<String, dynamic> json) {
    // Handle different JSON field names (lat/latitude, lng/lon/longitude)
    final lat = json['latitude'] ?? json['lat'];
    final lon = json['longitude'] ?? json['lng'] ?? json['lon'];
    
    return DeliveryLocation(
      latitude: (lat is num) ? lat.toDouble() : double.parse(lat.toString()),
      longitude: (lon is num) ? lon.toDouble() : double.parse(lon.toString()),
      address: json['address'],
    );
  }
}

// ==================== Accepted Order (Company Order) ====================

@freezed
class AcceptedOrder with _$AcceptedOrder {
  const factory AcceptedOrder({
    required String id,
    required String globalOrderId,
    required String orderNumber,
    required String containerType,
    required String containerSize,
    required String status, // pending, in_transit, delivered
    required DateTime deliveryDate,
    required DeliveryLocation deliveryLocation,
    String? driverId,
    DriverInfo? driver,
    required ContainerInfo container,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AcceptedOrder;

  factory AcceptedOrder.fromJson(Map<String, dynamic> json) {
    // Handle nested Driver object
    final driverJson = json['Driver'];
    
    return AcceptedOrder(
      id: json['id'],
      globalOrderId: json['globalOrderId'],
      orderNumber: json['orderNumber'],
      containerType: json['containerType'],
      containerSize: json['containerSize'],
      status: json['status'],
      deliveryDate: DateTime.parse(json['deliveryDate']),
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      driverId: json['driverId'],
      driver: driverJson != null ? DriverInfo.fromJson(driverJson) : null,
      container: ContainerInfo.fromJson(json['Container']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

// ==================== Driver Info ====================

@freezed
class DriverInfo with _$DriverInfo {
  const factory DriverInfo({
    required String id,
    String? licenseNumber,
    String? vehicleType,
    required DriverUser user,
  }) = _DriverInfo;

  factory DriverInfo.fromJson(Map<String, dynamic> json) =>
      _$DriverInfoFromJson(json);
}

@freezed
class DriverUser with _$DriverUser {
  const factory DriverUser({
    required String name,
  }) = _DriverUser;

  factory DriverUser.fromJson(Map<String, dynamic> json) =>
      _$DriverUserFromJson(json);
}

// ==================== Container Info ====================

@freezed
class ContainerInfo with _$ContainerInfo {
  const factory ContainerInfo({
    required String type,
    required String size,
    String? containerNumber,
  }) = _ContainerInfo;

  factory ContainerInfo.fromJson(Map<String, dynamic> json) =>
      _$ContainerInfoFromJson(json);
}

// ==================== Sub-order ====================

@freezed
class SubOrder with _$SubOrder {
  const factory SubOrder({
    required String id,
    required String orderId,
    required String type, // unload, return
    required String status, // pending, scheduled, in_progress, completed
    DateTime? requestedDate,
    String? driverId,
    DriverInfo? driver,
    required SubOrderMainOrder order,
    required DateTime createdAt,
  }) = _SubOrder;

  factory SubOrder.fromJson(Map<String, dynamic> json) {
    final driverJson = json['Driver'];
    
    return SubOrder(
      id: json['id'],
      orderId: json['orderId'],
      type: json['type'],
      status: json['status'],
      requestedDate: json['requestedDate'] != null 
          ? DateTime.parse(json['requestedDate']) 
          : null,
      driverId: json['driverId'],
      driver: driverJson != null ? DriverInfo.fromJson(driverJson) : null,
      order: SubOrderMainOrder.fromJson(json['Order']),
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}

@freezed
class SubOrderMainOrder with _$SubOrderMainOrder {
  const factory SubOrderMainOrder({
    required String id,
    required String globalOrderId,
    required DeliveryLocation deliveryLocation,
    required ContainerInfo container,
  }) = _SubOrderMainOrder;

  factory SubOrderMainOrder.fromJson(Map<String, dynamic> json) {
    return SubOrderMainOrder(
      id: json['id'],
      globalOrderId: json['globalOrderId'],
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      container: ContainerInfo.fromJson(json['Container']),
    );
  }
}

// ==================== Offer Request/Response ====================

@freezed
class SubmitOfferRequest with _$SubmitOfferRequest {
  const factory SubmitOfferRequest({
    required String globalOrderId,
    required double price,
    int? rentalDuration, // Required for "once" type
  }) = _SubmitOfferRequest;

  factory SubmitOfferRequest.fromJson(Map<String, dynamic> json) =>
      _$SubmitOfferRequestFromJson(json);
}

@freezed
class OfferResponse with _$OfferResponse {
  const factory OfferResponse({
    required String message,
    required OfferDetails offer,
  }) = _OfferResponse;

  factory OfferResponse.fromJson(Map<String, dynamic> json) =>
      _$OfferResponseFromJson(json);
}

@freezed
class OfferDetails with _$OfferDetails {
  const factory OfferDetails({
    required String id,
    required String globalOrderId,
    required String companyId,
    required String containerId,
    required double price,
    required double totalPrice,
    required double commissionAmount,
    required double vatAmount,
    required int rentalDuration,
    required String status,
    required DateTime createdAt,
  }) = _OfferDetails;

  factory OfferDetails.fromJson(Map<String, dynamic> json) =>
      _$OfferDetailsFromJson(json);
}

// ==================== Assign Driver Request ====================

@freezed
class AssignDriverRequest with _$AssignDriverRequest {
  const factory AssignDriverRequest({
    required String driverId,
  }) = _AssignDriverRequest;

  factory AssignDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignDriverRequestFromJson(json);
}

// ==================== Enums ====================

enum OrderStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('in_transit')
  inTransit,
  @JsonValue('delivered')
  delivered,
  @JsonValue('completed')
  completed,
  @JsonValue('cancelled')
  cancelled;

  String get displayName {
    switch (this) {
      case OrderStatus.pending:
        return 'قيد الانتظار';
      case OrderStatus.inTransit:
        return 'في الطريق';
      case OrderStatus.delivered:
        return 'تم التوصيل';
      case OrderStatus.completed:
        return 'مكتمل';
      case OrderStatus.cancelled:
        return 'ملغي';
    }
  }

  String get colorHex {
    switch (this) {
      case OrderStatus.pending:
        return '#FFC107'; // Amber
      case OrderStatus.inTransit:
        return '#2196F3'; // Blue
      case OrderStatus.delivered:
        return '#4CAF50'; // Green
      case OrderStatus.completed:
        return '#9C27B0'; // Purple
      case OrderStatus.cancelled:
        return '#F44336'; // Red
    }
  }
}

enum RentalType {
  @JsonValue('once')
  once,
  @JsonValue('monthly')
  monthly,
  @JsonValue('annual')
  annual;

  String get displayName {
    switch (this) {
      case RentalType.once:
        return 'لمرة واحدة';
      case RentalType.monthly:
        return 'شهري';
      case RentalType.annual:
        return 'سنوي';
    }
  }
}

enum SubOrderType {
  @JsonValue('unload')
  unload,
  @JsonValue('return')
  returnContainer;

  String get displayName {
    switch (this) {
      case SubOrderType.unload:
        return 'تفريغ';
      case SubOrderType.returnContainer:
        return 'إرجاع';
    }
  }

  String get icon {
    switch (this) {
      case SubOrderType.unload:
        return '🗑️';
      case SubOrderType.returnContainer:
        return '↩️';
    }
  }
}
```

---

## 🎨 UI/UX Guidance for Flutter AI Agent

### 1. **Pending Orders Screen** 🔍

**Purpose:** Browse available orders and submit offers

**Layout:**
```
┌─────────────────────────────────────┐
│  AppBar: "الطلبات المتاحة"           │
│  [Filter] [Sort by Distance]        │
├─────────────────────────────────────┤
│                                     │
│  📦 Order Card                       │
│  ┌──────────────────────────────┐   │
│  │ ORD-2026-001234   [15.3 km] │   │
│  │ دباب - 10 متر                │   │
│  │ 📍 الرياض، حي النرجس          │   │
│  │ 📅 20 يناير 2026              │   │
│  │ 👤 أحمد محمد                  │   │
│  │                               │   │
│  │ [✓ مقدم عرض] أو [تقديم عرض]  │   │
│  └──────────────────────────────┘   │
│                                     │
│  📦 Order Card                       │
│  ┌──────────────────────────────┐   │
│  │ ORD-2026-001235   [8.7 km]  │   │
│  │ ...                          │   │
│  └──────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

**Components:**
- **Distance Badge:** Show km in green if < 20km, yellow if < 50km, red if > 50km
- **Applied Status:** Disable "Submit Offer" button if `applied: true`
- **Sort Options:** 
  - By distance (closest first) ← Default
  - By delivery date (earliest first)
  - By container type
- **Filter Options:**
  - Container type dropdown
  - Container size dropdown
  - Distance slider (0-100km)
  - Rental type (once/monthly/annual)

**Tap Behavior:**
- Tap card → Navigate to "Order Details Screen"
- Tap "Submit Offer" → Open "Submit Offer Dialog"

---

### 2. **Submit Offer Dialog** 💰

**Layout:**
```
┌─────────────────────────────────────┐
│  تقديم عرض                          │
├─────────────────────────────────────┤
│  Order: ORD-2026-001234             │
│  دباب - 10 متر                      │
│  📅 Delivery: 20 يناير 2026          │
│                                     │
│  [نوع الإيجار: لمرة واحدة]          │
│                                     │
│  💵 Base Price (SAR)                │
│  ┌─────────────────────────────┐   │
│  │ 800                         │   │
│  └─────────────────────────────┘   │
│                                     │
│  📆 Rental Duration (days)          │
│  ┌─────────────────────────────┐   │
│  │ 7                           │   │
│  └─────────────────────────────┘   │
│  ⚠️ Required for "once" type        │
│                                     │
│  ─────────────────────────────────  │
│  Pricing Breakdown:                 │
│  Base Price:        800 SAR        │
│  Commission (10%):   80 SAR        │
│  Subtotal:          880 SAR        │
│  VAT (15%):         132 SAR        │
│  ─────────────────────────────────  │
│  Total Price:      1012 SAR        │
│                                     │
│  [Cancel]        [Submit Offer]    │
└─────────────────────────────────────┘
```

**Behavior:**
- **Auto-calculate:** Update total price as user types base price
- **Validation:**
  - Base price > 0
  - Rental duration required if type is "once"
  - Rental duration between 1-365 days
- **Loading State:** Show spinner during API call
- **Success:** Close dialog, show snackbar "✅ تم تقديم العرض بنجاح", navigate back to pending orders
- **Error:** Show error message below form

---

### 3. **Accepted Orders Screen** ✅

**Purpose:** View orders where your offer was accepted and assign drivers

**Layout:**
```
┌─────────────────────────────────────┐
│  AppBar: "الطلبات المقبولة"          │
│  [Tab: بدون سائق] [Tab: مع سائق]     │
├─────────────────────────────────────┤
│  [Tab Content: بدون سائق]            │
│                                     │
│  📦 Order Card (Urgent)              │
│  ┌──────────────────────────────┐   │
│  │ ⚠️ ORD-2026-001234            │   │
│  │ دباب - 10 متر                │   │
│  │ 📍 الرياض، حي النرجس          │   │
│  │ 📅 20 يناير - 27 يناير        │   │
│  │ 🚛 CNT-001                    │   │
│  │                               │   │
│  │ [تعيين سائق]                  │   │
│  └──────────────────────────────┘   │
│                                     │
│  [Tab Content: مع سائق]              │
│                                     │
│  📦 Order Card (In Progress)         │
│  ┌──────────────────────────────┐   │
│  │ 🔵 ORD-2026-001235            │   │
│  │ صهريج - 5000 لتر             │   │
│  │ 📍 الرياض، حي العليا          │   │
│  │ 📅 19 يناير                   │   │
│  │ 👨‍✈️ خالد السعيد               │   │
│  │ Status: في الطريق             │   │
│  │                               │   │
│  │ [تغيير السائق] [تتبع]         │   │
│  └──────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

**Tabs:**
- **بدون سائق (No Driver):** Orders with `driverId: null` → Show "Assign Driver" button
- **مع سائق (With Driver):** Orders with driver assigned → Show driver name and status

**Components:**
- **Status Indicator:**
  - 🟡 Pending (no driver)
  - 🔵 In Transit
  - 🟢 Delivered
- **Urgent Badge:** If delivery date is < 24 hours away, show ⚠️
- **Actions:**
  - "تعيين سائق" → Open driver selection dialog
  - "تغيير السائق" → Open driver reassignment dialog
  - "تتبع" → Open map screen (if driver started delivery)

---

### 4. **Assign Driver Dialog** 👨‍✈️

**Layout:**
```
┌─────────────────────────────────────┐
│  تعيين سائق                         │
├─────────────────────────────────────┤
│  Order: ORD-2026-001234             │
│  📅 Delivery: 20 يناير 2026          │
│                                     │
│  [Search Drivers...]                │
│                                     │
│  ☑️ خالد السعيد                     │
│     License: LIC-12345              │
│     Vehicle: شاحنة                  │
│     Available: ✅                    │
│                                     │
│  ☐ عبدالله أحمد                     │
│     License: LIC-67890              │
│     Vehicle: شاحنة                  │
│     Available: ⚠️ 2 orders pending  │
│                                     │
│  ☐ محمد علي                         │
│     License: LIC-11111              │
│     Vehicle: شاحنة                  │
│     Available: ❌ On delivery       │
│                                     │
│  [Cancel]        [تعيين]            │
└─────────────────────────────────────┘
```

**Behavior:**
- **Fetch Drivers:** Call `/api/company/drivers` to get list
- **Show Availability:** Calculate based on driver's pending orders
- **Search:** Filter drivers by name
- **Confirmation:** Show dialog "هل تريد تعيين خالد السعيد لهذا الطلب?"
- **Success:** Close dialog, refresh accepted orders, show snackbar "✅ تم تعيين السائق"

---

### 5. **Sub-orders Screen** 📦

**Purpose:** Manage unload and return requests

**Layout:**
```
┌─────────────────────────────────────┐
│  AppBar: "الطلبات الفرعية"           │
│  [Tab: تفريغ] [Tab: إرجاع]          │
├─────────────────────────────────────┤
│  [Tab Content: تفريغ]                │
│                                     │
│  🗑️ Sub-order Card                  │
│  ┌──────────────────────────────┐   │
│  │ تفريغ - CNT-001              │   │
│  │ دباب - 10 متر                │   │
│  │ 📍 الرياض، حي النرجس          │   │
│  │ 📅 Requested: 22 يناير        │   │
│  │ Status: ⏳ قيد الانتظار        │   │
│  │                               │   │
│  │ [تعيين سائق]                  │   │
│  └──────────────────────────────┘   │
│                                     │
│  [Tab Content: إرجاع]                │
│                                     │
│  ↩️ Sub-order Card                  │
│  ┌──────────────────────────────┐   │
│  │ إرجاع - CNT-045              │   │
│  │ صهريج - 5000 لتر             │   │
│  │ 📍 الرياض، حي العليا          │   │
│  │ 📅 Scheduled: 25 يناير        │   │
│  │ 👨‍✈️ عبدالله أحمد               │   │
│  │ Status: ✅ مجدول               │   │
│  │                               │   │
│  │ [تتبع]                        │   │
│  └──────────────────────────────┘   │
│                                     │
└─────────────────────────────────────┘
```

**Status Colors:**
- ⏳ Pending (Yellow)
- ✅ Scheduled (Green)
- 🔵 In Progress (Blue)
- ✔️ Completed (Purple)

---

### 6. **Completed Orders Screen** ✔️

**Purpose:** View order history with filters

**Layout:**
```
┌─────────────────────────────────────┐
│  AppBar: "الطلبات المكتملة"          │
│  [Filter] [Date Range]              │
├─────────────────────────────────────┤
│  Showing 45 completed orders        │
│                                     │
│  ✔️ Order Card                      │
│  ┌──────────────────────────────┐   │
│  │ ORD-2026-001200              │   │
│  │ دباب - 10 متر                │   │
│  │ 📅 15 - 22 يناير             │   │
│  │ 👨‍✈️ خالد السعيد               │   │
│  │ 💰 1012 SAR                  │   │
│  │                               │   │
│  │ [View Details]                │   │
│  └──────────────────────────────┘   │
│                                     │
│  [Load More]                        │
└─────────────────────────────────────┘
```

**Filters:**
- Date range picker
- Container type
- Container size
- Sort by date (newest/oldest)
- Export to CSV option

---

## 🎨 Additional UI Components

### Order Detail Screen

**Should include:**
- Order header (number, status)
- Customer info (name, phone, location on mini map)
- Container details (type, size, number)
- Rental info (type, duration, dates)
- Pricing breakdown (if your offer accepted)
- Timeline (created → offered → accepted → assigned → delivered)
- Driver info (if assigned)
- Action buttons based on status

### Bottom Navigation

```
┌─────────────────────────────────────┐
│  [🏠 Home] [🔍 Pending] [✅ Active]  │
│  [📦 Sub-orders] [👤 Profile]        │
└─────────────────────────────────────┘
```

### Pull-to-Refresh

All list screens should support pull-to-refresh gesture.

### Empty States

Show friendly empty states with:
- Icon
- Message (e.g., "لا توجد طلبات متاحة حالياً")
- Retry button (if error)

---

## 🔔 Real-time Updates

**Integration Points:**

1. **WebSocket Notifications:**
   - New order available → Refresh pending orders
   - Offer accepted → Move to accepted orders
   - Driver status changed → Update order status

2. **Local Notifications:**
   - "طلب جديد متاح بالقرب منك (5 km)"
   - "تم قبول عرضك - ORD-2026-001234"
   - "طلب تفريغ جديد - CNT-001"

---

## 📊 Dashboard Summary (Home Screen)

Show quick stats:
```
┌─────────────────────────────────────┐
│  📊 Dashboard                        │
├─────────────────────────────────────┤
│  ┌──────────┐ ┌──────────┐          │
│  │ 5        │ │ 3        │          │
│  │ Pending  │ │ Active   │          │
│  └──────────┘ └──────────┘          │
│                                     │
│  ┌──────────┐ ┌──────────┐          │
│  │ 2        │ │ 45       │          │
│  │ Sub-order│ │Completed │          │
│  └──────────┘ └──────────┘          │
│                                     │
│  📈 Revenue This Month: 45,540 SAR  │
│                                     │
│  [View Full Dashboard]              │
└─────────────────────────────────────┘
```

---

## ✅ Implementation Checklist

**Phase 1: Pending Orders**
- [ ] Create pending orders screen
- [ ] Implement distance calculation display
- [ ] Add filter/sort functionality
- [ ] Create submit offer dialog
- [ ] Implement offer API call
- [ ] Handle success/error states

**Phase 2: Accepted Orders**
- [ ] Create accepted orders screen
- [ ] Implement tabs (with/without driver)
- [ ] Create driver selection dialog
- [ ] Implement assign driver API
- [ ] Add reassignment functionality
- [ ] Show order status updates

**Phase 3: Sub-orders**
- [ ] Create sub-orders screen
- [ ] Implement type tabs (unload/return)
- [ ] Add driver assignment for sub-orders
- [ ] Show sub-order status tracking

**Phase 4: History & Filters**
- [ ] Create completed orders screen
- [ ] Add filtering options
- [ ] Implement date range picker
- [ ] Create cancelled orders screen

**Phase 5: Real-time & Notifications**
- [ ] Integrate WebSocket notifications
- [ ] Add local notifications
- [ ] Implement pull-to-refresh
- [ ] Add auto-refresh on app resume

---

**Your backend APIs are complete and ready for Flutter integration!** 🚀
