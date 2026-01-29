import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_models.freezed.dart';
part 'order_models.g.dart';

// ==================== JSON Converters ====================

class IdConverter implements JsonConverter<String, dynamic> {
  const IdConverter();

  @override
  String fromJson(dynamic json) {
    if (json is String) return json;
    if (json is int) return json.toString();
    return json.toString();
  }

  @override
  dynamic toJson(String object) => object;
}

class DoubleConverter implements JsonConverter<double, dynamic> {
  const DoubleConverter();

  @override
  double fromJson(dynamic json) {
    if (json is double) return json;
    if (json is int) return json.toDouble();
    if (json is String) return double.parse(json);
    return 0.0;
  }

  @override
  dynamic toJson(double object) => object;
}

// ==================== Delivery Location ====================

@freezed
class DeliveryLocation with _$DeliveryLocation {
  const factory DeliveryLocation({
    @DoubleConverter() required double latitude,
    @DoubleConverter() required double longitude,
    String? address,
    String? cityName,
  }) = _DeliveryLocation;

  factory DeliveryLocation.fromJson(Map<String, dynamic> json) =>
      _$DeliveryLocationFromJson(json);
}

// ==================== Pending Order (Global Order) ====================

@freezed
class PendingOrdersResponse with _$PendingOrdersResponse {
  const factory PendingOrdersResponse({
    required String message,
    required List<PendingOrder> orders,
  }) = _PendingOrdersResponse;

  factory PendingOrdersResponse.fromJson(Map<String, dynamic> json) {
    return PendingOrdersResponse(
      message: json['message'] as String,
      orders: (json['orders'] as List)
          .map((e) => PendingOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class PendingOrder with _$PendingOrder {
  const factory PendingOrder({
    @IdConverter() required String id,
    required String orderNumber,
    @IdConverter() required String customerId,
    String? customerName,
    String? customerPhone,
    required String containerType,
    required String containerSize,
    required DeliveryLocation deliveryLocation,
    required DateTime deliveryDate,
    required String rentalType, // once, monthly, annual
    int? rentalDuration, // Duration for 'once' type rentals
    int? unloadCount, // Number of unloads for monthly/yearly rentals
    required String status,
    required DateTime createdAt,
    required bool applied, // Has your company submitted offer?
    @DoubleConverter() required double distance, // Distance in km
  }) = _PendingOrder;

  factory PendingOrder.fromJson(Map<String, dynamic> json) =>
      _$PendingOrderFromJson(json);
}

// ==================== Driver Info ====================

@freezed
class DriverInfo with _$DriverInfo {
  const factory DriverInfo({
    @IdConverter() required String id,
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

  factory ContainerInfo.fromJson(Map<String, dynamic> json) {
    // Handle containerNumber as both int and string
    final containerNumValue = json['containerNumber'];
    final containerNumStr = containerNumValue != null
        ? (containerNumValue is int ? containerNumValue.toString() : containerNumValue as String?)
        : null;

    return ContainerInfo(
      type: json['type'] as String,
      size: json['size'] as String,
      containerNumber: containerNumStr,
    );
  }
}

// ==================== Accepted Order (Company Order) ====================

@freezed
class AcceptedOrdersResponse with _$AcceptedOrdersResponse {
  const factory AcceptedOrdersResponse({
    required String message,
    required List<AcceptedOrder> orders,
  }) = _AcceptedOrdersResponse;

  factory AcceptedOrdersResponse.fromJson(Map<String, dynamic> json) {
    return AcceptedOrdersResponse(
      message: json['message'] as String,
      orders: (json['orders'] as List)
          .map((e) => AcceptedOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class AcceptedOrder with _$AcceptedOrder {
  const factory AcceptedOrder({
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    required String orderNumber,
    required String containerType,
    required String containerSize,
    required String status, // pending, in_transit, delivered
    required DateTime deliveryDate,
    required DeliveryLocation deliveryLocation,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    required ContainerInfo container,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _AcceptedOrder;

  factory AcceptedOrder.fromJson(Map<String, dynamic> json) {
    // Handle nested Driver object (capital D from API)
    final driverJson = json['Driver'] ?? json['driver'];

    return AcceptedOrder(
      id: const IdConverter().fromJson(json['id']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      orderNumber: json['orderNumber'],
      containerType: json['containerType'],
      containerSize: json['containerSize'],
      status: json['status'],
      deliveryDate: DateTime.parse(json['deliveryDate']),
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      driverId: json['driverId'] != null
          ? const IdConverter().fromJson(json['driverId'])
          : null,
      driver: driverJson != null ? DriverInfo.fromJson(driverJson) : null,
      container: ContainerInfo.fromJson(json['Container']),
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}

// ==================== Sub-order Main Order ====================

@freezed
class SubOrderMainOrder with _$SubOrderMainOrder {
  const factory SubOrderMainOrder({
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    required DeliveryLocation deliveryLocation,
    ContainerInfo? container,
  }) = _SubOrderMainOrder;

  factory SubOrderMainOrder.fromJson(Map<String, dynamic> json) {
    final containerJson = json['Container'] ?? json['container'];
    return SubOrderMainOrder(
      id: const IdConverter().fromJson(json['id']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      container: containerJson != null ? ContainerInfo.fromJson(containerJson) : null,
    );
  }
}

// ==================== Sub-order ====================

@freezed
class SubOrdersResponse with _$SubOrdersResponse {
  const factory SubOrdersResponse({
    required String message,
    required List<SubOrder> subOrders,
  }) = _SubOrdersResponse;

  factory SubOrdersResponse.fromJson(Map<String, dynamic> json) {
    return SubOrdersResponse(
      message: json['message'] as String,
      subOrders: (json['subOrders'] as List)
          .map((e) => SubOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class SubOrder with _$SubOrder {
  const factory SubOrder({
    @IdConverter() required String id,
    @IdConverter() required String orderId,
    @IdConverter() required String globalOrderId,
    required String type, // unload, return
    required String status, // pending, scheduled, in_progress, completed
    required DateTime deliveryDate,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    required SubOrderMainOrder order,
    required DateTime createdAt,
  }) = _SubOrder;

  factory SubOrder.fromJson(Map<String, dynamic> json) {
    final driverJson = json['Driver'] ?? json['driver'];
    // Handle type as both int and string
    final typeValue = json['type'];
    final typeStr = typeValue is int ? typeValue.toString() : typeValue as String;

    return SubOrder(
      id: const IdConverter().fromJson(json['id']),
      orderId: const IdConverter().fromJson(json['orderId']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      type: typeStr,
      status: json['status'],
      deliveryDate: DateTime.parse(json['deliveryDate']),
      driverId: json['driverId'] != null
          ? const IdConverter().fromJson(json['driverId'])
          : null,
      driver: driverJson != null ? DriverInfo.fromJson(driverJson) : null,
      order: SubOrderMainOrder.fromJson(json['Order']),
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}

// ==================== Completed Order ====================

@freezed
class CompletedOrdersResponse with _$CompletedOrdersResponse {
  const factory CompletedOrdersResponse({
    required bool success,
    required String message,
    required List<CompletedOrder> orders,
    required PaginationInfo pagination,
    AvailableFilters? availableFilters,
  }) = _CompletedOrdersResponse;

  factory CompletedOrdersResponse.fromJson(Map<String, dynamic> json) {
    return CompletedOrdersResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      orders: (json['orders'] as List)
          .map((e) => CompletedOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: PaginationInfo.fromJson(json['pagination'] as Map<String, dynamic>),
      availableFilters: json['availableFilters'] != null
          ? AvailableFilters.fromJson(json['availableFilters'] as Map<String, dynamic>)
          : null,
    );
  }
}

@freezed
class AvailableFilters with _$AvailableFilters {
  const factory AvailableFilters({
    required List<String> cities,
    required List<String> containerTypes,
  }) = _AvailableFilters;

  factory AvailableFilters.fromJson(Map<String, dynamic> json) =>
      _$AvailableFiltersFromJson(json);
}

@freezed
class CompletedOrder with _$CompletedOrder {
  const factory CompletedOrder({
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    String? orderNumber,
    String? containerType,
    String? status,
    required DateTime deliveryDate,
    DateTime? completedAt,
    @DoubleConverter() required double totalPrice,
    required DeliveryLocation deliveryLocation,
    DriverInfo? driver,
    ContainerInfo? container,
  }) = _CompletedOrder;

  factory CompletedOrder.fromJson(Map<String, dynamic> json) {
    final driverJson = json['Driver'] ?? json['driver'];
    final containerJson = json['Container'] ?? json['container'];

    return CompletedOrder(
      id: const IdConverter().fromJson(json['id']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      orderNumber: json['orderNumber'],
      containerType: json['containerType'],
      status: json['status'],
      deliveryDate: DateTime.parse(json['deliveryDate']),
      completedAt: json['completedAt'] != null
          ? DateTime.parse(json['completedAt'])
          : null,
      totalPrice: const DoubleConverter().fromJson(json['totalPrice']),
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      driver: driverJson != null && driverJson is Map<String, dynamic> ? DriverInfo.fromJson(driverJson) : null,
      container: containerJson != null && containerJson is Map<String, dynamic> ? ContainerInfo.fromJson(containerJson) : null,
    );
  }
}

@freezed
class PaginationInfo with _$PaginationInfo {
  const factory PaginationInfo({
    required int totalOrders,
    required int currentPage,
    required int ordersPerPage,
    required int totalPages,
    required bool hasNextPage,
    required bool hasPrevPage,
  }) = _PaginationInfo;

  factory PaginationInfo.fromJson(Map<String, dynamic> json) =>
      _$PaginationInfoFromJson(json);
}

// ==================== Cancelled Order ====================

@freezed
class CancelledOrdersResponse with _$CancelledOrdersResponse {
  const factory CancelledOrdersResponse({
    required bool success,
    required String message,
    required List<CancelledOrder> orders,
  }) = _CancelledOrdersResponse;

  factory CancelledOrdersResponse.fromJson(Map<String, dynamic> json) {
    return CancelledOrdersResponse(
      success: json['success'] as bool,
      message: json['message'] as String,
      orders: (json['orders'] as List)
          .map((e) => CancelledOrder.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

@freezed
class CancelledOrder with _$CancelledOrder {
  const factory CancelledOrder({
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    required String orderNumber,
    String? containerType,
    required String status,
    required DateTime deliveryDate,
    @DoubleConverter() required double totalPrice,
    required DeliveryLocation deliveryLocation,
    String? cancellationReason,
    DateTime? cancelledAt,
    DriverInfo? driver,
    ContainerInfo? container,
  }) = _CancelledOrder;

  factory CancelledOrder.fromJson(Map<String, dynamic> json) {
    final driverJson = json['Driver'] ?? json['driver'];
    final containerJson = json['Container'] ?? json['container'];
    // Extract containerType from root or from Container object
    final containerType = json['containerType'] ?? 
        (containerJson != null && containerJson is Map<String, dynamic> ? containerJson['type'] : null);

    return CancelledOrder(
      id: const IdConverter().fromJson(json['id']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      orderNumber: json['orderNumber'],
      containerType: containerType,
      status: json['status'],
      deliveryDate: DateTime.parse(json['deliveryDate']),
      totalPrice: const DoubleConverter().fromJson(json['totalPrice']),
      deliveryLocation: DeliveryLocation.fromJson(json['deliveryLocation']),
      cancellationReason: json['cancellationReason'],
      cancelledAt: json['cancelledAt'] != null
          ? DateTime.parse(json['cancelledAt'])
          : null,
      driver: driverJson != null && driverJson is Map<String, dynamic> ? DriverInfo.fromJson(driverJson) : null,
      container: containerJson != null && containerJson is Map<String, dynamic> ? ContainerInfo.fromJson(containerJson) : null,
    );
  }
}

// ==================== Offer Request/Response ====================

@freezed
class SubmitOfferRequest with _$SubmitOfferRequest {
  const factory SubmitOfferRequest({
    required String globalOrderId,
    @DoubleConverter() required double price,
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
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    @IdConverter() required String companyId,
    @IdConverter() required String containerId,
    @DoubleConverter() required double price,
    @DoubleConverter() required double totalPrice,
    @DoubleConverter() required double commissionAmount,
    @DoubleConverter() required double vatAmount,
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

@freezed
class AssignDriverResponse with _$AssignDriverResponse {
  const factory AssignDriverResponse({
    required String message,
    required AssignedOrderInfo order,
  }) = _AssignDriverResponse;

  factory AssignDriverResponse.fromJson(Map<String, dynamic> json) =>
      _$AssignDriverResponseFromJson(json);
}

@freezed
class AssignedOrderInfo with _$AssignedOrderInfo {
  const factory AssignedOrderInfo({
    @IdConverter() required String id,
    @IdConverter() required String globalOrderId,
    @IdConverter() String? driverId,
    required String status,
    required DateTime updatedAt,
  }) = _AssignedOrderInfo;

  factory AssignedOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$AssignedOrderInfoFromJson(json);
}

// ==================== Assign Driver to Sub-order Request ====================

@freezed
class AssignSubOrderDriverRequest with _$AssignSubOrderDriverRequest {
  const factory AssignSubOrderDriverRequest({
    required String driverId,
    required DateTime deliveryDate,
  }) = _AssignSubOrderDriverRequest;

  factory AssignSubOrderDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignSubOrderDriverRequestFromJson(json);
}

@freezed
class AssignSubOrderDriverResponse with _$AssignSubOrderDriverResponse {
  const factory AssignSubOrderDriverResponse({
    required String message,
    required AssignedSubOrderInfo subOrder,
  }) = _AssignSubOrderDriverResponse;

  factory AssignSubOrderDriverResponse.fromJson(Map<String, dynamic> json) =>
      _$AssignSubOrderDriverResponseFromJson(json);
}

@freezed
class AssignedSubOrderInfo with _$AssignedSubOrderInfo {
  const factory AssignedSubOrderInfo({
    @IdConverter() required String id,
    @IdConverter() required String orderId,
    required String type,
    required String status,
    @IdConverter() String? driverId,
    String? driverName,
    DateTime? requestedDate,
  }) = _AssignedSubOrderInfo;

  factory AssignedSubOrderInfo.fromJson(Map<String, dynamic> json) =>
      _$AssignedSubOrderInfoFromJson(json);
}

// ==================== Extensions for Display ====================

extension PendingOrderExtension on PendingOrder {
  String get rentalTypeLabel {
    switch (rentalType) {
      case 'once':
        return 'لمرة واحدة';
      case 'monthly':
        return 'شهري';
      case 'annual':
        return 'سنوي';
      default:
        return rentalType;
    }
  }

  String get distanceLabel {
    return '${distance.toStringAsFixed(1)} كم';
  }

  int get distanceColorValue {
    if (distance < 20) return 0xFF4CAF50; // Green
    if (distance < 50) return 0xFFFFC107; // Yellow
    return 0xFFF44336; // Red
  }
}

extension OrderStatusExtension on String {
  String get statusLabel {
    switch (this) {
      case 'pending':
        return 'قيد الانتظار';
      case 'pending_offers':
        return 'بانتظار العروض';
      case 'in_transit':
        return 'في الطريق';
      case 'delivered':
        return 'تم التوصيل';
      case 'completed':
        return 'مكتمل';
      case 'cancelled':
        return 'ملغي';
      case 'scheduled':
        return 'مجدول';
      case 'in_progress':
        return 'قيد التنفيذ';
      default:
        return this;
    }
  }

  int get statusColorValue {
    switch (this) {
      case 'pending':
      case 'pending_offers':
        return 0xFFFFC107; // Amber
      case 'in_transit':
      case 'in_progress':
        return 0xFF2196F3; // Blue
      case 'delivered':
      case 'scheduled':
        return 0xFF4CAF50; // Green
      case 'completed':
        return 0xFF9C27B0; // Purple
      case 'cancelled':
        return 0xFFF44336; // Red
      default:
        return 0xFF757575; // Grey
    }
  }
}

extension SubOrderTypeExtension on String {
  String get subOrderTypeLabel {
    switch (this) {
      case 'unload':
        return 'تفريغ';
      case 'return':
        return 'إرجاع';
      default:
        return this;
    }
  }

  String get subOrderTypeIcon {
    switch (this) {
      case 'unload':
        return '🗑️';
      case 'return':
        return '↩️';
      default:
        return '📦';
    }
  }
}
