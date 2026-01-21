import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'driver.dart';

part 'driver_details.freezed.dart';
part 'driver_details.g.dart';

@freezed
class DriverDetails with _$DriverDetails {
  const factory DriverDetails({
    required Driver driver,
    required DriverStatistics statistics,
    required List<DriverOrder> orders,
    DriverSummary? summary,
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
    required String id,
    required String truck,
    int? containerNumber,
    required String type,
    required String size,
    required String deliveryDate,
    required String status,
    String? customerName,
    String? customerPhone,
    DriverOrderLocation? deliveryLocation,
    String? orderType,
  }) = _DriverOrder;

  factory DriverOrder.fromJson(Map<String, dynamic> json) =>
      _$DriverOrderFromJson(json);
}

@freezed
class DriverOrderLocation with _$DriverOrderLocation {
  const factory DriverOrderLocation({
    String? address,
    String? cityName,
    required double latitude,
    required double longitude,
  }) = _DriverOrderLocation;

  factory DriverOrderLocation.fromJson(Map<String, dynamic> json) =>
      _$DriverOrderLocationFromJson(json);
}

@freezed
class DriverSummary with _$DriverSummary {
  const factory DriverSummary({
    required int totalOrders,
    required int totalSubOrders,
    required int totalAssignedOrders,
    required int completedOrders,
    required int pendingOrders,
  }) = _DriverSummary;

  factory DriverSummary.fromJson(Map<String, dynamic> json) =>
      _$DriverSummaryFromJson(json);
}

// Extension for order status UI
extension DriverOrderX on DriverOrder {
  String get statusLabel {
    switch (status) {
      case 'pending':
        return 'في الانتظار';
      case 'scheduled':
        return 'مجدولة';
      case 'in_transit':
        return 'يتم التوصيل';
      case 'delivered':
        return 'تم التوصيل';
      case 'pick_up_in_progress':
        return 'الالتقاط قيد التنفيذ';
      case 'picked_up':
        return 'التقطت';
      case 're_delivery_in_progress':
        return 'إعادة التسليم قيد التنفيذ';
      case 'completed':
        return 'مكتمل';
      case 'late':
        return 'متأخر';
      case 'canceled':
        return 'ملغي';
      default:
        return status;
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
