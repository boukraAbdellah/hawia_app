// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_stats.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DashboardStatsImpl _$$DashboardStatsImplFromJson(Map<String, dynamic> json) =>
    _$DashboardStatsImpl(
      containerStats: ContainerStats.fromJson(
        json['containerStats'] as Map<String, dynamic>,
      ),
      orderStats: OrderStats.fromJson(
        json['orderStats'] as Map<String, dynamic>,
      ),
      driverStats: DriverStats.fromJson(
        json['driverStats'] as Map<String, dynamic>,
      ),
      monthlyData:
          (json['monthlyData'] as List<dynamic>)
              .map((e) => MonthlyData.fromJson(e as Map<String, dynamic>))
              .toList(),
      currentMonth: CurrentMonth.fromJson(
        json['currentMonth'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$DashboardStatsImplToJson(
  _$DashboardStatsImpl instance,
) => <String, dynamic>{
  'containerStats': instance.containerStats,
  'orderStats': instance.orderStats,
  'driverStats': instance.driverStats,
  'monthlyData': instance.monthlyData,
  'currentMonth': instance.currentMonth,
};

_$ContainerStatsImpl _$$ContainerStatsImplFromJson(Map<String, dynamic> json) =>
    _$ContainerStatsImpl(
      total: const IntConverter().fromJson(json['total']),
      rented: const IntConverter().fromJson(json['rented']),
      available: const IntConverter().fromJson(json['available']),
    );

Map<String, dynamic> _$$ContainerStatsImplToJson(
  _$ContainerStatsImpl instance,
) => <String, dynamic>{
  'total': const IntConverter().toJson(instance.total),
  'rented': const IntConverter().toJson(instance.rented),
  'available': const IntConverter().toJson(instance.available),
};

_$OrderStatsImpl _$$OrderStatsImplFromJson(Map<String, dynamic> json) =>
    _$OrderStatsImpl(
      total: const IntConverter().fromJson(json['total']),
      pending: const IntConverter().fromJson(json['pending']),
      completed: const IntConverter().fromJson(json['completed']),
    );

Map<String, dynamic> _$$OrderStatsImplToJson(_$OrderStatsImpl instance) =>
    <String, dynamic>{
      'total': const IntConverter().toJson(instance.total),
      'pending': const IntConverter().toJson(instance.pending),
      'completed': const IntConverter().toJson(instance.completed),
    };

_$DriverStatsImpl _$$DriverStatsImplFromJson(Map<String, dynamic> json) =>
    _$DriverStatsImpl(
      total: const IntConverter().fromJson(json['total']),
      completionRate: const DoubleConverter().fromJson(json['completionRate']),
    );

Map<String, dynamic> _$$DriverStatsImplToJson(_$DriverStatsImpl instance) =>
    <String, dynamic>{
      'total': const IntConverter().toJson(instance.total),
      'completionRate': const DoubleConverter().toJson(instance.completionRate),
    };

_$MonthlyDataImpl _$$MonthlyDataImplFromJson(Map<String, dynamic> json) =>
    _$MonthlyDataImpl(
      month: json['month'] as String,
      requests: const IntConverter().fromJson(json['requests']),
      revenue: const DoubleConverter().fromJson(json['revenue']),
    );

Map<String, dynamic> _$$MonthlyDataImplToJson(_$MonthlyDataImpl instance) =>
    <String, dynamic>{
      'month': instance.month,
      'requests': const IntConverter().toJson(instance.requests),
      'revenue': const DoubleConverter().toJson(instance.revenue),
    };

_$CurrentMonthImpl _$$CurrentMonthImplFromJson(Map<String, dynamic> json) =>
    _$CurrentMonthImpl(
      orders: const IntConverter().fromJson(json['orders']),
      revenue: const DoubleConverter().fromJson(json['revenue']),
      month: json['month'] as String,
    );

Map<String, dynamic> _$$CurrentMonthImplToJson(_$CurrentMonthImpl instance) =>
    <String, dynamic>{
      'orders': const IntConverter().toJson(instance.orders),
      'revenue': const DoubleConverter().toJson(instance.revenue),
      'month': instance.month,
    };
