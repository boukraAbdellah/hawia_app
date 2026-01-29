// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryLocationImpl _$$DeliveryLocationImplFromJson(
  Map<String, dynamic> json,
) => _$DeliveryLocationImpl(
  latitude: const DoubleConverter().fromJson(json['latitude']),
  longitude: const DoubleConverter().fromJson(json['longitude']),
  address: json['address'] as String?,
  cityName: json['cityName'] as String?,
);

Map<String, dynamic> _$$DeliveryLocationImplToJson(
  _$DeliveryLocationImpl instance,
) => <String, dynamic>{
  'latitude': const DoubleConverter().toJson(instance.latitude),
  'longitude': const DoubleConverter().toJson(instance.longitude),
  'address': instance.address,
  'cityName': instance.cityName,
};

_$PendingOrderImpl _$$PendingOrderImplFromJson(Map<String, dynamic> json) =>
    _$PendingOrderImpl(
      id: const IdConverter().fromJson(json['id']),
      orderNumber: json['orderNumber'] as String,
      customerId: const IdConverter().fromJson(json['customerId']),
      customerName: json['customerName'] as String?,
      customerPhone: json['customerPhone'] as String?,
      containerType: json['containerType'] as String,
      containerSize: json['containerSize'] as String,
      deliveryLocation: DeliveryLocation.fromJson(
        json['deliveryLocation'] as Map<String, dynamic>,
      ),
      deliveryDate: DateTime.parse(json['deliveryDate'] as String),
      rentalType: json['rentalType'] as String,
      rentalDuration: (json['rentalDuration'] as num?)?.toInt(),
      unloadCount: (json['unloadCount'] as num?)?.toInt(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      applied: json['applied'] as bool,
      distance: const DoubleConverter().fromJson(json['distance']),
    );

Map<String, dynamic> _$$PendingOrderImplToJson(_$PendingOrderImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'orderNumber': instance.orderNumber,
      'customerId': const IdConverter().toJson(instance.customerId),
      'customerName': instance.customerName,
      'customerPhone': instance.customerPhone,
      'containerType': instance.containerType,
      'containerSize': instance.containerSize,
      'deliveryLocation': instance.deliveryLocation,
      'deliveryDate': instance.deliveryDate.toIso8601String(),
      'rentalType': instance.rentalType,
      'rentalDuration': instance.rentalDuration,
      'unloadCount': instance.unloadCount,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'applied': instance.applied,
      'distance': const DoubleConverter().toJson(instance.distance),
    };

_$DriverInfoImpl _$$DriverInfoImplFromJson(Map<String, dynamic> json) =>
    _$DriverInfoImpl(
      id: const IdConverter().fromJson(json['id']),
      licenseNumber: json['licenseNumber'] as String?,
      vehicleType: json['vehicleType'] as String?,
      user: DriverUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DriverInfoImplToJson(_$DriverInfoImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'licenseNumber': instance.licenseNumber,
      'vehicleType': instance.vehicleType,
      'user': instance.user,
    };

_$DriverUserImpl _$$DriverUserImplFromJson(Map<String, dynamic> json) =>
    _$DriverUserImpl(name: json['name'] as String);

Map<String, dynamic> _$$DriverUserImplToJson(_$DriverUserImpl instance) =>
    <String, dynamic>{'name': instance.name};

_$AvailableFiltersImpl _$$AvailableFiltersImplFromJson(
  Map<String, dynamic> json,
) => _$AvailableFiltersImpl(
  cities: (json['cities'] as List<dynamic>).map((e) => e as String).toList(),
  containerTypes:
      (json['containerTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$$AvailableFiltersImplToJson(
  _$AvailableFiltersImpl instance,
) => <String, dynamic>{
  'cities': instance.cities,
  'containerTypes': instance.containerTypes,
};

_$PaginationInfoImpl _$$PaginationInfoImplFromJson(Map<String, dynamic> json) =>
    _$PaginationInfoImpl(
      totalOrders: (json['totalOrders'] as num).toInt(),
      currentPage: (json['currentPage'] as num).toInt(),
      ordersPerPage: (json['ordersPerPage'] as num).toInt(),
      totalPages: (json['totalPages'] as num).toInt(),
      hasNextPage: json['hasNextPage'] as bool,
      hasPrevPage: json['hasPrevPage'] as bool,
    );

Map<String, dynamic> _$$PaginationInfoImplToJson(
  _$PaginationInfoImpl instance,
) => <String, dynamic>{
  'totalOrders': instance.totalOrders,
  'currentPage': instance.currentPage,
  'ordersPerPage': instance.ordersPerPage,
  'totalPages': instance.totalPages,
  'hasNextPage': instance.hasNextPage,
  'hasPrevPage': instance.hasPrevPage,
};

_$SubmitOfferRequestImpl _$$SubmitOfferRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SubmitOfferRequestImpl(
  globalOrderId: json['globalOrderId'] as String,
  price: const DoubleConverter().fromJson(json['price']),
  rentalDuration: (json['rentalDuration'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SubmitOfferRequestImplToJson(
  _$SubmitOfferRequestImpl instance,
) => <String, dynamic>{
  'globalOrderId': instance.globalOrderId,
  'price': const DoubleConverter().toJson(instance.price),
  'rentalDuration': instance.rentalDuration,
};

_$OfferResponseImpl _$$OfferResponseImplFromJson(Map<String, dynamic> json) =>
    _$OfferResponseImpl(
      message: json['message'] as String,
      offer: OfferDetails.fromJson(json['offer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OfferResponseImplToJson(_$OfferResponseImpl instance) =>
    <String, dynamic>{'message': instance.message, 'offer': instance.offer};

_$OfferDetailsImpl _$$OfferDetailsImplFromJson(Map<String, dynamic> json) =>
    _$OfferDetailsImpl(
      id: const IdConverter().fromJson(json['id']),
      globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
      companyId: const IdConverter().fromJson(json['companyId']),
      containerId: const IdConverter().fromJson(json['containerId']),
      price: const DoubleConverter().fromJson(json['price']),
      totalPrice: const DoubleConverter().fromJson(json['totalPrice']),
      commissionAmount: const DoubleConverter().fromJson(
        json['commissionAmount'],
      ),
      vatAmount: const DoubleConverter().fromJson(json['vatAmount']),
      rentalDuration: (json['rentalDuration'] as num).toInt(),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$OfferDetailsImplToJson(
  _$OfferDetailsImpl instance,
) => <String, dynamic>{
  'id': const IdConverter().toJson(instance.id),
  'globalOrderId': const IdConverter().toJson(instance.globalOrderId),
  'companyId': const IdConverter().toJson(instance.companyId),
  'containerId': const IdConverter().toJson(instance.containerId),
  'price': const DoubleConverter().toJson(instance.price),
  'totalPrice': const DoubleConverter().toJson(instance.totalPrice),
  'commissionAmount': const DoubleConverter().toJson(instance.commissionAmount),
  'vatAmount': const DoubleConverter().toJson(instance.vatAmount),
  'rentalDuration': instance.rentalDuration,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
};

_$AssignDriverRequestImpl _$$AssignDriverRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AssignDriverRequestImpl(driverId: json['driverId'] as String);

Map<String, dynamic> _$$AssignDriverRequestImplToJson(
  _$AssignDriverRequestImpl instance,
) => <String, dynamic>{'driverId': instance.driverId};

_$AssignDriverResponseImpl _$$AssignDriverResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AssignDriverResponseImpl(
  message: json['message'] as String,
  order: AssignedOrderInfo.fromJson(json['order'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$AssignDriverResponseImplToJson(
  _$AssignDriverResponseImpl instance,
) => <String, dynamic>{'message': instance.message, 'order': instance.order};

_$AssignedOrderInfoImpl _$$AssignedOrderInfoImplFromJson(
  Map<String, dynamic> json,
) => _$AssignedOrderInfoImpl(
  id: const IdConverter().fromJson(json['id']),
  globalOrderId: const IdConverter().fromJson(json['globalOrderId']),
  driverId: const IdConverter().fromJson(json['driverId']),
  status: json['status'] as String,
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$AssignedOrderInfoImplToJson(
  _$AssignedOrderInfoImpl instance,
) => <String, dynamic>{
  'id': const IdConverter().toJson(instance.id),
  'globalOrderId': const IdConverter().toJson(instance.globalOrderId),
  'driverId': _$JsonConverterToJson<dynamic, String>(
    instance.driverId,
    const IdConverter().toJson,
  ),
  'status': instance.status,
  'updatedAt': instance.updatedAt.toIso8601String(),
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_$AssignSubOrderDriverRequestImpl _$$AssignSubOrderDriverRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AssignSubOrderDriverRequestImpl(
  driverId: json['driverId'] as String,
  deliveryDate: DateTime.parse(json['deliveryDate'] as String),
);

Map<String, dynamic> _$$AssignSubOrderDriverRequestImplToJson(
  _$AssignSubOrderDriverRequestImpl instance,
) => <String, dynamic>{
  'driverId': instance.driverId,
  'deliveryDate': instance.deliveryDate.toIso8601String(),
};

_$AssignSubOrderDriverResponseImpl _$$AssignSubOrderDriverResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AssignSubOrderDriverResponseImpl(
  message: json['message'] as String,
  subOrder: AssignedSubOrderInfo.fromJson(
    json['subOrder'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$AssignSubOrderDriverResponseImplToJson(
  _$AssignSubOrderDriverResponseImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'subOrder': instance.subOrder,
};

_$AssignedSubOrderInfoImpl _$$AssignedSubOrderInfoImplFromJson(
  Map<String, dynamic> json,
) => _$AssignedSubOrderInfoImpl(
  id: const IdConverter().fromJson(json['id']),
  orderId: const IdConverter().fromJson(json['orderId']),
  type: json['type'] as String,
  status: json['status'] as String,
  driverId: const IdConverter().fromJson(json['driverId']),
  driverName: json['driverName'] as String?,
  requestedDate:
      json['requestedDate'] == null
          ? null
          : DateTime.parse(json['requestedDate'] as String),
);

Map<String, dynamic> _$$AssignedSubOrderInfoImplToJson(
  _$AssignedSubOrderInfoImpl instance,
) => <String, dynamic>{
  'id': const IdConverter().toJson(instance.id),
  'orderId': const IdConverter().toJson(instance.orderId),
  'type': instance.type,
  'status': instance.status,
  'driverId': _$JsonConverterToJson<dynamic, String>(
    instance.driverId,
    const IdConverter().toJson,
  ),
  'driverName': instance.driverName,
  'requestedDate': instance.requestedDate?.toIso8601String(),
};
