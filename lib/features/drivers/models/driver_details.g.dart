// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DriverDetailsImpl _$$DriverDetailsImplFromJson(Map<String, dynamic> json) =>
    _$DriverDetailsImpl(
      driver: Driver.fromJson(json['driver'] as Map<String, dynamic>),
      statistics: DriverStatistics.fromJson(
        json['statistics'] as Map<String, dynamic>,
      ),
      orders:
          (json['orders'] as List<dynamic>)
              .map((e) => DriverOrder.fromJson(e as Map<String, dynamic>))
              .toList(),
      summary:
          json['summary'] == null
              ? null
              : DriverSummary.fromJson(json['summary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverDetailsImplToJson(_$DriverDetailsImpl instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'statistics': instance.statistics,
      'orders': instance.orders,
      'summary': instance.summary,
    };

_$DriverStatisticsImpl _$$DriverStatisticsImplFromJson(
  Map<String, dynamic> json,
) => _$DriverStatisticsImpl(
  currentApplications: (json['currentApplications'] as num).toInt(),
  completedApplications: (json['completedApplications'] as num).toInt(),
  totalApplications: (json['totalApplications'] as num).toInt(),
);

Map<String, dynamic> _$$DriverStatisticsImplToJson(
  _$DriverStatisticsImpl instance,
) => <String, dynamic>{
  'currentApplications': instance.currentApplications,
  'completedApplications': instance.completedApplications,
  'totalApplications': instance.totalApplications,
};

_$DriverOrderImpl _$$DriverOrderImplFromJson(Map<String, dynamic> json) =>
    _$DriverOrderImpl(
      id: json['id'] as String,
      truck: json['truck'] as String,
      containerNumber: (json['containerNumber'] as num?)?.toInt(),
      type: json['type'] as String,
      size: json['size'] as String,
      deliveryDate: json['deliveryDate'] as String,
      status: json['status'] as String,
      customerName: json['customerName'] as String?,
      customerPhone: json['customerPhone'] as String?,
      deliveryLocation:
          json['deliveryLocation'] == null
              ? null
              : DriverOrderLocation.fromJson(
                json['deliveryLocation'] as Map<String, dynamic>,
              ),
      orderType: json['orderType'] as String?,
    );

Map<String, dynamic> _$$DriverOrderImplToJson(_$DriverOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'truck': instance.truck,
      'containerNumber': instance.containerNumber,
      'type': instance.type,
      'size': instance.size,
      'deliveryDate': instance.deliveryDate,
      'status': instance.status,
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'deliveryLocation': instance.deliveryLocation,
      'orderType': instance.orderType,
    };

_$DriverOrderLocationImpl _$$DriverOrderLocationImplFromJson(
  Map<String, dynamic> json,
) => _$DriverOrderLocationImpl(
  address: json['address'] as String?,
  cityName: json['cityName'] as String?,
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$$DriverOrderLocationImplToJson(
  _$DriverOrderLocationImpl instance,
) => <String, dynamic>{
  'address': instance.address,
  'cityName': instance.cityName,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};

_$DriverSummaryImpl _$$DriverSummaryImplFromJson(Map<String, dynamic> json) =>
    _$DriverSummaryImpl(
      totalOrders: (json['totalOrders'] as num).toInt(),
      totalSubOrders: (json['totalSubOrders'] as num).toInt(),
      totalAssignedOrders: (json['totalAssignedOrders'] as num).toInt(),
      completedOrders: (json['completedOrders'] as num).toInt(),
      pendingOrders: (json['pendingOrders'] as num).toInt(),
    );

Map<String, dynamic> _$$DriverSummaryImplToJson(_$DriverSummaryImpl instance) =>
    <String, dynamic>{
      'totalOrders': instance.totalOrders,
      'totalSubOrders': instance.totalSubOrders,
      'totalAssignedOrders': instance.totalAssignedOrders,
      'completedOrders': instance.completedOrders,
      'pendingOrders': instance.pendingOrders,
    };
