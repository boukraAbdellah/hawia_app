import 'package:freezed_annotation/freezed_annotation.dart';

part 'container_models.freezed.dart';
part 'container_models.g.dart';

// ==================== ID Converter ====================

/// Converts int or String to String for ID fields
class IdConverter implements JsonConverter<String, dynamic> {
  const IdConverter();

  @override
  String fromJson(dynamic json) {
    if (json == null) return '';
    if (json is String) return json;
    if (json is int) return json.toString();
    return json.toString();
  }

  @override
  dynamic toJson(String object) => object;
}

/// Converts list of dynamic IDs to List<String>
class IdListConverter implements JsonConverter<List<String>, List<dynamic>> {
  const IdListConverter();

  @override
  List<String> fromJson(List<dynamic> json) {
    return json.map((e) {
      if (e == null) return '';
      if (e is String) return e;
      if (e is int) return e.toString();
      return e.toString();
    }).toList();
  }

  @override
  List<dynamic> toJson(List<String> object) => object;
}

// ==================== Container Summary Response ====================

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

// ==================== Container Details Response ====================

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
    @IdConverter() required String id,
    required String type,
    required String size,
    @IdConverter() String? containerNumber,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Container;

  factory Container.fromJson(Map<String, dynamic> json) =>
      _$ContainerFromJson(json);
}

// ==================== Container Type Response ====================

@freezed
class ContainerTypesResponse with _$ContainerTypesResponse {
  const factory ContainerTypesResponse({
    required bool success,
    required List<ContainerType> data,
  }) = _ContainerTypesResponse;

  factory ContainerTypesResponse.fromJson(Map<String, dynamic> json) =>
      _$ContainerTypesResponseFromJson(json);
}

// ==================== Container Type ====================

@freezed
class ContainerType with _$ContainerType {
  const factory ContainerType({
    @IdConverter() required String id,
    required String name,
    String? description,
    required List<ContainerSize> sizes,
  }) = _ContainerType;

  factory ContainerType.fromJson(Map<String, dynamic> json) =>
      _$ContainerTypeFromJson(json);
}

// ==================== Container Size ====================

@freezed
class ContainerSize with _$ContainerSize {
  const factory ContainerSize({
    @IdConverter() required String id,
    required String size,
    String? imageUrl,
    String? priceRange,
  }) = _ContainerSize;

  factory ContainerSize.fromJson(Map<String, dynamic> json) =>
      _$ContainerSizeFromJson(json);
}

// ==================== Add Containers Request ====================

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

// ==================== Add Containers Response ====================

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

// ==================== Bulk Update Status Request ====================

@freezed
class BulkUpdateStatusRequest with _$BulkUpdateStatusRequest {
  const factory BulkUpdateStatusRequest({
    @IdListConverter() required List<String> containerIds,
    required String newStatus,
  }) = _BulkUpdateStatusRequest;

  factory BulkUpdateStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkUpdateStatusRequestFromJson(json);
}

// ==================== Bulk Update Status Response ====================

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

// ==================== Bulk Delete Request ====================

@freezed
class BulkDeleteContainersRequest with _$BulkDeleteContainersRequest {
  const factory BulkDeleteContainersRequest.byTypeSize({
    required String type,
    required String size,
    required int quantity,
  }) = _BulkDeleteByTypeSize;

  const factory BulkDeleteContainersRequest.byIds({
    @IdListConverter() required List<String> specificIds,
  }) = _BulkDeleteByIds;

  factory BulkDeleteContainersRequest.fromJson(Map<String, dynamic> json) =>
      _$BulkDeleteContainersRequestFromJson(json);
}

// ==================== Bulk Delete Response ====================

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

// ==================== Extensions ====================

extension ContainerX on Container {
  String get statusLabel {
    switch (status) {
      case 'available':
        return 'متاح';
      case 'reserved':
        return 'محجوز';
      case 'in_transit':
        return 'في الطريق';
      case 'rented':
        return 'مؤجر';
      case 'awaiting_pickup':
        return 'في انتظار الاستلام';
      case 'maintenance':
        return 'صيانة';
      default:
        return status;
    }
  }

  int get statusColorValue {
    switch (status) {
      case 'available':
        return 0xFF4CAF50; // Green
      case 'reserved':
        return 0xFF2196F3; // Blue
      case 'in_transit':
        return 0xFFFF9800; // Orange
      case 'rented':
        return 0xFF9C27B0; // Purple
      case 'awaiting_pickup':
        return 0xFFFFC107; // Amber
      case 'maintenance':
        return 0xFFF44336; // Red
      default:
        return 0xFF9E9E9E; // Grey
    }
  }
}

extension ContainerSummaryItemX on ContainerSummaryItem {
  double get rentedPercentage {
    if (total == 0) return 0.0;
    return (rented / total) * 100;
  }

  double get availablePercentage {
    if (total == 0) return 0.0;
    return (available / total) * 100;
  }

  bool get hasMaintenanceIssues => maintenance > 0;
}
