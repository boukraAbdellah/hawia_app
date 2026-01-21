import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_stats.freezed.dart';
part 'dashboard_stats.g.dart';

// Converter for handling int values that might come as String
class IntConverter implements JsonConverter<int, dynamic> {
  const IntConverter();

  @override
  int fromJson(dynamic value) {
    if (value is int) return value;
    if (value is String) return int.tryParse(value) ?? 0;
    if (value is double) return value.toInt();
    return 0;
  }

  @override
  dynamic toJson(int value) => value;
}

// Converter for handling double values that might come as String
class DoubleConverter implements JsonConverter<double, dynamic> {
  const DoubleConverter();

  @override
  double fromJson(dynamic value) {
    if (value is double) return value;
    if (value is int) return value.toDouble();
    if (value is String) return double.tryParse(value) ?? 0.0;
    return 0.0;
  }

  @override
  dynamic toJson(double value) => value;
}

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    required ContainerStats containerStats,
    required OrderStats orderStats,
    required DriverStats driverStats,
    required List<MonthlyData> monthlyData,
    required CurrentMonth currentMonth,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) =>
      _$DashboardStatsFromJson(json);
}

@freezed
class ContainerStats with _$ContainerStats {
  const factory ContainerStats({
    @IntConverter() required int total,
    @IntConverter() required int rented,
    @IntConverter() required int available,
  }) = _ContainerStats;

  factory ContainerStats.fromJson(Map<String, dynamic> json) =>
      _$ContainerStatsFromJson(json);
}

@freezed
class OrderStats with _$OrderStats {
  const factory OrderStats({
    @IntConverter() required int total,
    @IntConverter() required int pending,
    @IntConverter() required int completed,
  }) = _OrderStats;

  factory OrderStats.fromJson(Map<String, dynamic> json) =>
      _$OrderStatsFromJson(json);
}

@freezed
class DriverStats with _$DriverStats {
  const factory DriverStats({
    @IntConverter() required int total,
    @DoubleConverter() required double completionRate,
  }) = _DriverStats;

  factory DriverStats.fromJson(Map<String, dynamic> json) =>
      _$DriverStatsFromJson(json);
}

@freezed
class MonthlyData with _$MonthlyData {
  const factory MonthlyData({
    required String month,
    @IntConverter() required int requests,
    @DoubleConverter() required double revenue,
  }) = _MonthlyData;

  factory MonthlyData.fromJson(Map<String, dynamic> json) =>
      _$MonthlyDataFromJson(json);
}

@freezed
class CurrentMonth with _$CurrentMonth {
  const factory CurrentMonth({
    @IntConverter() required int orders,
    @DoubleConverter() required double revenue,
    required String month,
  }) = _CurrentMonth;

  factory CurrentMonth.fromJson(Map<String, dynamic> json) =>
      _$CurrentMonthFromJson(json);
}
