// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DeliveryLocation _$DeliveryLocationFromJson(Map<String, dynamic> json) {
  return _DeliveryLocation.fromJson(json);
}

/// @nodoc
mixin _$DeliveryLocation {
  @DoubleConverter()
  double get latitude => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get longitude => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;

  /// Serializes this DeliveryLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeliveryLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeliveryLocationCopyWith<DeliveryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryLocationCopyWith<$Res> {
  factory $DeliveryLocationCopyWith(
    DeliveryLocation value,
    $Res Function(DeliveryLocation) then,
  ) = _$DeliveryLocationCopyWithImpl<$Res, DeliveryLocation>;
  @useResult
  $Res call({
    @DoubleConverter() double latitude,
    @DoubleConverter() double longitude,
    String? address,
    String? cityName,
  });
}

/// @nodoc
class _$DeliveryLocationCopyWithImpl<$Res, $Val extends DeliveryLocation>
    implements $DeliveryLocationCopyWith<$Res> {
  _$DeliveryLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeliveryLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? cityName = freezed,
  }) {
    return _then(
      _value.copyWith(
            latitude:
                null == latitude
                    ? _value.latitude
                    : latitude // ignore: cast_nullable_to_non_nullable
                        as double,
            longitude:
                null == longitude
                    ? _value.longitude
                    : longitude // ignore: cast_nullable_to_non_nullable
                        as double,
            address:
                freezed == address
                    ? _value.address
                    : address // ignore: cast_nullable_to_non_nullable
                        as String?,
            cityName:
                freezed == cityName
                    ? _value.cityName
                    : cityName // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DeliveryLocationImplCopyWith<$Res>
    implements $DeliveryLocationCopyWith<$Res> {
  factory _$$DeliveryLocationImplCopyWith(
    _$DeliveryLocationImpl value,
    $Res Function(_$DeliveryLocationImpl) then,
  ) = __$$DeliveryLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @DoubleConverter() double latitude,
    @DoubleConverter() double longitude,
    String? address,
    String? cityName,
  });
}

/// @nodoc
class __$$DeliveryLocationImplCopyWithImpl<$Res>
    extends _$DeliveryLocationCopyWithImpl<$Res, _$DeliveryLocationImpl>
    implements _$$DeliveryLocationImplCopyWith<$Res> {
  __$$DeliveryLocationImplCopyWithImpl(
    _$DeliveryLocationImpl _value,
    $Res Function(_$DeliveryLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DeliveryLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? address = freezed,
    Object? cityName = freezed,
  }) {
    return _then(
      _$DeliveryLocationImpl(
        latitude:
            null == latitude
                ? _value.latitude
                : latitude // ignore: cast_nullable_to_non_nullable
                    as double,
        longitude:
            null == longitude
                ? _value.longitude
                : longitude // ignore: cast_nullable_to_non_nullable
                    as double,
        address:
            freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                    as String?,
        cityName:
            freezed == cityName
                ? _value.cityName
                : cityName // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DeliveryLocationImpl implements _DeliveryLocation {
  const _$DeliveryLocationImpl({
    @DoubleConverter() required this.latitude,
    @DoubleConverter() required this.longitude,
    this.address,
    this.cityName,
  });

  factory _$DeliveryLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeliveryLocationImplFromJson(json);

  @override
  @DoubleConverter()
  final double latitude;
  @override
  @DoubleConverter()
  final double longitude;
  @override
  final String? address;
  @override
  final String? cityName;

  @override
  String toString() {
    return 'DeliveryLocation(latitude: $latitude, longitude: $longitude, address: $address, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeliveryLocationImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, latitude, longitude, address, cityName);

  /// Create a copy of DeliveryLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeliveryLocationImplCopyWith<_$DeliveryLocationImpl> get copyWith =>
      __$$DeliveryLocationImplCopyWithImpl<_$DeliveryLocationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DeliveryLocationImplToJson(this);
  }
}

abstract class _DeliveryLocation implements DeliveryLocation {
  const factory _DeliveryLocation({
    @DoubleConverter() required final double latitude,
    @DoubleConverter() required final double longitude,
    final String? address,
    final String? cityName,
  }) = _$DeliveryLocationImpl;

  factory _DeliveryLocation.fromJson(Map<String, dynamic> json) =
      _$DeliveryLocationImpl.fromJson;

  @override
  @DoubleConverter()
  double get latitude;
  @override
  @DoubleConverter()
  double get longitude;
  @override
  String? get address;
  @override
  String? get cityName;

  /// Create a copy of DeliveryLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeliveryLocationImplCopyWith<_$DeliveryLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PendingOrdersResponse {
  String get message => throw _privateConstructorUsedError;
  List<PendingOrder> get orders => throw _privateConstructorUsedError;

  /// Create a copy of PendingOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PendingOrdersResponseCopyWith<PendingOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingOrdersResponseCopyWith<$Res> {
  factory $PendingOrdersResponseCopyWith(
    PendingOrdersResponse value,
    $Res Function(PendingOrdersResponse) then,
  ) = _$PendingOrdersResponseCopyWithImpl<$Res, PendingOrdersResponse>;
  @useResult
  $Res call({String message, List<PendingOrder> orders});
}

/// @nodoc
class _$PendingOrdersResponseCopyWithImpl<
  $Res,
  $Val extends PendingOrdersResponse
>
    implements $PendingOrdersResponseCopyWith<$Res> {
  _$PendingOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? orders = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<PendingOrder>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PendingOrdersResponseImplCopyWith<$Res>
    implements $PendingOrdersResponseCopyWith<$Res> {
  factory _$$PendingOrdersResponseImplCopyWith(
    _$PendingOrdersResponseImpl value,
    $Res Function(_$PendingOrdersResponseImpl) then,
  ) = __$$PendingOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<PendingOrder> orders});
}

/// @nodoc
class __$$PendingOrdersResponseImplCopyWithImpl<$Res>
    extends
        _$PendingOrdersResponseCopyWithImpl<$Res, _$PendingOrdersResponseImpl>
    implements _$$PendingOrdersResponseImplCopyWith<$Res> {
  __$$PendingOrdersResponseImplCopyWithImpl(
    _$PendingOrdersResponseImpl _value,
    $Res Function(_$PendingOrdersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PendingOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? orders = null}) {
    return _then(
      _$PendingOrdersResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<PendingOrder>,
      ),
    );
  }
}

/// @nodoc

class _$PendingOrdersResponseImpl implements _PendingOrdersResponse {
  const _$PendingOrdersResponseImpl({
    required this.message,
    required final List<PendingOrder> orders,
  }) : _orders = orders;

  @override
  final String message;
  final List<PendingOrder> _orders;
  @override
  List<PendingOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'PendingOrdersResponse(message: $message, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingOrdersResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_orders),
  );

  /// Create a copy of PendingOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingOrdersResponseImplCopyWith<_$PendingOrdersResponseImpl>
  get copyWith =>
      __$$PendingOrdersResponseImplCopyWithImpl<_$PendingOrdersResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _PendingOrdersResponse implements PendingOrdersResponse {
  const factory _PendingOrdersResponse({
    required final String message,
    required final List<PendingOrder> orders,
  }) = _$PendingOrdersResponseImpl;

  @override
  String get message;
  @override
  List<PendingOrder> get orders;

  /// Create a copy of PendingOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PendingOrdersResponseImplCopyWith<_$PendingOrdersResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PendingOrder _$PendingOrderFromJson(Map<String, dynamic> json) {
  return _PendingOrder.fromJson(json);
}

/// @nodoc
mixin _$PendingOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  @IdConverter()
  String get customerId => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  String get containerType => throw _privateConstructorUsedError;
  String get containerSize => throw _privateConstructorUsedError;
  DeliveryLocation get deliveryLocation => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  String get rentalType =>
      throw _privateConstructorUsedError; // once, monthly, annual
  int? get rentalDuration =>
      throw _privateConstructorUsedError; // Duration for 'once' type rentals
  int? get unloadCount =>
      throw _privateConstructorUsedError; // Number of unloads for monthly/yearly rentals
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get applied =>
      throw _privateConstructorUsedError; // Has your company submitted offer?
  @DoubleConverter()
  double get distance => throw _privateConstructorUsedError;

  /// Serializes this PendingOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PendingOrderCopyWith<PendingOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingOrderCopyWith<$Res> {
  factory $PendingOrderCopyWith(
    PendingOrder value,
    $Res Function(PendingOrder) then,
  ) = _$PendingOrderCopyWithImpl<$Res, PendingOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    String orderNumber,
    @IdConverter() String customerId,
    String? customerName,
    String? customerPhone,
    String containerType,
    String containerSize,
    DeliveryLocation deliveryLocation,
    DateTime deliveryDate,
    String rentalType,
    int? rentalDuration,
    int? unloadCount,
    String status,
    DateTime createdAt,
    bool applied,
    @DoubleConverter() double distance,
  });

  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
}

/// @nodoc
class _$PendingOrderCopyWithImpl<$Res, $Val extends PendingOrder>
    implements $PendingOrderCopyWith<$Res> {
  _$PendingOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerId = null,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? containerType = null,
    Object? containerSize = null,
    Object? deliveryLocation = null,
    Object? deliveryDate = null,
    Object? rentalType = null,
    Object? rentalDuration = freezed,
    Object? unloadCount = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? applied = null,
    Object? distance = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            orderNumber:
                null == orderNumber
                    ? _value.orderNumber
                    : orderNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            customerId:
                null == customerId
                    ? _value.customerId
                    : customerId // ignore: cast_nullable_to_non_nullable
                        as String,
            customerName:
                freezed == customerName
                    ? _value.customerName
                    : customerName // ignore: cast_nullable_to_non_nullable
                        as String?,
            customerPhone:
                freezed == customerPhone
                    ? _value.customerPhone
                    : customerPhone // ignore: cast_nullable_to_non_nullable
                        as String?,
            containerType:
                null == containerType
                    ? _value.containerType
                    : containerType // ignore: cast_nullable_to_non_nullable
                        as String,
            containerSize:
                null == containerSize
                    ? _value.containerSize
                    : containerSize // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryLocation:
                null == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DeliveryLocation,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            rentalType:
                null == rentalType
                    ? _value.rentalType
                    : rentalType // ignore: cast_nullable_to_non_nullable
                        as String,
            rentalDuration:
                freezed == rentalDuration
                    ? _value.rentalDuration
                    : rentalDuration // ignore: cast_nullable_to_non_nullable
                        as int?,
            unloadCount:
                freezed == unloadCount
                    ? _value.unloadCount
                    : unloadCount // ignore: cast_nullable_to_non_nullable
                        as int?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            applied:
                null == applied
                    ? _value.applied
                    : applied // ignore: cast_nullable_to_non_nullable
                        as bool,
            distance:
                null == distance
                    ? _value.distance
                    : distance // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryLocationCopyWith<$Res> get deliveryLocation {
    return $DeliveryLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PendingOrderImplCopyWith<$Res>
    implements $PendingOrderCopyWith<$Res> {
  factory _$$PendingOrderImplCopyWith(
    _$PendingOrderImpl value,
    $Res Function(_$PendingOrderImpl) then,
  ) = __$$PendingOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    String orderNumber,
    @IdConverter() String customerId,
    String? customerName,
    String? customerPhone,
    String containerType,
    String containerSize,
    DeliveryLocation deliveryLocation,
    DateTime deliveryDate,
    String rentalType,
    int? rentalDuration,
    int? unloadCount,
    String status,
    DateTime createdAt,
    bool applied,
    @DoubleConverter() double distance,
  });

  @override
  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
}

/// @nodoc
class __$$PendingOrderImplCopyWithImpl<$Res>
    extends _$PendingOrderCopyWithImpl<$Res, _$PendingOrderImpl>
    implements _$$PendingOrderImplCopyWith<$Res> {
  __$$PendingOrderImplCopyWithImpl(
    _$PendingOrderImpl _value,
    $Res Function(_$PendingOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderNumber = null,
    Object? customerId = null,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? containerType = null,
    Object? containerSize = null,
    Object? deliveryLocation = null,
    Object? deliveryDate = null,
    Object? rentalType = null,
    Object? rentalDuration = freezed,
    Object? unloadCount = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? applied = null,
    Object? distance = null,
  }) {
    return _then(
      _$PendingOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        orderNumber:
            null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        customerId:
            null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                    as String,
        customerName:
            freezed == customerName
                ? _value.customerName
                : customerName // ignore: cast_nullable_to_non_nullable
                    as String?,
        customerPhone:
            freezed == customerPhone
                ? _value.customerPhone
                : customerPhone // ignore: cast_nullable_to_non_nullable
                    as String?,
        containerType:
            null == containerType
                ? _value.containerType
                : containerType // ignore: cast_nullable_to_non_nullable
                    as String,
        containerSize:
            null == containerSize
                ? _value.containerSize
                : containerSize // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryLocation:
            null == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DeliveryLocation,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        rentalType:
            null == rentalType
                ? _value.rentalType
                : rentalType // ignore: cast_nullable_to_non_nullable
                    as String,
        rentalDuration:
            freezed == rentalDuration
                ? _value.rentalDuration
                : rentalDuration // ignore: cast_nullable_to_non_nullable
                    as int?,
        unloadCount:
            freezed == unloadCount
                ? _value.unloadCount
                : unloadCount // ignore: cast_nullable_to_non_nullable
                    as int?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        applied:
            null == applied
                ? _value.applied
                : applied // ignore: cast_nullable_to_non_nullable
                    as bool,
        distance:
            null == distance
                ? _value.distance
                : distance // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PendingOrderImpl implements _PendingOrder {
  const _$PendingOrderImpl({
    @IdConverter() required this.id,
    required this.orderNumber,
    @IdConverter() required this.customerId,
    this.customerName,
    this.customerPhone,
    required this.containerType,
    required this.containerSize,
    required this.deliveryLocation,
    required this.deliveryDate,
    required this.rentalType,
    this.rentalDuration,
    this.unloadCount,
    required this.status,
    required this.createdAt,
    required this.applied,
    @DoubleConverter() required this.distance,
  });

  factory _$PendingOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$PendingOrderImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  final String orderNumber;
  @override
  @IdConverter()
  final String customerId;
  @override
  final String? customerName;
  @override
  final String? customerPhone;
  @override
  final String containerType;
  @override
  final String containerSize;
  @override
  final DeliveryLocation deliveryLocation;
  @override
  final DateTime deliveryDate;
  @override
  final String rentalType;
  // once, monthly, annual
  @override
  final int? rentalDuration;
  // Duration for 'once' type rentals
  @override
  final int? unloadCount;
  // Number of unloads for monthly/yearly rentals
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final bool applied;
  // Has your company submitted offer?
  @override
  @DoubleConverter()
  final double distance;

  @override
  String toString() {
    return 'PendingOrder(id: $id, orderNumber: $orderNumber, customerId: $customerId, customerName: $customerName, customerPhone: $customerPhone, containerType: $containerType, containerSize: $containerSize, deliveryLocation: $deliveryLocation, deliveryDate: $deliveryDate, rentalType: $rentalType, rentalDuration: $rentalDuration, unloadCount: $unloadCount, status: $status, createdAt: $createdAt, applied: $applied, distance: $distance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.containerType, containerType) ||
                other.containerType == containerType) &&
            (identical(other.containerSize, containerSize) ||
                other.containerSize == containerSize) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.rentalType, rentalType) ||
                other.rentalType == rentalType) &&
            (identical(other.rentalDuration, rentalDuration) ||
                other.rentalDuration == rentalDuration) &&
            (identical(other.unloadCount, unloadCount) ||
                other.unloadCount == unloadCount) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.applied, applied) || other.applied == applied) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderNumber,
    customerId,
    customerName,
    customerPhone,
    containerType,
    containerSize,
    deliveryLocation,
    deliveryDate,
    rentalType,
    rentalDuration,
    unloadCount,
    status,
    createdAt,
    applied,
    distance,
  );

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PendingOrderImplCopyWith<_$PendingOrderImpl> get copyWith =>
      __$$PendingOrderImplCopyWithImpl<_$PendingOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PendingOrderImplToJson(this);
  }
}

abstract class _PendingOrder implements PendingOrder {
  const factory _PendingOrder({
    @IdConverter() required final String id,
    required final String orderNumber,
    @IdConverter() required final String customerId,
    final String? customerName,
    final String? customerPhone,
    required final String containerType,
    required final String containerSize,
    required final DeliveryLocation deliveryLocation,
    required final DateTime deliveryDate,
    required final String rentalType,
    final int? rentalDuration,
    final int? unloadCount,
    required final String status,
    required final DateTime createdAt,
    required final bool applied,
    @DoubleConverter() required final double distance,
  }) = _$PendingOrderImpl;

  factory _PendingOrder.fromJson(Map<String, dynamic> json) =
      _$PendingOrderImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  String get orderNumber;
  @override
  @IdConverter()
  String get customerId;
  @override
  String? get customerName;
  @override
  String? get customerPhone;
  @override
  String get containerType;
  @override
  String get containerSize;
  @override
  DeliveryLocation get deliveryLocation;
  @override
  DateTime get deliveryDate;
  @override
  String get rentalType; // once, monthly, annual
  @override
  int? get rentalDuration; // Duration for 'once' type rentals
  @override
  int? get unloadCount; // Number of unloads for monthly/yearly rentals
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  bool get applied; // Has your company submitted offer?
  @override
  @DoubleConverter()
  double get distance;

  /// Create a copy of PendingOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PendingOrderImplCopyWith<_$PendingOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverInfo _$DriverInfoFromJson(Map<String, dynamic> json) {
  return _DriverInfo.fromJson(json);
}

/// @nodoc
mixin _$DriverInfo {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  String? get licenseNumber => throw _privateConstructorUsedError;
  String? get vehicleType => throw _privateConstructorUsedError;
  DriverUser get user => throw _privateConstructorUsedError;

  /// Serializes this DriverInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverInfoCopyWith<DriverInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverInfoCopyWith<$Res> {
  factory $DriverInfoCopyWith(
    DriverInfo value,
    $Res Function(DriverInfo) then,
  ) = _$DriverInfoCopyWithImpl<$Res, DriverInfo>;
  @useResult
  $Res call({
    @IdConverter() String id,
    String? licenseNumber,
    String? vehicleType,
    DriverUser user,
  });

  $DriverUserCopyWith<$Res> get user;
}

/// @nodoc
class _$DriverInfoCopyWithImpl<$Res, $Val extends DriverInfo>
    implements $DriverInfoCopyWith<$Res> {
  _$DriverInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licenseNumber = freezed,
    Object? vehicleType = freezed,
    Object? user = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            licenseNumber:
                freezed == licenseNumber
                    ? _value.licenseNumber
                    : licenseNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            vehicleType:
                freezed == vehicleType
                    ? _value.vehicleType
                    : vehicleType // ignore: cast_nullable_to_non_nullable
                        as String?,
            user:
                null == user
                    ? _value.user
                    : user // ignore: cast_nullable_to_non_nullable
                        as DriverUser,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverUserCopyWith<$Res> get user {
    return $DriverUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverInfoImplCopyWith<$Res>
    implements $DriverInfoCopyWith<$Res> {
  factory _$$DriverInfoImplCopyWith(
    _$DriverInfoImpl value,
    $Res Function(_$DriverInfoImpl) then,
  ) = __$$DriverInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    String? licenseNumber,
    String? vehicleType,
    DriverUser user,
  });

  @override
  $DriverUserCopyWith<$Res> get user;
}

/// @nodoc
class __$$DriverInfoImplCopyWithImpl<$Res>
    extends _$DriverInfoCopyWithImpl<$Res, _$DriverInfoImpl>
    implements _$$DriverInfoImplCopyWith<$Res> {
  __$$DriverInfoImplCopyWithImpl(
    _$DriverInfoImpl _value,
    $Res Function(_$DriverInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? licenseNumber = freezed,
    Object? vehicleType = freezed,
    Object? user = null,
  }) {
    return _then(
      _$DriverInfoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        licenseNumber:
            freezed == licenseNumber
                ? _value.licenseNumber
                : licenseNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        vehicleType:
            freezed == vehicleType
                ? _value.vehicleType
                : vehicleType // ignore: cast_nullable_to_non_nullable
                    as String?,
        user:
            null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                    as DriverUser,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverInfoImpl implements _DriverInfo {
  const _$DriverInfoImpl({
    @IdConverter() required this.id,
    this.licenseNumber,
    this.vehicleType,
    required this.user,
  });

  factory _$DriverInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverInfoImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  final String? licenseNumber;
  @override
  final String? vehicleType;
  @override
  final DriverUser user;

  @override
  String toString() {
    return 'DriverInfo(id: $id, licenseNumber: $licenseNumber, vehicleType: $vehicleType, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.licenseNumber, licenseNumber) ||
                other.licenseNumber == licenseNumber) &&
            (identical(other.vehicleType, vehicleType) ||
                other.vehicleType == vehicleType) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, licenseNumber, vehicleType, user);

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverInfoImplCopyWith<_$DriverInfoImpl> get copyWith =>
      __$$DriverInfoImplCopyWithImpl<_$DriverInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverInfoImplToJson(this);
  }
}

abstract class _DriverInfo implements DriverInfo {
  const factory _DriverInfo({
    @IdConverter() required final String id,
    final String? licenseNumber,
    final String? vehicleType,
    required final DriverUser user,
  }) = _$DriverInfoImpl;

  factory _DriverInfo.fromJson(Map<String, dynamic> json) =
      _$DriverInfoImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  String? get licenseNumber;
  @override
  String? get vehicleType;
  @override
  DriverUser get user;

  /// Create a copy of DriverInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverInfoImplCopyWith<_$DriverInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverUser _$DriverUserFromJson(Map<String, dynamic> json) {
  return _DriverUser.fromJson(json);
}

/// @nodoc
mixin _$DriverUser {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this DriverUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverUserCopyWith<DriverUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverUserCopyWith<$Res> {
  factory $DriverUserCopyWith(
    DriverUser value,
    $Res Function(DriverUser) then,
  ) = _$DriverUserCopyWithImpl<$Res, DriverUser>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$DriverUserCopyWithImpl<$Res, $Val extends DriverUser>
    implements $DriverUserCopyWith<$Res> {
  _$DriverUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverUserImplCopyWith<$Res>
    implements $DriverUserCopyWith<$Res> {
  factory _$$DriverUserImplCopyWith(
    _$DriverUserImpl value,
    $Res Function(_$DriverUserImpl) then,
  ) = __$$DriverUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$DriverUserImplCopyWithImpl<$Res>
    extends _$DriverUserCopyWithImpl<$Res, _$DriverUserImpl>
    implements _$$DriverUserImplCopyWith<$Res> {
  __$$DriverUserImplCopyWithImpl(
    _$DriverUserImpl _value,
    $Res Function(_$DriverUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null}) {
    return _then(
      _$DriverUserImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverUserImpl implements _DriverUser {
  const _$DriverUserImpl({required this.name});

  factory _$DriverUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverUserImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'DriverUser(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverUserImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of DriverUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverUserImplCopyWith<_$DriverUserImpl> get copyWith =>
      __$$DriverUserImplCopyWithImpl<_$DriverUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverUserImplToJson(this);
  }
}

abstract class _DriverUser implements DriverUser {
  const factory _DriverUser({required final String name}) = _$DriverUserImpl;

  factory _DriverUser.fromJson(Map<String, dynamic> json) =
      _$DriverUserImpl.fromJson;

  @override
  String get name;

  /// Create a copy of DriverUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverUserImplCopyWith<_$DriverUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContainerInfo {
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String? get containerNumber => throw _privateConstructorUsedError;

  /// Create a copy of ContainerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerInfoCopyWith<ContainerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerInfoCopyWith<$Res> {
  factory $ContainerInfoCopyWith(
    ContainerInfo value,
    $Res Function(ContainerInfo) then,
  ) = _$ContainerInfoCopyWithImpl<$Res, ContainerInfo>;
  @useResult
  $Res call({String type, String size, String? containerNumber});
}

/// @nodoc
class _$ContainerInfoCopyWithImpl<$Res, $Val extends ContainerInfo>
    implements $ContainerInfoCopyWith<$Res> {
  _$ContainerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? containerNumber = freezed,
  }) {
    return _then(
      _value.copyWith(
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as String,
            containerNumber:
                freezed == containerNumber
                    ? _value.containerNumber
                    : containerNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerInfoImplCopyWith<$Res>
    implements $ContainerInfoCopyWith<$Res> {
  factory _$$ContainerInfoImplCopyWith(
    _$ContainerInfoImpl value,
    $Res Function(_$ContainerInfoImpl) then,
  ) = __$$ContainerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String size, String? containerNumber});
}

/// @nodoc
class __$$ContainerInfoImplCopyWithImpl<$Res>
    extends _$ContainerInfoCopyWithImpl<$Res, _$ContainerInfoImpl>
    implements _$$ContainerInfoImplCopyWith<$Res> {
  __$$ContainerInfoImplCopyWithImpl(
    _$ContainerInfoImpl _value,
    $Res Function(_$ContainerInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? containerNumber = freezed,
  }) {
    return _then(
      _$ContainerInfoImpl(
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as String,
        containerNumber:
            freezed == containerNumber
                ? _value.containerNumber
                : containerNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$ContainerInfoImpl implements _ContainerInfo {
  const _$ContainerInfoImpl({
    required this.type,
    required this.size,
    this.containerNumber,
  });

  @override
  final String type;
  @override
  final String size;
  @override
  final String? containerNumber;

  @override
  String toString() {
    return 'ContainerInfo(type: $type, size: $size, containerNumber: $containerNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerInfoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.containerNumber, containerNumber) ||
                other.containerNumber == containerNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, size, containerNumber);

  /// Create a copy of ContainerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerInfoImplCopyWith<_$ContainerInfoImpl> get copyWith =>
      __$$ContainerInfoImplCopyWithImpl<_$ContainerInfoImpl>(this, _$identity);
}

abstract class _ContainerInfo implements ContainerInfo {
  const factory _ContainerInfo({
    required final String type,
    required final String size,
    final String? containerNumber,
  }) = _$ContainerInfoImpl;

  @override
  String get type;
  @override
  String get size;
  @override
  String? get containerNumber;

  /// Create a copy of ContainerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerInfoImplCopyWith<_$ContainerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcceptedOrdersResponse {
  String get message => throw _privateConstructorUsedError;
  List<AcceptedOrder> get orders => throw _privateConstructorUsedError;

  /// Create a copy of AcceptedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptedOrdersResponseCopyWith<AcceptedOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedOrdersResponseCopyWith<$Res> {
  factory $AcceptedOrdersResponseCopyWith(
    AcceptedOrdersResponse value,
    $Res Function(AcceptedOrdersResponse) then,
  ) = _$AcceptedOrdersResponseCopyWithImpl<$Res, AcceptedOrdersResponse>;
  @useResult
  $Res call({String message, List<AcceptedOrder> orders});
}

/// @nodoc
class _$AcceptedOrdersResponseCopyWithImpl<
  $Res,
  $Val extends AcceptedOrdersResponse
>
    implements $AcceptedOrdersResponseCopyWith<$Res> {
  _$AcceptedOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? orders = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<AcceptedOrder>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AcceptedOrdersResponseImplCopyWith<$Res>
    implements $AcceptedOrdersResponseCopyWith<$Res> {
  factory _$$AcceptedOrdersResponseImplCopyWith(
    _$AcceptedOrdersResponseImpl value,
    $Res Function(_$AcceptedOrdersResponseImpl) then,
  ) = __$$AcceptedOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<AcceptedOrder> orders});
}

/// @nodoc
class __$$AcceptedOrdersResponseImplCopyWithImpl<$Res>
    extends
        _$AcceptedOrdersResponseCopyWithImpl<$Res, _$AcceptedOrdersResponseImpl>
    implements _$$AcceptedOrdersResponseImplCopyWith<$Res> {
  __$$AcceptedOrdersResponseImplCopyWithImpl(
    _$AcceptedOrdersResponseImpl _value,
    $Res Function(_$AcceptedOrdersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AcceptedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? orders = null}) {
    return _then(
      _$AcceptedOrdersResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<AcceptedOrder>,
      ),
    );
  }
}

/// @nodoc

class _$AcceptedOrdersResponseImpl implements _AcceptedOrdersResponse {
  const _$AcceptedOrdersResponseImpl({
    required this.message,
    required final List<AcceptedOrder> orders,
  }) : _orders = orders;

  @override
  final String message;
  final List<AcceptedOrder> _orders;
  @override
  List<AcceptedOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'AcceptedOrdersResponse(message: $message, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptedOrdersResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_orders),
  );

  /// Create a copy of AcceptedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptedOrdersResponseImplCopyWith<_$AcceptedOrdersResponseImpl>
  get copyWith =>
      __$$AcceptedOrdersResponseImplCopyWithImpl<_$AcceptedOrdersResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _AcceptedOrdersResponse implements AcceptedOrdersResponse {
  const factory _AcceptedOrdersResponse({
    required final String message,
    required final List<AcceptedOrder> orders,
  }) = _$AcceptedOrdersResponseImpl;

  @override
  String get message;
  @override
  List<AcceptedOrder> get orders;

  /// Create a copy of AcceptedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptedOrdersResponseImplCopyWith<_$AcceptedOrdersResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AcceptedOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String get containerType => throw _privateConstructorUsedError;
  String get containerSize => throw _privateConstructorUsedError;
  String get status =>
      throw _privateConstructorUsedError; // pending, in_transit, delivered
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  DeliveryLocation get deliveryLocation => throw _privateConstructorUsedError;
  @IdConverter()
  String? get driverId => throw _privateConstructorUsedError;
  DriverInfo? get driver => throw _privateConstructorUsedError;
  ContainerInfo get container => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AcceptedOrderCopyWith<AcceptedOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AcceptedOrderCopyWith<$Res> {
  factory $AcceptedOrderCopyWith(
    AcceptedOrder value,
    $Res Function(AcceptedOrder) then,
  ) = _$AcceptedOrderCopyWithImpl<$Res, AcceptedOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String orderNumber,
    String containerType,
    String containerSize,
    String status,
    DateTime deliveryDate,
    DeliveryLocation deliveryLocation,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    ContainerInfo container,
    DateTime createdAt,
    DateTime updatedAt,
  });

  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  $DriverInfoCopyWith<$Res>? get driver;
  $ContainerInfoCopyWith<$Res> get container;
}

/// @nodoc
class _$AcceptedOrderCopyWithImpl<$Res, $Val extends AcceptedOrder>
    implements $AcceptedOrderCopyWith<$Res> {
  _$AcceptedOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = null,
    Object? containerType = null,
    Object? containerSize = null,
    Object? status = null,
    Object? deliveryDate = null,
    Object? deliveryLocation = null,
    Object? driverId = freezed,
    Object? driver = freezed,
    Object? container = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            orderNumber:
                null == orderNumber
                    ? _value.orderNumber
                    : orderNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            containerType:
                null == containerType
                    ? _value.containerType
                    : containerType // ignore: cast_nullable_to_non_nullable
                        as String,
            containerSize:
                null == containerSize
                    ? _value.containerSize
                    : containerSize // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            deliveryLocation:
                null == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DeliveryLocation,
            driverId:
                freezed == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            driver:
                freezed == driver
                    ? _value.driver
                    : driver // ignore: cast_nullable_to_non_nullable
                        as DriverInfo?,
            container:
                null == container
                    ? _value.container
                    : container // ignore: cast_nullable_to_non_nullable
                        as ContainerInfo,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryLocationCopyWith<$Res> get deliveryLocation {
    return $DeliveryLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerInfoCopyWith<$Res> get container {
    return $ContainerInfoCopyWith<$Res>(_value.container, (value) {
      return _then(_value.copyWith(container: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AcceptedOrderImplCopyWith<$Res>
    implements $AcceptedOrderCopyWith<$Res> {
  factory _$$AcceptedOrderImplCopyWith(
    _$AcceptedOrderImpl value,
    $Res Function(_$AcceptedOrderImpl) then,
  ) = __$$AcceptedOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String orderNumber,
    String containerType,
    String containerSize,
    String status,
    DateTime deliveryDate,
    DeliveryLocation deliveryLocation,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    ContainerInfo container,
    DateTime createdAt,
    DateTime updatedAt,
  });

  @override
  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  @override
  $DriverInfoCopyWith<$Res>? get driver;
  @override
  $ContainerInfoCopyWith<$Res> get container;
}

/// @nodoc
class __$$AcceptedOrderImplCopyWithImpl<$Res>
    extends _$AcceptedOrderCopyWithImpl<$Res, _$AcceptedOrderImpl>
    implements _$$AcceptedOrderImplCopyWith<$Res> {
  __$$AcceptedOrderImplCopyWithImpl(
    _$AcceptedOrderImpl _value,
    $Res Function(_$AcceptedOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = null,
    Object? containerType = null,
    Object? containerSize = null,
    Object? status = null,
    Object? deliveryDate = null,
    Object? deliveryLocation = null,
    Object? driverId = freezed,
    Object? driver = freezed,
    Object? container = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AcceptedOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        orderNumber:
            null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        containerType:
            null == containerType
                ? _value.containerType
                : containerType // ignore: cast_nullable_to_non_nullable
                    as String,
        containerSize:
            null == containerSize
                ? _value.containerSize
                : containerSize // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        deliveryLocation:
            null == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DeliveryLocation,
        driverId:
            freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        driver:
            freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                    as DriverInfo?,
        container:
            null == container
                ? _value.container
                : container // ignore: cast_nullable_to_non_nullable
                    as ContainerInfo,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$AcceptedOrderImpl implements _AcceptedOrder {
  const _$AcceptedOrderImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    required this.orderNumber,
    required this.containerType,
    required this.containerSize,
    required this.status,
    required this.deliveryDate,
    required this.deliveryLocation,
    @IdConverter() this.driverId,
    this.driver,
    required this.container,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  final String orderNumber;
  @override
  final String containerType;
  @override
  final String containerSize;
  @override
  final String status;
  // pending, in_transit, delivered
  @override
  final DateTime deliveryDate;
  @override
  final DeliveryLocation deliveryLocation;
  @override
  @IdConverter()
  final String? driverId;
  @override
  final DriverInfo? driver;
  @override
  final ContainerInfo container;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AcceptedOrder(id: $id, globalOrderId: $globalOrderId, orderNumber: $orderNumber, containerType: $containerType, containerSize: $containerSize, status: $status, deliveryDate: $deliveryDate, deliveryLocation: $deliveryLocation, driverId: $driverId, driver: $driver, container: $container, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AcceptedOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.containerType, containerType) ||
                other.containerType == containerType) &&
            (identical(other.containerSize, containerSize) ||
                other.containerSize == containerSize) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.container, container) ||
                other.container == container) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    globalOrderId,
    orderNumber,
    containerType,
    containerSize,
    status,
    deliveryDate,
    deliveryLocation,
    driverId,
    driver,
    container,
    createdAt,
    updatedAt,
  );

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AcceptedOrderImplCopyWith<_$AcceptedOrderImpl> get copyWith =>
      __$$AcceptedOrderImplCopyWithImpl<_$AcceptedOrderImpl>(this, _$identity);
}

abstract class _AcceptedOrder implements AcceptedOrder {
  const factory _AcceptedOrder({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    required final String orderNumber,
    required final String containerType,
    required final String containerSize,
    required final String status,
    required final DateTime deliveryDate,
    required final DeliveryLocation deliveryLocation,
    @IdConverter() final String? driverId,
    final DriverInfo? driver,
    required final ContainerInfo container,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$AcceptedOrderImpl;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  String get orderNumber;
  @override
  String get containerType;
  @override
  String get containerSize;
  @override
  String get status; // pending, in_transit, delivered
  @override
  DateTime get deliveryDate;
  @override
  DeliveryLocation get deliveryLocation;
  @override
  @IdConverter()
  String? get driverId;
  @override
  DriverInfo? get driver;
  @override
  ContainerInfo get container;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of AcceptedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AcceptedOrderImplCopyWith<_$AcceptedOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubOrderMainOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  DeliveryLocation get deliveryLocation => throw _privateConstructorUsedError;
  ContainerInfo? get container => throw _privateConstructorUsedError;

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubOrderMainOrderCopyWith<SubOrderMainOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubOrderMainOrderCopyWith<$Res> {
  factory $SubOrderMainOrderCopyWith(
    SubOrderMainOrder value,
    $Res Function(SubOrderMainOrder) then,
  ) = _$SubOrderMainOrderCopyWithImpl<$Res, SubOrderMainOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    DeliveryLocation deliveryLocation,
    ContainerInfo? container,
  });

  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class _$SubOrderMainOrderCopyWithImpl<$Res, $Val extends SubOrderMainOrder>
    implements $SubOrderMainOrderCopyWith<$Res> {
  _$SubOrderMainOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? deliveryLocation = null,
    Object? container = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryLocation:
                null == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DeliveryLocation,
            container:
                freezed == container
                    ? _value.container
                    : container // ignore: cast_nullable_to_non_nullable
                        as ContainerInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryLocationCopyWith<$Res> get deliveryLocation {
    return $DeliveryLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerInfoCopyWith<$Res>? get container {
    if (_value.container == null) {
      return null;
    }

    return $ContainerInfoCopyWith<$Res>(_value.container!, (value) {
      return _then(_value.copyWith(container: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubOrderMainOrderImplCopyWith<$Res>
    implements $SubOrderMainOrderCopyWith<$Res> {
  factory _$$SubOrderMainOrderImplCopyWith(
    _$SubOrderMainOrderImpl value,
    $Res Function(_$SubOrderMainOrderImpl) then,
  ) = __$$SubOrderMainOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    DeliveryLocation deliveryLocation,
    ContainerInfo? container,
  });

  @override
  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  @override
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class __$$SubOrderMainOrderImplCopyWithImpl<$Res>
    extends _$SubOrderMainOrderCopyWithImpl<$Res, _$SubOrderMainOrderImpl>
    implements _$$SubOrderMainOrderImplCopyWith<$Res> {
  __$$SubOrderMainOrderImplCopyWithImpl(
    _$SubOrderMainOrderImpl _value,
    $Res Function(_$SubOrderMainOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? deliveryLocation = null,
    Object? container = freezed,
  }) {
    return _then(
      _$SubOrderMainOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryLocation:
            null == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DeliveryLocation,
        container:
            freezed == container
                ? _value.container
                : container // ignore: cast_nullable_to_non_nullable
                    as ContainerInfo?,
      ),
    );
  }
}

/// @nodoc

class _$SubOrderMainOrderImpl implements _SubOrderMainOrder {
  const _$SubOrderMainOrderImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    required this.deliveryLocation,
    this.container,
  });

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  final DeliveryLocation deliveryLocation;
  @override
  final ContainerInfo? container;

  @override
  String toString() {
    return 'SubOrderMainOrder(id: $id, globalOrderId: $globalOrderId, deliveryLocation: $deliveryLocation, container: $container)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubOrderMainOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.container, container) ||
                other.container == container));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, globalOrderId, deliveryLocation, container);

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubOrderMainOrderImplCopyWith<_$SubOrderMainOrderImpl> get copyWith =>
      __$$SubOrderMainOrderImplCopyWithImpl<_$SubOrderMainOrderImpl>(
        this,
        _$identity,
      );
}

abstract class _SubOrderMainOrder implements SubOrderMainOrder {
  const factory _SubOrderMainOrder({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    required final DeliveryLocation deliveryLocation,
    final ContainerInfo? container,
  }) = _$SubOrderMainOrderImpl;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  DeliveryLocation get deliveryLocation;
  @override
  ContainerInfo? get container;

  /// Create a copy of SubOrderMainOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubOrderMainOrderImplCopyWith<_$SubOrderMainOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubOrdersResponse {
  String get message => throw _privateConstructorUsedError;
  List<SubOrder> get subOrders => throw _privateConstructorUsedError;

  /// Create a copy of SubOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubOrdersResponseCopyWith<SubOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubOrdersResponseCopyWith<$Res> {
  factory $SubOrdersResponseCopyWith(
    SubOrdersResponse value,
    $Res Function(SubOrdersResponse) then,
  ) = _$SubOrdersResponseCopyWithImpl<$Res, SubOrdersResponse>;
  @useResult
  $Res call({String message, List<SubOrder> subOrders});
}

/// @nodoc
class _$SubOrdersResponseCopyWithImpl<$Res, $Val extends SubOrdersResponse>
    implements $SubOrdersResponseCopyWith<$Res> {
  _$SubOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? subOrders = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            subOrders:
                null == subOrders
                    ? _value.subOrders
                    : subOrders // ignore: cast_nullable_to_non_nullable
                        as List<SubOrder>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubOrdersResponseImplCopyWith<$Res>
    implements $SubOrdersResponseCopyWith<$Res> {
  factory _$$SubOrdersResponseImplCopyWith(
    _$SubOrdersResponseImpl value,
    $Res Function(_$SubOrdersResponseImpl) then,
  ) = __$$SubOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, List<SubOrder> subOrders});
}

/// @nodoc
class __$$SubOrdersResponseImplCopyWithImpl<$Res>
    extends _$SubOrdersResponseCopyWithImpl<$Res, _$SubOrdersResponseImpl>
    implements _$$SubOrdersResponseImplCopyWith<$Res> {
  __$$SubOrdersResponseImplCopyWithImpl(
    _$SubOrdersResponseImpl _value,
    $Res Function(_$SubOrdersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? subOrders = null}) {
    return _then(
      _$SubOrdersResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        subOrders:
            null == subOrders
                ? _value._subOrders
                : subOrders // ignore: cast_nullable_to_non_nullable
                    as List<SubOrder>,
      ),
    );
  }
}

/// @nodoc

class _$SubOrdersResponseImpl implements _SubOrdersResponse {
  const _$SubOrdersResponseImpl({
    required this.message,
    required final List<SubOrder> subOrders,
  }) : _subOrders = subOrders;

  @override
  final String message;
  final List<SubOrder> _subOrders;
  @override
  List<SubOrder> get subOrders {
    if (_subOrders is EqualUnmodifiableListView) return _subOrders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subOrders);
  }

  @override
  String toString() {
    return 'SubOrdersResponse(message: $message, subOrders: $subOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubOrdersResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(
              other._subOrders,
              _subOrders,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    message,
    const DeepCollectionEquality().hash(_subOrders),
  );

  /// Create a copy of SubOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubOrdersResponseImplCopyWith<_$SubOrdersResponseImpl> get copyWith =>
      __$$SubOrdersResponseImplCopyWithImpl<_$SubOrdersResponseImpl>(
        this,
        _$identity,
      );
}

abstract class _SubOrdersResponse implements SubOrdersResponse {
  const factory _SubOrdersResponse({
    required final String message,
    required final List<SubOrder> subOrders,
  }) = _$SubOrdersResponseImpl;

  @override
  String get message;
  @override
  List<SubOrder> get subOrders;

  /// Create a copy of SubOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubOrdersResponseImplCopyWith<_$SubOrdersResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get orderId => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError; // unload, return
  String get status =>
      throw _privateConstructorUsedError; // pending, scheduled, in_progress, completed
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  @IdConverter()
  String? get driverId => throw _privateConstructorUsedError;
  DriverInfo? get driver => throw _privateConstructorUsedError;
  SubOrderMainOrder get order => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubOrderCopyWith<SubOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubOrderCopyWith<$Res> {
  factory $SubOrderCopyWith(SubOrder value, $Res Function(SubOrder) then) =
      _$SubOrderCopyWithImpl<$Res, SubOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String orderId,
    @IdConverter() String globalOrderId,
    String type,
    String status,
    DateTime deliveryDate,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    SubOrderMainOrder order,
    DateTime createdAt,
  });

  $DriverInfoCopyWith<$Res>? get driver;
  $SubOrderMainOrderCopyWith<$Res> get order;
}

/// @nodoc
class _$SubOrderCopyWithImpl<$Res, $Val extends SubOrder>
    implements $SubOrderCopyWith<$Res> {
  _$SubOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? globalOrderId = null,
    Object? type = null,
    Object? status = null,
    Object? deliveryDate = null,
    Object? driverId = freezed,
    Object? driver = freezed,
    Object? order = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            orderId:
                null == orderId
                    ? _value.orderId
                    : orderId // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            driverId:
                freezed == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            driver:
                freezed == driver
                    ? _value.driver
                    : driver // ignore: cast_nullable_to_non_nullable
                        as DriverInfo?,
            order:
                null == order
                    ? _value.order
                    : order // ignore: cast_nullable_to_non_nullable
                        as SubOrderMainOrder,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubOrderMainOrderCopyWith<$Res> get order {
    return $SubOrderMainOrderCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubOrderImplCopyWith<$Res>
    implements $SubOrderCopyWith<$Res> {
  factory _$$SubOrderImplCopyWith(
    _$SubOrderImpl value,
    $Res Function(_$SubOrderImpl) then,
  ) = __$$SubOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String orderId,
    @IdConverter() String globalOrderId,
    String type,
    String status,
    DateTime deliveryDate,
    @IdConverter() String? driverId,
    DriverInfo? driver,
    SubOrderMainOrder order,
    DateTime createdAt,
  });

  @override
  $DriverInfoCopyWith<$Res>? get driver;
  @override
  $SubOrderMainOrderCopyWith<$Res> get order;
}

/// @nodoc
class __$$SubOrderImplCopyWithImpl<$Res>
    extends _$SubOrderCopyWithImpl<$Res, _$SubOrderImpl>
    implements _$$SubOrderImplCopyWith<$Res> {
  __$$SubOrderImplCopyWithImpl(
    _$SubOrderImpl _value,
    $Res Function(_$SubOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? globalOrderId = null,
    Object? type = null,
    Object? status = null,
    Object? deliveryDate = null,
    Object? driverId = freezed,
    Object? driver = freezed,
    Object? order = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$SubOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        driverId:
            freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        driver:
            freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                    as DriverInfo?,
        order:
            null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                    as SubOrderMainOrder,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc

class _$SubOrderImpl implements _SubOrder {
  const _$SubOrderImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.orderId,
    @IdConverter() required this.globalOrderId,
    required this.type,
    required this.status,
    required this.deliveryDate,
    @IdConverter() this.driverId,
    this.driver,
    required this.order,
    required this.createdAt,
  });

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String orderId;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  final String type;
  // unload, return
  @override
  final String status;
  // pending, scheduled, in_progress, completed
  @override
  final DateTime deliveryDate;
  @override
  @IdConverter()
  final String? driverId;
  @override
  final DriverInfo? driver;
  @override
  final SubOrderMainOrder order;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'SubOrder(id: $id, orderId: $orderId, globalOrderId: $globalOrderId, type: $type, status: $status, deliveryDate: $deliveryDate, driverId: $driverId, driver: $driver, order: $order, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderId,
    globalOrderId,
    type,
    status,
    deliveryDate,
    driverId,
    driver,
    order,
    createdAt,
  );

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubOrderImplCopyWith<_$SubOrderImpl> get copyWith =>
      __$$SubOrderImplCopyWithImpl<_$SubOrderImpl>(this, _$identity);
}

abstract class _SubOrder implements SubOrder {
  const factory _SubOrder({
    @IdConverter() required final String id,
    @IdConverter() required final String orderId,
    @IdConverter() required final String globalOrderId,
    required final String type,
    required final String status,
    required final DateTime deliveryDate,
    @IdConverter() final String? driverId,
    final DriverInfo? driver,
    required final SubOrderMainOrder order,
    required final DateTime createdAt,
  }) = _$SubOrderImpl;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get orderId;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  String get type; // unload, return
  @override
  String get status; // pending, scheduled, in_progress, completed
  @override
  DateTime get deliveryDate;
  @override
  @IdConverter()
  String? get driverId;
  @override
  DriverInfo? get driver;
  @override
  SubOrderMainOrder get order;
  @override
  DateTime get createdAt;

  /// Create a copy of SubOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubOrderImplCopyWith<_$SubOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompletedOrdersResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CompletedOrder> get orders => throw _privateConstructorUsedError;
  PaginationInfo get pagination => throw _privateConstructorUsedError;
  AvailableFilters? get availableFilters => throw _privateConstructorUsedError;

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedOrdersResponseCopyWith<CompletedOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedOrdersResponseCopyWith<$Res> {
  factory $CompletedOrdersResponseCopyWith(
    CompletedOrdersResponse value,
    $Res Function(CompletedOrdersResponse) then,
  ) = _$CompletedOrdersResponseCopyWithImpl<$Res, CompletedOrdersResponse>;
  @useResult
  $Res call({
    bool success,
    String message,
    List<CompletedOrder> orders,
    PaginationInfo pagination,
    AvailableFilters? availableFilters,
  });

  $PaginationInfoCopyWith<$Res> get pagination;
  $AvailableFiltersCopyWith<$Res>? get availableFilters;
}

/// @nodoc
class _$CompletedOrdersResponseCopyWithImpl<
  $Res,
  $Val extends CompletedOrdersResponse
>
    implements $CompletedOrdersResponseCopyWith<$Res> {
  _$CompletedOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? orders = null,
    Object? pagination = null,
    Object? availableFilters = freezed,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<CompletedOrder>,
            pagination:
                null == pagination
                    ? _value.pagination
                    : pagination // ignore: cast_nullable_to_non_nullable
                        as PaginationInfo,
            availableFilters:
                freezed == availableFilters
                    ? _value.availableFilters
                    : availableFilters // ignore: cast_nullable_to_non_nullable
                        as AvailableFilters?,
          )
          as $Val,
    );
  }

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationInfoCopyWith<$Res> get pagination {
    return $PaginationInfoCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AvailableFiltersCopyWith<$Res>? get availableFilters {
    if (_value.availableFilters == null) {
      return null;
    }

    return $AvailableFiltersCopyWith<$Res>(_value.availableFilters!, (value) {
      return _then(_value.copyWith(availableFilters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedOrdersResponseImplCopyWith<$Res>
    implements $CompletedOrdersResponseCopyWith<$Res> {
  factory _$$CompletedOrdersResponseImplCopyWith(
    _$CompletedOrdersResponseImpl value,
    $Res Function(_$CompletedOrdersResponseImpl) then,
  ) = __$$CompletedOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String message,
    List<CompletedOrder> orders,
    PaginationInfo pagination,
    AvailableFilters? availableFilters,
  });

  @override
  $PaginationInfoCopyWith<$Res> get pagination;
  @override
  $AvailableFiltersCopyWith<$Res>? get availableFilters;
}

/// @nodoc
class __$$CompletedOrdersResponseImplCopyWithImpl<$Res>
    extends
        _$CompletedOrdersResponseCopyWithImpl<
          $Res,
          _$CompletedOrdersResponseImpl
        >
    implements _$$CompletedOrdersResponseImplCopyWith<$Res> {
  __$$CompletedOrdersResponseImplCopyWithImpl(
    _$CompletedOrdersResponseImpl _value,
    $Res Function(_$CompletedOrdersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? orders = null,
    Object? pagination = null,
    Object? availableFilters = freezed,
  }) {
    return _then(
      _$CompletedOrdersResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<CompletedOrder>,
        pagination:
            null == pagination
                ? _value.pagination
                : pagination // ignore: cast_nullable_to_non_nullable
                    as PaginationInfo,
        availableFilters:
            freezed == availableFilters
                ? _value.availableFilters
                : availableFilters // ignore: cast_nullable_to_non_nullable
                    as AvailableFilters?,
      ),
    );
  }
}

/// @nodoc

class _$CompletedOrdersResponseImpl implements _CompletedOrdersResponse {
  const _$CompletedOrdersResponseImpl({
    required this.success,
    required this.message,
    required final List<CompletedOrder> orders,
    required this.pagination,
    this.availableFilters,
  }) : _orders = orders;

  @override
  final bool success;
  @override
  final String message;
  final List<CompletedOrder> _orders;
  @override
  List<CompletedOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final PaginationInfo pagination;
  @override
  final AvailableFilters? availableFilters;

  @override
  String toString() {
    return 'CompletedOrdersResponse(success: $success, message: $message, orders: $orders, pagination: $pagination, availableFilters: $availableFilters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrdersResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.availableFilters, availableFilters) ||
                other.availableFilters == availableFilters));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_orders),
    pagination,
    availableFilters,
  );

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedOrdersResponseImplCopyWith<_$CompletedOrdersResponseImpl>
  get copyWith => __$$CompletedOrdersResponseImplCopyWithImpl<
    _$CompletedOrdersResponseImpl
  >(this, _$identity);
}

abstract class _CompletedOrdersResponse implements CompletedOrdersResponse {
  const factory _CompletedOrdersResponse({
    required final bool success,
    required final String message,
    required final List<CompletedOrder> orders,
    required final PaginationInfo pagination,
    final AvailableFilters? availableFilters,
  }) = _$CompletedOrdersResponseImpl;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<CompletedOrder> get orders;
  @override
  PaginationInfo get pagination;
  @override
  AvailableFilters? get availableFilters;

  /// Create a copy of CompletedOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedOrdersResponseImplCopyWith<_$CompletedOrdersResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AvailableFilters _$AvailableFiltersFromJson(Map<String, dynamic> json) {
  return _AvailableFilters.fromJson(json);
}

/// @nodoc
mixin _$AvailableFilters {
  List<String> get cities => throw _privateConstructorUsedError;
  List<String> get containerTypes => throw _privateConstructorUsedError;

  /// Serializes this AvailableFilters to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AvailableFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AvailableFiltersCopyWith<AvailableFilters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailableFiltersCopyWith<$Res> {
  factory $AvailableFiltersCopyWith(
    AvailableFilters value,
    $Res Function(AvailableFilters) then,
  ) = _$AvailableFiltersCopyWithImpl<$Res, AvailableFilters>;
  @useResult
  $Res call({List<String> cities, List<String> containerTypes});
}

/// @nodoc
class _$AvailableFiltersCopyWithImpl<$Res, $Val extends AvailableFilters>
    implements $AvailableFiltersCopyWith<$Res> {
  _$AvailableFiltersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AvailableFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cities = null, Object? containerTypes = null}) {
    return _then(
      _value.copyWith(
            cities:
                null == cities
                    ? _value.cities
                    : cities // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            containerTypes:
                null == containerTypes
                    ? _value.containerTypes
                    : containerTypes // ignore: cast_nullable_to_non_nullable
                        as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AvailableFiltersImplCopyWith<$Res>
    implements $AvailableFiltersCopyWith<$Res> {
  factory _$$AvailableFiltersImplCopyWith(
    _$AvailableFiltersImpl value,
    $Res Function(_$AvailableFiltersImpl) then,
  ) = __$$AvailableFiltersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> cities, List<String> containerTypes});
}

/// @nodoc
class __$$AvailableFiltersImplCopyWithImpl<$Res>
    extends _$AvailableFiltersCopyWithImpl<$Res, _$AvailableFiltersImpl>
    implements _$$AvailableFiltersImplCopyWith<$Res> {
  __$$AvailableFiltersImplCopyWithImpl(
    _$AvailableFiltersImpl _value,
    $Res Function(_$AvailableFiltersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AvailableFilters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? cities = null, Object? containerTypes = null}) {
    return _then(
      _$AvailableFiltersImpl(
        cities:
            null == cities
                ? _value._cities
                : cities // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        containerTypes:
            null == containerTypes
                ? _value._containerTypes
                : containerTypes // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailableFiltersImpl implements _AvailableFilters {
  const _$AvailableFiltersImpl({
    required final List<String> cities,
    required final List<String> containerTypes,
  }) : _cities = cities,
       _containerTypes = containerTypes;

  factory _$AvailableFiltersImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailableFiltersImplFromJson(json);

  final List<String> _cities;
  @override
  List<String> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  final List<String> _containerTypes;
  @override
  List<String> get containerTypes {
    if (_containerTypes is EqualUnmodifiableListView) return _containerTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_containerTypes);
  }

  @override
  String toString() {
    return 'AvailableFilters(cities: $cities, containerTypes: $containerTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableFiltersImpl &&
            const DeepCollectionEquality().equals(other._cities, _cities) &&
            const DeepCollectionEquality().equals(
              other._containerTypes,
              _containerTypes,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_cities),
    const DeepCollectionEquality().hash(_containerTypes),
  );

  /// Create a copy of AvailableFilters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableFiltersImplCopyWith<_$AvailableFiltersImpl> get copyWith =>
      __$$AvailableFiltersImplCopyWithImpl<_$AvailableFiltersImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailableFiltersImplToJson(this);
  }
}

abstract class _AvailableFilters implements AvailableFilters {
  const factory _AvailableFilters({
    required final List<String> cities,
    required final List<String> containerTypes,
  }) = _$AvailableFiltersImpl;

  factory _AvailableFilters.fromJson(Map<String, dynamic> json) =
      _$AvailableFiltersImpl.fromJson;

  @override
  List<String> get cities;
  @override
  List<String> get containerTypes;

  /// Create a copy of AvailableFilters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AvailableFiltersImplCopyWith<_$AvailableFiltersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompletedOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get containerType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get totalPrice => throw _privateConstructorUsedError;
  DeliveryLocation get deliveryLocation => throw _privateConstructorUsedError;
  DriverInfo? get driver => throw _privateConstructorUsedError;
  ContainerInfo? get container => throw _privateConstructorUsedError;

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompletedOrderCopyWith<CompletedOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedOrderCopyWith<$Res> {
  factory $CompletedOrderCopyWith(
    CompletedOrder value,
    $Res Function(CompletedOrder) then,
  ) = _$CompletedOrderCopyWithImpl<$Res, CompletedOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String? orderNumber,
    String? containerType,
    String? status,
    DateTime deliveryDate,
    DateTime? completedAt,
    @DoubleConverter() double totalPrice,
    DeliveryLocation deliveryLocation,
    DriverInfo? driver,
    ContainerInfo? container,
  });

  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  $DriverInfoCopyWith<$Res>? get driver;
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class _$CompletedOrderCopyWithImpl<$Res, $Val extends CompletedOrder>
    implements $CompletedOrderCopyWith<$Res> {
  _$CompletedOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = freezed,
    Object? containerType = freezed,
    Object? status = freezed,
    Object? deliveryDate = null,
    Object? completedAt = freezed,
    Object? totalPrice = null,
    Object? deliveryLocation = null,
    Object? driver = freezed,
    Object? container = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            orderNumber:
                freezed == orderNumber
                    ? _value.orderNumber
                    : orderNumber // ignore: cast_nullable_to_non_nullable
                        as String?,
            containerType:
                freezed == containerType
                    ? _value.containerType
                    : containerType // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                freezed == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String?,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            completedAt:
                freezed == completedAt
                    ? _value.completedAt
                    : completedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            totalPrice:
                null == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            deliveryLocation:
                null == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DeliveryLocation,
            driver:
                freezed == driver
                    ? _value.driver
                    : driver // ignore: cast_nullable_to_non_nullable
                        as DriverInfo?,
            container:
                freezed == container
                    ? _value.container
                    : container // ignore: cast_nullable_to_non_nullable
                        as ContainerInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryLocationCopyWith<$Res> get deliveryLocation {
    return $DeliveryLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerInfoCopyWith<$Res>? get container {
    if (_value.container == null) {
      return null;
    }

    return $ContainerInfoCopyWith<$Res>(_value.container!, (value) {
      return _then(_value.copyWith(container: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompletedOrderImplCopyWith<$Res>
    implements $CompletedOrderCopyWith<$Res> {
  factory _$$CompletedOrderImplCopyWith(
    _$CompletedOrderImpl value,
    $Res Function(_$CompletedOrderImpl) then,
  ) = __$$CompletedOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String? orderNumber,
    String? containerType,
    String? status,
    DateTime deliveryDate,
    DateTime? completedAt,
    @DoubleConverter() double totalPrice,
    DeliveryLocation deliveryLocation,
    DriverInfo? driver,
    ContainerInfo? container,
  });

  @override
  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  @override
  $DriverInfoCopyWith<$Res>? get driver;
  @override
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class __$$CompletedOrderImplCopyWithImpl<$Res>
    extends _$CompletedOrderCopyWithImpl<$Res, _$CompletedOrderImpl>
    implements _$$CompletedOrderImplCopyWith<$Res> {
  __$$CompletedOrderImplCopyWithImpl(
    _$CompletedOrderImpl _value,
    $Res Function(_$CompletedOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = freezed,
    Object? containerType = freezed,
    Object? status = freezed,
    Object? deliveryDate = null,
    Object? completedAt = freezed,
    Object? totalPrice = null,
    Object? deliveryLocation = null,
    Object? driver = freezed,
    Object? container = freezed,
  }) {
    return _then(
      _$CompletedOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        orderNumber:
            freezed == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                    as String?,
        containerType:
            freezed == containerType
                ? _value.containerType
                : containerType // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String?,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        completedAt:
            freezed == completedAt
                ? _value.completedAt
                : completedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        totalPrice:
            null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        deliveryLocation:
            null == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DeliveryLocation,
        driver:
            freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                    as DriverInfo?,
        container:
            freezed == container
                ? _value.container
                : container // ignore: cast_nullable_to_non_nullable
                    as ContainerInfo?,
      ),
    );
  }
}

/// @nodoc

class _$CompletedOrderImpl implements _CompletedOrder {
  const _$CompletedOrderImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    this.orderNumber,
    this.containerType,
    this.status,
    required this.deliveryDate,
    this.completedAt,
    @DoubleConverter() required this.totalPrice,
    required this.deliveryLocation,
    this.driver,
    this.container,
  });

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  final String? orderNumber;
  @override
  final String? containerType;
  @override
  final String? status;
  @override
  final DateTime deliveryDate;
  @override
  final DateTime? completedAt;
  @override
  @DoubleConverter()
  final double totalPrice;
  @override
  final DeliveryLocation deliveryLocation;
  @override
  final DriverInfo? driver;
  @override
  final ContainerInfo? container;

  @override
  String toString() {
    return 'CompletedOrder(id: $id, globalOrderId: $globalOrderId, orderNumber: $orderNumber, containerType: $containerType, status: $status, deliveryDate: $deliveryDate, completedAt: $completedAt, totalPrice: $totalPrice, deliveryLocation: $deliveryLocation, driver: $driver, container: $container)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.containerType, containerType) ||
                other.containerType == containerType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.container, container) ||
                other.container == container));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    globalOrderId,
    orderNumber,
    containerType,
    status,
    deliveryDate,
    completedAt,
    totalPrice,
    deliveryLocation,
    driver,
    container,
  );

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedOrderImplCopyWith<_$CompletedOrderImpl> get copyWith =>
      __$$CompletedOrderImplCopyWithImpl<_$CompletedOrderImpl>(
        this,
        _$identity,
      );
}

abstract class _CompletedOrder implements CompletedOrder {
  const factory _CompletedOrder({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    final String? orderNumber,
    final String? containerType,
    final String? status,
    required final DateTime deliveryDate,
    final DateTime? completedAt,
    @DoubleConverter() required final double totalPrice,
    required final DeliveryLocation deliveryLocation,
    final DriverInfo? driver,
    final ContainerInfo? container,
  }) = _$CompletedOrderImpl;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  String? get orderNumber;
  @override
  String? get containerType;
  @override
  String? get status;
  @override
  DateTime get deliveryDate;
  @override
  DateTime? get completedAt;
  @override
  @DoubleConverter()
  double get totalPrice;
  @override
  DeliveryLocation get deliveryLocation;
  @override
  DriverInfo? get driver;
  @override
  ContainerInfo? get container;

  /// Create a copy of CompletedOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompletedOrderImplCopyWith<_$CompletedOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationInfo _$PaginationInfoFromJson(Map<String, dynamic> json) {
  return _PaginationInfo.fromJson(json);
}

/// @nodoc
mixin _$PaginationInfo {
  int get totalOrders => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get ordersPerPage => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get hasPrevPage => throw _privateConstructorUsedError;

  /// Serializes this PaginationInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationInfoCopyWith<PaginationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationInfoCopyWith<$Res> {
  factory $PaginationInfoCopyWith(
    PaginationInfo value,
    $Res Function(PaginationInfo) then,
  ) = _$PaginationInfoCopyWithImpl<$Res, PaginationInfo>;
  @useResult
  $Res call({
    int totalOrders,
    int currentPage,
    int ordersPerPage,
    int totalPages,
    bool hasNextPage,
    bool hasPrevPage,
  });
}

/// @nodoc
class _$PaginationInfoCopyWithImpl<$Res, $Val extends PaginationInfo>
    implements $PaginationInfoCopyWith<$Res> {
  _$PaginationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? currentPage = null,
    Object? ordersPerPage = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(
      _value.copyWith(
            totalOrders:
                null == totalOrders
                    ? _value.totalOrders
                    : totalOrders // ignore: cast_nullable_to_non_nullable
                        as int,
            currentPage:
                null == currentPage
                    ? _value.currentPage
                    : currentPage // ignore: cast_nullable_to_non_nullable
                        as int,
            ordersPerPage:
                null == ordersPerPage
                    ? _value.ordersPerPage
                    : ordersPerPage // ignore: cast_nullable_to_non_nullable
                        as int,
            totalPages:
                null == totalPages
                    ? _value.totalPages
                    : totalPages // ignore: cast_nullable_to_non_nullable
                        as int,
            hasNextPage:
                null == hasNextPage
                    ? _value.hasNextPage
                    : hasNextPage // ignore: cast_nullable_to_non_nullable
                        as bool,
            hasPrevPage:
                null == hasPrevPage
                    ? _value.hasPrevPage
                    : hasPrevPage // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PaginationInfoImplCopyWith<$Res>
    implements $PaginationInfoCopyWith<$Res> {
  factory _$$PaginationInfoImplCopyWith(
    _$PaginationInfoImpl value,
    $Res Function(_$PaginationInfoImpl) then,
  ) = __$$PaginationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalOrders,
    int currentPage,
    int ordersPerPage,
    int totalPages,
    bool hasNextPage,
    bool hasPrevPage,
  });
}

/// @nodoc
class __$$PaginationInfoImplCopyWithImpl<$Res>
    extends _$PaginationInfoCopyWithImpl<$Res, _$PaginationInfoImpl>
    implements _$$PaginationInfoImplCopyWith<$Res> {
  __$$PaginationInfoImplCopyWithImpl(
    _$PaginationInfoImpl _value,
    $Res Function(_$PaginationInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? currentPage = null,
    Object? ordersPerPage = null,
    Object? totalPages = null,
    Object? hasNextPage = null,
    Object? hasPrevPage = null,
  }) {
    return _then(
      _$PaginationInfoImpl(
        totalOrders:
            null == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                    as int,
        currentPage:
            null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                    as int,
        ordersPerPage:
            null == ordersPerPage
                ? _value.ordersPerPage
                : ordersPerPage // ignore: cast_nullable_to_non_nullable
                    as int,
        totalPages:
            null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                    as int,
        hasNextPage:
            null == hasNextPage
                ? _value.hasNextPage
                : hasNextPage // ignore: cast_nullable_to_non_nullable
                    as bool,
        hasPrevPage:
            null == hasPrevPage
                ? _value.hasPrevPage
                : hasPrevPage // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationInfoImpl implements _PaginationInfo {
  const _$PaginationInfoImpl({
    required this.totalOrders,
    required this.currentPage,
    required this.ordersPerPage,
    required this.totalPages,
    required this.hasNextPage,
    required this.hasPrevPage,
  });

  factory _$PaginationInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationInfoImplFromJson(json);

  @override
  final int totalOrders;
  @override
  final int currentPage;
  @override
  final int ordersPerPage;
  @override
  final int totalPages;
  @override
  final bool hasNextPage;
  @override
  final bool hasPrevPage;

  @override
  String toString() {
    return 'PaginationInfo(totalOrders: $totalOrders, currentPage: $currentPage, ordersPerPage: $ordersPerPage, totalPages: $totalPages, hasNextPage: $hasNextPage, hasPrevPage: $hasPrevPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationInfoImpl &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.ordersPerPage, ordersPerPage) ||
                other.ordersPerPage == ordersPerPage) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.hasPrevPage, hasPrevPage) ||
                other.hasPrevPage == hasPrevPage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalOrders,
    currentPage,
    ordersPerPage,
    totalPages,
    hasNextPage,
    hasPrevPage,
  );

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      __$$PaginationInfoImplCopyWithImpl<_$PaginationInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationInfoImplToJson(this);
  }
}

abstract class _PaginationInfo implements PaginationInfo {
  const factory _PaginationInfo({
    required final int totalOrders,
    required final int currentPage,
    required final int ordersPerPage,
    required final int totalPages,
    required final bool hasNextPage,
    required final bool hasPrevPage,
  }) = _$PaginationInfoImpl;

  factory _PaginationInfo.fromJson(Map<String, dynamic> json) =
      _$PaginationInfoImpl.fromJson;

  @override
  int get totalOrders;
  @override
  int get currentPage;
  @override
  int get ordersPerPage;
  @override
  int get totalPages;
  @override
  bool get hasNextPage;
  @override
  bool get hasPrevPage;

  /// Create a copy of PaginationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationInfoImplCopyWith<_$PaginationInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CancelledOrdersResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CancelledOrder> get orders => throw _privateConstructorUsedError;

  /// Create a copy of CancelledOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelledOrdersResponseCopyWith<CancelledOrdersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelledOrdersResponseCopyWith<$Res> {
  factory $CancelledOrdersResponseCopyWith(
    CancelledOrdersResponse value,
    $Res Function(CancelledOrdersResponse) then,
  ) = _$CancelledOrdersResponseCopyWithImpl<$Res, CancelledOrdersResponse>;
  @useResult
  $Res call({bool success, String message, List<CancelledOrder> orders});
}

/// @nodoc
class _$CancelledOrdersResponseCopyWithImpl<
  $Res,
  $Val extends CancelledOrdersResponse
>
    implements $CancelledOrdersResponseCopyWith<$Res> {
  _$CancelledOrdersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelledOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? orders = null,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<CancelledOrder>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CancelledOrdersResponseImplCopyWith<$Res>
    implements $CancelledOrdersResponseCopyWith<$Res> {
  factory _$$CancelledOrdersResponseImplCopyWith(
    _$CancelledOrdersResponseImpl value,
    $Res Function(_$CancelledOrdersResponseImpl) then,
  ) = __$$CancelledOrdersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, List<CancelledOrder> orders});
}

/// @nodoc
class __$$CancelledOrdersResponseImplCopyWithImpl<$Res>
    extends
        _$CancelledOrdersResponseCopyWithImpl<
          $Res,
          _$CancelledOrdersResponseImpl
        >
    implements _$$CancelledOrdersResponseImplCopyWith<$Res> {
  __$$CancelledOrdersResponseImplCopyWithImpl(
    _$CancelledOrdersResponseImpl _value,
    $Res Function(_$CancelledOrdersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelledOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? orders = null,
  }) {
    return _then(
      _$CancelledOrdersResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<CancelledOrder>,
      ),
    );
  }
}

/// @nodoc

class _$CancelledOrdersResponseImpl implements _CancelledOrdersResponse {
  const _$CancelledOrdersResponseImpl({
    required this.success,
    required this.message,
    required final List<CancelledOrder> orders,
  }) : _orders = orders;

  @override
  final bool success;
  @override
  final String message;
  final List<CancelledOrder> _orders;
  @override
  List<CancelledOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'CancelledOrdersResponse(success: $success, message: $message, orders: $orders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledOrdersResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_orders),
  );

  /// Create a copy of CancelledOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelledOrdersResponseImplCopyWith<_$CancelledOrdersResponseImpl>
  get copyWith => __$$CancelledOrdersResponseImplCopyWithImpl<
    _$CancelledOrdersResponseImpl
  >(this, _$identity);
}

abstract class _CancelledOrdersResponse implements CancelledOrdersResponse {
  const factory _CancelledOrdersResponse({
    required final bool success,
    required final String message,
    required final List<CancelledOrder> orders,
  }) = _$CancelledOrdersResponseImpl;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<CancelledOrder> get orders;

  /// Create a copy of CancelledOrdersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelledOrdersResponseImplCopyWith<_$CancelledOrdersResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CancelledOrder {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  String get orderNumber => throw _privateConstructorUsedError;
  String? get containerType => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get totalPrice => throw _privateConstructorUsedError;
  DeliveryLocation get deliveryLocation => throw _privateConstructorUsedError;
  String? get cancellationReason => throw _privateConstructorUsedError;
  DateTime? get cancelledAt => throw _privateConstructorUsedError;
  DriverInfo? get driver => throw _privateConstructorUsedError;
  ContainerInfo? get container => throw _privateConstructorUsedError;

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CancelledOrderCopyWith<CancelledOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelledOrderCopyWith<$Res> {
  factory $CancelledOrderCopyWith(
    CancelledOrder value,
    $Res Function(CancelledOrder) then,
  ) = _$CancelledOrderCopyWithImpl<$Res, CancelledOrder>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String orderNumber,
    String? containerType,
    String status,
    DateTime deliveryDate,
    @DoubleConverter() double totalPrice,
    DeliveryLocation deliveryLocation,
    String? cancellationReason,
    DateTime? cancelledAt,
    DriverInfo? driver,
    ContainerInfo? container,
  });

  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  $DriverInfoCopyWith<$Res>? get driver;
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class _$CancelledOrderCopyWithImpl<$Res, $Val extends CancelledOrder>
    implements $CancelledOrderCopyWith<$Res> {
  _$CancelledOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = null,
    Object? containerType = freezed,
    Object? status = null,
    Object? deliveryDate = null,
    Object? totalPrice = null,
    Object? deliveryLocation = null,
    Object? cancellationReason = freezed,
    Object? cancelledAt = freezed,
    Object? driver = freezed,
    Object? container = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            orderNumber:
                null == orderNumber
                    ? _value.orderNumber
                    : orderNumber // ignore: cast_nullable_to_non_nullable
                        as String,
            containerType:
                freezed == containerType
                    ? _value.containerType
                    : containerType // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            totalPrice:
                null == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            deliveryLocation:
                null == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DeliveryLocation,
            cancellationReason:
                freezed == cancellationReason
                    ? _value.cancellationReason
                    : cancellationReason // ignore: cast_nullable_to_non_nullable
                        as String?,
            cancelledAt:
                freezed == cancelledAt
                    ? _value.cancelledAt
                    : cancelledAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            driver:
                freezed == driver
                    ? _value.driver
                    : driver // ignore: cast_nullable_to_non_nullable
                        as DriverInfo?,
            container:
                freezed == container
                    ? _value.container
                    : container // ignore: cast_nullable_to_non_nullable
                        as ContainerInfo?,
          )
          as $Val,
    );
  }

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DeliveryLocationCopyWith<$Res> get deliveryLocation {
    return $DeliveryLocationCopyWith<$Res>(_value.deliveryLocation, (value) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverInfoCopyWith<$Res>? get driver {
    if (_value.driver == null) {
      return null;
    }

    return $DriverInfoCopyWith<$Res>(_value.driver!, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerInfoCopyWith<$Res>? get container {
    if (_value.container == null) {
      return null;
    }

    return $ContainerInfoCopyWith<$Res>(_value.container!, (value) {
      return _then(_value.copyWith(container: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CancelledOrderImplCopyWith<$Res>
    implements $CancelledOrderCopyWith<$Res> {
  factory _$$CancelledOrderImplCopyWith(
    _$CancelledOrderImpl value,
    $Res Function(_$CancelledOrderImpl) then,
  ) = __$$CancelledOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    String orderNumber,
    String? containerType,
    String status,
    DateTime deliveryDate,
    @DoubleConverter() double totalPrice,
    DeliveryLocation deliveryLocation,
    String? cancellationReason,
    DateTime? cancelledAt,
    DriverInfo? driver,
    ContainerInfo? container,
  });

  @override
  $DeliveryLocationCopyWith<$Res> get deliveryLocation;
  @override
  $DriverInfoCopyWith<$Res>? get driver;
  @override
  $ContainerInfoCopyWith<$Res>? get container;
}

/// @nodoc
class __$$CancelledOrderImplCopyWithImpl<$Res>
    extends _$CancelledOrderCopyWithImpl<$Res, _$CancelledOrderImpl>
    implements _$$CancelledOrderImplCopyWith<$Res> {
  __$$CancelledOrderImplCopyWithImpl(
    _$CancelledOrderImpl _value,
    $Res Function(_$CancelledOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? orderNumber = null,
    Object? containerType = freezed,
    Object? status = null,
    Object? deliveryDate = null,
    Object? totalPrice = null,
    Object? deliveryLocation = null,
    Object? cancellationReason = freezed,
    Object? cancelledAt = freezed,
    Object? driver = freezed,
    Object? container = freezed,
  }) {
    return _then(
      _$CancelledOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        orderNumber:
            null == orderNumber
                ? _value.orderNumber
                : orderNumber // ignore: cast_nullable_to_non_nullable
                    as String,
        containerType:
            freezed == containerType
                ? _value.containerType
                : containerType // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        totalPrice:
            null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        deliveryLocation:
            null == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DeliveryLocation,
        cancellationReason:
            freezed == cancellationReason
                ? _value.cancellationReason
                : cancellationReason // ignore: cast_nullable_to_non_nullable
                    as String?,
        cancelledAt:
            freezed == cancelledAt
                ? _value.cancelledAt
                : cancelledAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        driver:
            freezed == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                    as DriverInfo?,
        container:
            freezed == container
                ? _value.container
                : container // ignore: cast_nullable_to_non_nullable
                    as ContainerInfo?,
      ),
    );
  }
}

/// @nodoc

class _$CancelledOrderImpl implements _CancelledOrder {
  const _$CancelledOrderImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    required this.orderNumber,
    this.containerType,
    required this.status,
    required this.deliveryDate,
    @DoubleConverter() required this.totalPrice,
    required this.deliveryLocation,
    this.cancellationReason,
    this.cancelledAt,
    this.driver,
    this.container,
  });

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  final String orderNumber;
  @override
  final String? containerType;
  @override
  final String status;
  @override
  final DateTime deliveryDate;
  @override
  @DoubleConverter()
  final double totalPrice;
  @override
  final DeliveryLocation deliveryLocation;
  @override
  final String? cancellationReason;
  @override
  final DateTime? cancelledAt;
  @override
  final DriverInfo? driver;
  @override
  final ContainerInfo? container;

  @override
  String toString() {
    return 'CancelledOrder(id: $id, globalOrderId: $globalOrderId, orderNumber: $orderNumber, containerType: $containerType, status: $status, deliveryDate: $deliveryDate, totalPrice: $totalPrice, deliveryLocation: $deliveryLocation, cancellationReason: $cancellationReason, cancelledAt: $cancelledAt, driver: $driver, container: $container)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelledOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.containerType, containerType) ||
                other.containerType == containerType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.cancellationReason, cancellationReason) ||
                other.cancellationReason == cancellationReason) &&
            (identical(other.cancelledAt, cancelledAt) ||
                other.cancelledAt == cancelledAt) &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.container, container) ||
                other.container == container));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    globalOrderId,
    orderNumber,
    containerType,
    status,
    deliveryDate,
    totalPrice,
    deliveryLocation,
    cancellationReason,
    cancelledAt,
    driver,
    container,
  );

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelledOrderImplCopyWith<_$CancelledOrderImpl> get copyWith =>
      __$$CancelledOrderImplCopyWithImpl<_$CancelledOrderImpl>(
        this,
        _$identity,
      );
}

abstract class _CancelledOrder implements CancelledOrder {
  const factory _CancelledOrder({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    required final String orderNumber,
    final String? containerType,
    required final String status,
    required final DateTime deliveryDate,
    @DoubleConverter() required final double totalPrice,
    required final DeliveryLocation deliveryLocation,
    final String? cancellationReason,
    final DateTime? cancelledAt,
    final DriverInfo? driver,
    final ContainerInfo? container,
  }) = _$CancelledOrderImpl;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  String get orderNumber;
  @override
  String? get containerType;
  @override
  String get status;
  @override
  DateTime get deliveryDate;
  @override
  @DoubleConverter()
  double get totalPrice;
  @override
  DeliveryLocation get deliveryLocation;
  @override
  String? get cancellationReason;
  @override
  DateTime? get cancelledAt;
  @override
  DriverInfo? get driver;
  @override
  ContainerInfo? get container;

  /// Create a copy of CancelledOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CancelledOrderImplCopyWith<_$CancelledOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubmitOfferRequest _$SubmitOfferRequestFromJson(Map<String, dynamic> json) {
  return _SubmitOfferRequest.fromJson(json);
}

/// @nodoc
mixin _$SubmitOfferRequest {
  String get globalOrderId => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get price => throw _privateConstructorUsedError;
  int? get rentalDuration => throw _privateConstructorUsedError;

  /// Serializes this SubmitOfferRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubmitOfferRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitOfferRequestCopyWith<SubmitOfferRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitOfferRequestCopyWith<$Res> {
  factory $SubmitOfferRequestCopyWith(
    SubmitOfferRequest value,
    $Res Function(SubmitOfferRequest) then,
  ) = _$SubmitOfferRequestCopyWithImpl<$Res, SubmitOfferRequest>;
  @useResult
  $Res call({
    String globalOrderId,
    @DoubleConverter() double price,
    int? rentalDuration,
  });
}

/// @nodoc
class _$SubmitOfferRequestCopyWithImpl<$Res, $Val extends SubmitOfferRequest>
    implements $SubmitOfferRequestCopyWith<$Res> {
  _$SubmitOfferRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitOfferRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalOrderId = null,
    Object? price = null,
    Object? rentalDuration = freezed,
  }) {
    return _then(
      _value.copyWith(
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            rentalDuration:
                freezed == rentalDuration
                    ? _value.rentalDuration
                    : rentalDuration // ignore: cast_nullable_to_non_nullable
                        as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SubmitOfferRequestImplCopyWith<$Res>
    implements $SubmitOfferRequestCopyWith<$Res> {
  factory _$$SubmitOfferRequestImplCopyWith(
    _$SubmitOfferRequestImpl value,
    $Res Function(_$SubmitOfferRequestImpl) then,
  ) = __$$SubmitOfferRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String globalOrderId,
    @DoubleConverter() double price,
    int? rentalDuration,
  });
}

/// @nodoc
class __$$SubmitOfferRequestImplCopyWithImpl<$Res>
    extends _$SubmitOfferRequestCopyWithImpl<$Res, _$SubmitOfferRequestImpl>
    implements _$$SubmitOfferRequestImplCopyWith<$Res> {
  __$$SubmitOfferRequestImplCopyWithImpl(
    _$SubmitOfferRequestImpl _value,
    $Res Function(_$SubmitOfferRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SubmitOfferRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? globalOrderId = null,
    Object? price = null,
    Object? rentalDuration = freezed,
  }) {
    return _then(
      _$SubmitOfferRequestImpl(
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        rentalDuration:
            freezed == rentalDuration
                ? _value.rentalDuration
                : rentalDuration // ignore: cast_nullable_to_non_nullable
                    as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SubmitOfferRequestImpl implements _SubmitOfferRequest {
  const _$SubmitOfferRequestImpl({
    required this.globalOrderId,
    @DoubleConverter() required this.price,
    this.rentalDuration,
  });

  factory _$SubmitOfferRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubmitOfferRequestImplFromJson(json);

  @override
  final String globalOrderId;
  @override
  @DoubleConverter()
  final double price;
  @override
  final int? rentalDuration;

  @override
  String toString() {
    return 'SubmitOfferRequest(globalOrderId: $globalOrderId, price: $price, rentalDuration: $rentalDuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitOfferRequestImpl &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rentalDuration, rentalDuration) ||
                other.rentalDuration == rentalDuration));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, globalOrderId, price, rentalDuration);

  /// Create a copy of SubmitOfferRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitOfferRequestImplCopyWith<_$SubmitOfferRequestImpl> get copyWith =>
      __$$SubmitOfferRequestImplCopyWithImpl<_$SubmitOfferRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SubmitOfferRequestImplToJson(this);
  }
}

abstract class _SubmitOfferRequest implements SubmitOfferRequest {
  const factory _SubmitOfferRequest({
    required final String globalOrderId,
    @DoubleConverter() required final double price,
    final int? rentalDuration,
  }) = _$SubmitOfferRequestImpl;

  factory _SubmitOfferRequest.fromJson(Map<String, dynamic> json) =
      _$SubmitOfferRequestImpl.fromJson;

  @override
  String get globalOrderId;
  @override
  @DoubleConverter()
  double get price;
  @override
  int? get rentalDuration;

  /// Create a copy of SubmitOfferRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitOfferRequestImplCopyWith<_$SubmitOfferRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferResponse _$OfferResponseFromJson(Map<String, dynamic> json) {
  return _OfferResponse.fromJson(json);
}

/// @nodoc
mixin _$OfferResponse {
  String get message => throw _privateConstructorUsedError;
  OfferDetails get offer => throw _privateConstructorUsedError;

  /// Serializes this OfferResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferResponseCopyWith<OfferResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferResponseCopyWith<$Res> {
  factory $OfferResponseCopyWith(
    OfferResponse value,
    $Res Function(OfferResponse) then,
  ) = _$OfferResponseCopyWithImpl<$Res, OfferResponse>;
  @useResult
  $Res call({String message, OfferDetails offer});

  $OfferDetailsCopyWith<$Res> get offer;
}

/// @nodoc
class _$OfferResponseCopyWithImpl<$Res, $Val extends OfferResponse>
    implements $OfferResponseCopyWith<$Res> {
  _$OfferResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? offer = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            offer:
                null == offer
                    ? _value.offer
                    : offer // ignore: cast_nullable_to_non_nullable
                        as OfferDetails,
          )
          as $Val,
    );
  }

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferDetailsCopyWith<$Res> get offer {
    return $OfferDetailsCopyWith<$Res>(_value.offer, (value) {
      return _then(_value.copyWith(offer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OfferResponseImplCopyWith<$Res>
    implements $OfferResponseCopyWith<$Res> {
  factory _$$OfferResponseImplCopyWith(
    _$OfferResponseImpl value,
    $Res Function(_$OfferResponseImpl) then,
  ) = __$$OfferResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, OfferDetails offer});

  @override
  $OfferDetailsCopyWith<$Res> get offer;
}

/// @nodoc
class __$$OfferResponseImplCopyWithImpl<$Res>
    extends _$OfferResponseCopyWithImpl<$Res, _$OfferResponseImpl>
    implements _$$OfferResponseImplCopyWith<$Res> {
  __$$OfferResponseImplCopyWithImpl(
    _$OfferResponseImpl _value,
    $Res Function(_$OfferResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? offer = null}) {
    return _then(
      _$OfferResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        offer:
            null == offer
                ? _value.offer
                : offer // ignore: cast_nullable_to_non_nullable
                    as OfferDetails,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferResponseImpl implements _OfferResponse {
  const _$OfferResponseImpl({required this.message, required this.offer});

  factory _$OfferResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferResponseImplFromJson(json);

  @override
  final String message;
  @override
  final OfferDetails offer;

  @override
  String toString() {
    return 'OfferResponse(message: $message, offer: $offer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.offer, offer) || other.offer == offer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, offer);

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferResponseImplCopyWith<_$OfferResponseImpl> get copyWith =>
      __$$OfferResponseImplCopyWithImpl<_$OfferResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferResponseImplToJson(this);
  }
}

abstract class _OfferResponse implements OfferResponse {
  const factory _OfferResponse({
    required final String message,
    required final OfferDetails offer,
  }) = _$OfferResponseImpl;

  factory _OfferResponse.fromJson(Map<String, dynamic> json) =
      _$OfferResponseImpl.fromJson;

  @override
  String get message;
  @override
  OfferDetails get offer;

  /// Create a copy of OfferResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferResponseImplCopyWith<_$OfferResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OfferDetails _$OfferDetailsFromJson(Map<String, dynamic> json) {
  return _OfferDetails.fromJson(json);
}

/// @nodoc
mixin _$OfferDetails {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  @IdConverter()
  String get companyId => throw _privateConstructorUsedError;
  @IdConverter()
  String get containerId => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get price => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get totalPrice => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get commissionAmount => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get vatAmount => throw _privateConstructorUsedError;
  int get rentalDuration => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this OfferDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferDetailsCopyWith<OfferDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferDetailsCopyWith<$Res> {
  factory $OfferDetailsCopyWith(
    OfferDetails value,
    $Res Function(OfferDetails) then,
  ) = _$OfferDetailsCopyWithImpl<$Res, OfferDetails>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    @IdConverter() String companyId,
    @IdConverter() String containerId,
    @DoubleConverter() double price,
    @DoubleConverter() double totalPrice,
    @DoubleConverter() double commissionAmount,
    @DoubleConverter() double vatAmount,
    int rentalDuration,
    String status,
    DateTime createdAt,
  });
}

/// @nodoc
class _$OfferDetailsCopyWithImpl<$Res, $Val extends OfferDetails>
    implements $OfferDetailsCopyWith<$Res> {
  _$OfferDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? companyId = null,
    Object? containerId = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? commissionAmount = null,
    Object? vatAmount = null,
    Object? rentalDuration = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            companyId:
                null == companyId
                    ? _value.companyId
                    : companyId // ignore: cast_nullable_to_non_nullable
                        as String,
            containerId:
                null == containerId
                    ? _value.containerId
                    : containerId // ignore: cast_nullable_to_non_nullable
                        as String,
            price:
                null == price
                    ? _value.price
                    : price // ignore: cast_nullable_to_non_nullable
                        as double,
            totalPrice:
                null == totalPrice
                    ? _value.totalPrice
                    : totalPrice // ignore: cast_nullable_to_non_nullable
                        as double,
            commissionAmount:
                null == commissionAmount
                    ? _value.commissionAmount
                    : commissionAmount // ignore: cast_nullable_to_non_nullable
                        as double,
            vatAmount:
                null == vatAmount
                    ? _value.vatAmount
                    : vatAmount // ignore: cast_nullable_to_non_nullable
                        as double,
            rentalDuration:
                null == rentalDuration
                    ? _value.rentalDuration
                    : rentalDuration // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OfferDetailsImplCopyWith<$Res>
    implements $OfferDetailsCopyWith<$Res> {
  factory _$$OfferDetailsImplCopyWith(
    _$OfferDetailsImpl value,
    $Res Function(_$OfferDetailsImpl) then,
  ) = __$$OfferDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    @IdConverter() String companyId,
    @IdConverter() String containerId,
    @DoubleConverter() double price,
    @DoubleConverter() double totalPrice,
    @DoubleConverter() double commissionAmount,
    @DoubleConverter() double vatAmount,
    int rentalDuration,
    String status,
    DateTime createdAt,
  });
}

/// @nodoc
class __$$OfferDetailsImplCopyWithImpl<$Res>
    extends _$OfferDetailsCopyWithImpl<$Res, _$OfferDetailsImpl>
    implements _$$OfferDetailsImplCopyWith<$Res> {
  __$$OfferDetailsImplCopyWithImpl(
    _$OfferDetailsImpl _value,
    $Res Function(_$OfferDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OfferDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? companyId = null,
    Object? containerId = null,
    Object? price = null,
    Object? totalPrice = null,
    Object? commissionAmount = null,
    Object? vatAmount = null,
    Object? rentalDuration = null,
    Object? status = null,
    Object? createdAt = null,
  }) {
    return _then(
      _$OfferDetailsImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        companyId:
            null == companyId
                ? _value.companyId
                : companyId // ignore: cast_nullable_to_non_nullable
                    as String,
        containerId:
            null == containerId
                ? _value.containerId
                : containerId // ignore: cast_nullable_to_non_nullable
                    as String,
        price:
            null == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                    as double,
        totalPrice:
            null == totalPrice
                ? _value.totalPrice
                : totalPrice // ignore: cast_nullable_to_non_nullable
                    as double,
        commissionAmount:
            null == commissionAmount
                ? _value.commissionAmount
                : commissionAmount // ignore: cast_nullable_to_non_nullable
                    as double,
        vatAmount:
            null == vatAmount
                ? _value.vatAmount
                : vatAmount // ignore: cast_nullable_to_non_nullable
                    as double,
        rentalDuration:
            null == rentalDuration
                ? _value.rentalDuration
                : rentalDuration // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferDetailsImpl implements _OfferDetails {
  const _$OfferDetailsImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    @IdConverter() required this.companyId,
    @IdConverter() required this.containerId,
    @DoubleConverter() required this.price,
    @DoubleConverter() required this.totalPrice,
    @DoubleConverter() required this.commissionAmount,
    @DoubleConverter() required this.vatAmount,
    required this.rentalDuration,
    required this.status,
    required this.createdAt,
  });

  factory _$OfferDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferDetailsImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  @IdConverter()
  final String companyId;
  @override
  @IdConverter()
  final String containerId;
  @override
  @DoubleConverter()
  final double price;
  @override
  @DoubleConverter()
  final double totalPrice;
  @override
  @DoubleConverter()
  final double commissionAmount;
  @override
  @DoubleConverter()
  final double vatAmount;
  @override
  final int rentalDuration;
  @override
  final String status;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'OfferDetails(id: $id, globalOrderId: $globalOrderId, companyId: $companyId, containerId: $containerId, price: $price, totalPrice: $totalPrice, commissionAmount: $commissionAmount, vatAmount: $vatAmount, rentalDuration: $rentalDuration, status: $status, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.containerId, containerId) ||
                other.containerId == containerId) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.commissionAmount, commissionAmount) ||
                other.commissionAmount == commissionAmount) &&
            (identical(other.vatAmount, vatAmount) ||
                other.vatAmount == vatAmount) &&
            (identical(other.rentalDuration, rentalDuration) ||
                other.rentalDuration == rentalDuration) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    globalOrderId,
    companyId,
    containerId,
    price,
    totalPrice,
    commissionAmount,
    vatAmount,
    rentalDuration,
    status,
    createdAt,
  );

  /// Create a copy of OfferDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferDetailsImplCopyWith<_$OfferDetailsImpl> get copyWith =>
      __$$OfferDetailsImplCopyWithImpl<_$OfferDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferDetailsImplToJson(this);
  }
}

abstract class _OfferDetails implements OfferDetails {
  const factory _OfferDetails({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    @IdConverter() required final String companyId,
    @IdConverter() required final String containerId,
    @DoubleConverter() required final double price,
    @DoubleConverter() required final double totalPrice,
    @DoubleConverter() required final double commissionAmount,
    @DoubleConverter() required final double vatAmount,
    required final int rentalDuration,
    required final String status,
    required final DateTime createdAt,
  }) = _$OfferDetailsImpl;

  factory _OfferDetails.fromJson(Map<String, dynamic> json) =
      _$OfferDetailsImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  @IdConverter()
  String get companyId;
  @override
  @IdConverter()
  String get containerId;
  @override
  @DoubleConverter()
  double get price;
  @override
  @DoubleConverter()
  double get totalPrice;
  @override
  @DoubleConverter()
  double get commissionAmount;
  @override
  @DoubleConverter()
  double get vatAmount;
  @override
  int get rentalDuration;
  @override
  String get status;
  @override
  DateTime get createdAt;

  /// Create a copy of OfferDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferDetailsImplCopyWith<_$OfferDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignDriverRequest _$AssignDriverRequestFromJson(Map<String, dynamic> json) {
  return _AssignDriverRequest.fromJson(json);
}

/// @nodoc
mixin _$AssignDriverRequest {
  String get driverId => throw _privateConstructorUsedError;

  /// Serializes this AssignDriverRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignDriverRequestCopyWith<AssignDriverRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignDriverRequestCopyWith<$Res> {
  factory $AssignDriverRequestCopyWith(
    AssignDriverRequest value,
    $Res Function(AssignDriverRequest) then,
  ) = _$AssignDriverRequestCopyWithImpl<$Res, AssignDriverRequest>;
  @useResult
  $Res call({String driverId});
}

/// @nodoc
class _$AssignDriverRequestCopyWithImpl<$Res, $Val extends AssignDriverRequest>
    implements $AssignDriverRequestCopyWith<$Res> {
  _$AssignDriverRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverId = null}) {
    return _then(
      _value.copyWith(
            driverId:
                null == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssignDriverRequestImplCopyWith<$Res>
    implements $AssignDriverRequestCopyWith<$Res> {
  factory _$$AssignDriverRequestImplCopyWith(
    _$AssignDriverRequestImpl value,
    $Res Function(_$AssignDriverRequestImpl) then,
  ) = __$$AssignDriverRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String driverId});
}

/// @nodoc
class __$$AssignDriverRequestImplCopyWithImpl<$Res>
    extends _$AssignDriverRequestCopyWithImpl<$Res, _$AssignDriverRequestImpl>
    implements _$$AssignDriverRequestImplCopyWith<$Res> {
  __$$AssignDriverRequestImplCopyWithImpl(
    _$AssignDriverRequestImpl _value,
    $Res Function(_$AssignDriverRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverId = null}) {
    return _then(
      _$AssignDriverRequestImpl(
        driverId:
            null == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignDriverRequestImpl implements _AssignDriverRequest {
  const _$AssignDriverRequestImpl({required this.driverId});

  factory _$AssignDriverRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignDriverRequestImplFromJson(json);

  @override
  final String driverId;

  @override
  String toString() {
    return 'AssignDriverRequest(driverId: $driverId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignDriverRequestImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, driverId);

  /// Create a copy of AssignDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignDriverRequestImplCopyWith<_$AssignDriverRequestImpl> get copyWith =>
      __$$AssignDriverRequestImplCopyWithImpl<_$AssignDriverRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignDriverRequestImplToJson(this);
  }
}

abstract class _AssignDriverRequest implements AssignDriverRequest {
  const factory _AssignDriverRequest({required final String driverId}) =
      _$AssignDriverRequestImpl;

  factory _AssignDriverRequest.fromJson(Map<String, dynamic> json) =
      _$AssignDriverRequestImpl.fromJson;

  @override
  String get driverId;

  /// Create a copy of AssignDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignDriverRequestImplCopyWith<_$AssignDriverRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignDriverResponse _$AssignDriverResponseFromJson(Map<String, dynamic> json) {
  return _AssignDriverResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignDriverResponse {
  String get message => throw _privateConstructorUsedError;
  AssignedOrderInfo get order => throw _privateConstructorUsedError;

  /// Serializes this AssignDriverResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignDriverResponseCopyWith<AssignDriverResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignDriverResponseCopyWith<$Res> {
  factory $AssignDriverResponseCopyWith(
    AssignDriverResponse value,
    $Res Function(AssignDriverResponse) then,
  ) = _$AssignDriverResponseCopyWithImpl<$Res, AssignDriverResponse>;
  @useResult
  $Res call({String message, AssignedOrderInfo order});

  $AssignedOrderInfoCopyWith<$Res> get order;
}

/// @nodoc
class _$AssignDriverResponseCopyWithImpl<
  $Res,
  $Val extends AssignDriverResponse
>
    implements $AssignDriverResponseCopyWith<$Res> {
  _$AssignDriverResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? order = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            order:
                null == order
                    ? _value.order
                    : order // ignore: cast_nullable_to_non_nullable
                        as AssignedOrderInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssignedOrderInfoCopyWith<$Res> get order {
    return $AssignedOrderInfoCopyWith<$Res>(_value.order, (value) {
      return _then(_value.copyWith(order: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssignDriverResponseImplCopyWith<$Res>
    implements $AssignDriverResponseCopyWith<$Res> {
  factory _$$AssignDriverResponseImplCopyWith(
    _$AssignDriverResponseImpl value,
    $Res Function(_$AssignDriverResponseImpl) then,
  ) = __$$AssignDriverResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AssignedOrderInfo order});

  @override
  $AssignedOrderInfoCopyWith<$Res> get order;
}

/// @nodoc
class __$$AssignDriverResponseImplCopyWithImpl<$Res>
    extends _$AssignDriverResponseCopyWithImpl<$Res, _$AssignDriverResponseImpl>
    implements _$$AssignDriverResponseImplCopyWith<$Res> {
  __$$AssignDriverResponseImplCopyWithImpl(
    _$AssignDriverResponseImpl _value,
    $Res Function(_$AssignDriverResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? order = null}) {
    return _then(
      _$AssignDriverResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        order:
            null == order
                ? _value.order
                : order // ignore: cast_nullable_to_non_nullable
                    as AssignedOrderInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignDriverResponseImpl implements _AssignDriverResponse {
  const _$AssignDriverResponseImpl({
    required this.message,
    required this.order,
  });

  factory _$AssignDriverResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignDriverResponseImplFromJson(json);

  @override
  final String message;
  @override
  final AssignedOrderInfo order;

  @override
  String toString() {
    return 'AssignDriverResponse(message: $message, order: $order)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignDriverResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.order, order) || other.order == order));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, order);

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignDriverResponseImplCopyWith<_$AssignDriverResponseImpl>
  get copyWith =>
      __$$AssignDriverResponseImplCopyWithImpl<_$AssignDriverResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignDriverResponseImplToJson(this);
  }
}

abstract class _AssignDriverResponse implements AssignDriverResponse {
  const factory _AssignDriverResponse({
    required final String message,
    required final AssignedOrderInfo order,
  }) = _$AssignDriverResponseImpl;

  factory _AssignDriverResponse.fromJson(Map<String, dynamic> json) =
      _$AssignDriverResponseImpl.fromJson;

  @override
  String get message;
  @override
  AssignedOrderInfo get order;

  /// Create a copy of AssignDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignDriverResponseImplCopyWith<_$AssignDriverResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AssignedOrderInfo _$AssignedOrderInfoFromJson(Map<String, dynamic> json) {
  return _AssignedOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$AssignedOrderInfo {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get globalOrderId => throw _privateConstructorUsedError;
  @IdConverter()
  String? get driverId => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this AssignedOrderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignedOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignedOrderInfoCopyWith<AssignedOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedOrderInfoCopyWith<$Res> {
  factory $AssignedOrderInfoCopyWith(
    AssignedOrderInfo value,
    $Res Function(AssignedOrderInfo) then,
  ) = _$AssignedOrderInfoCopyWithImpl<$Res, AssignedOrderInfo>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    @IdConverter() String? driverId,
    String status,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$AssignedOrderInfoCopyWithImpl<$Res, $Val extends AssignedOrderInfo>
    implements $AssignedOrderInfoCopyWith<$Res> {
  _$AssignedOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignedOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? driverId = freezed,
    Object? status = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            globalOrderId:
                null == globalOrderId
                    ? _value.globalOrderId
                    : globalOrderId // ignore: cast_nullable_to_non_nullable
                        as String,
            driverId:
                freezed == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            updatedAt:
                null == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssignedOrderInfoImplCopyWith<$Res>
    implements $AssignedOrderInfoCopyWith<$Res> {
  factory _$$AssignedOrderInfoImplCopyWith(
    _$AssignedOrderInfoImpl value,
    $Res Function(_$AssignedOrderInfoImpl) then,
  ) = __$$AssignedOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String globalOrderId,
    @IdConverter() String? driverId,
    String status,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$AssignedOrderInfoImplCopyWithImpl<$Res>
    extends _$AssignedOrderInfoCopyWithImpl<$Res, _$AssignedOrderInfoImpl>
    implements _$$AssignedOrderInfoImplCopyWith<$Res> {
  __$$AssignedOrderInfoImplCopyWithImpl(
    _$AssignedOrderInfoImpl _value,
    $Res Function(_$AssignedOrderInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignedOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? globalOrderId = null,
    Object? driverId = freezed,
    Object? status = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$AssignedOrderInfoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        globalOrderId:
            null == globalOrderId
                ? _value.globalOrderId
                : globalOrderId // ignore: cast_nullable_to_non_nullable
                    as String,
        driverId:
            freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        updatedAt:
            null == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedOrderInfoImpl implements _AssignedOrderInfo {
  const _$AssignedOrderInfoImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.globalOrderId,
    @IdConverter() this.driverId,
    required this.status,
    required this.updatedAt,
  });

  factory _$AssignedOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedOrderInfoImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String globalOrderId;
  @override
  @IdConverter()
  final String? driverId;
  @override
  final String status;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'AssignedOrderInfo(id: $id, globalOrderId: $globalOrderId, driverId: $driverId, status: $status, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedOrderInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.globalOrderId, globalOrderId) ||
                other.globalOrderId == globalOrderId) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, globalOrderId, driverId, status, updatedAt);

  /// Create a copy of AssignedOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedOrderInfoImplCopyWith<_$AssignedOrderInfoImpl> get copyWith =>
      __$$AssignedOrderInfoImplCopyWithImpl<_$AssignedOrderInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedOrderInfoImplToJson(this);
  }
}

abstract class _AssignedOrderInfo implements AssignedOrderInfo {
  const factory _AssignedOrderInfo({
    @IdConverter() required final String id,
    @IdConverter() required final String globalOrderId,
    @IdConverter() final String? driverId,
    required final String status,
    required final DateTime updatedAt,
  }) = _$AssignedOrderInfoImpl;

  factory _AssignedOrderInfo.fromJson(Map<String, dynamic> json) =
      _$AssignedOrderInfoImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get globalOrderId;
  @override
  @IdConverter()
  String? get driverId;
  @override
  String get status;
  @override
  DateTime get updatedAt;

  /// Create a copy of AssignedOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignedOrderInfoImplCopyWith<_$AssignedOrderInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AssignSubOrderDriverRequest _$AssignSubOrderDriverRequestFromJson(
  Map<String, dynamic> json,
) {
  return _AssignSubOrderDriverRequest.fromJson(json);
}

/// @nodoc
mixin _$AssignSubOrderDriverRequest {
  String get driverId => throw _privateConstructorUsedError;
  DateTime get deliveryDate => throw _privateConstructorUsedError;

  /// Serializes this AssignSubOrderDriverRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignSubOrderDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignSubOrderDriverRequestCopyWith<AssignSubOrderDriverRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignSubOrderDriverRequestCopyWith<$Res> {
  factory $AssignSubOrderDriverRequestCopyWith(
    AssignSubOrderDriverRequest value,
    $Res Function(AssignSubOrderDriverRequest) then,
  ) =
      _$AssignSubOrderDriverRequestCopyWithImpl<
        $Res,
        AssignSubOrderDriverRequest
      >;
  @useResult
  $Res call({String driverId, DateTime deliveryDate});
}

/// @nodoc
class _$AssignSubOrderDriverRequestCopyWithImpl<
  $Res,
  $Val extends AssignSubOrderDriverRequest
>
    implements $AssignSubOrderDriverRequestCopyWith<$Res> {
  _$AssignSubOrderDriverRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignSubOrderDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverId = null, Object? deliveryDate = null}) {
    return _then(
      _value.copyWith(
            driverId:
                null == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String,
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssignSubOrderDriverRequestImplCopyWith<$Res>
    implements $AssignSubOrderDriverRequestCopyWith<$Res> {
  factory _$$AssignSubOrderDriverRequestImplCopyWith(
    _$AssignSubOrderDriverRequestImpl value,
    $Res Function(_$AssignSubOrderDriverRequestImpl) then,
  ) = __$$AssignSubOrderDriverRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String driverId, DateTime deliveryDate});
}

/// @nodoc
class __$$AssignSubOrderDriverRequestImplCopyWithImpl<$Res>
    extends
        _$AssignSubOrderDriverRequestCopyWithImpl<
          $Res,
          _$AssignSubOrderDriverRequestImpl
        >
    implements _$$AssignSubOrderDriverRequestImplCopyWith<$Res> {
  __$$AssignSubOrderDriverRequestImplCopyWithImpl(
    _$AssignSubOrderDriverRequestImpl _value,
    $Res Function(_$AssignSubOrderDriverRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignSubOrderDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? driverId = null, Object? deliveryDate = null}) {
    return _then(
      _$AssignSubOrderDriverRequestImpl(
        driverId:
            null == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String,
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignSubOrderDriverRequestImpl
    implements _AssignSubOrderDriverRequest {
  const _$AssignSubOrderDriverRequestImpl({
    required this.driverId,
    required this.deliveryDate,
  });

  factory _$AssignSubOrderDriverRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AssignSubOrderDriverRequestImplFromJson(json);

  @override
  final String driverId;
  @override
  final DateTime deliveryDate;

  @override
  String toString() {
    return 'AssignSubOrderDriverRequest(driverId: $driverId, deliveryDate: $deliveryDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignSubOrderDriverRequestImpl &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, driverId, deliveryDate);

  /// Create a copy of AssignSubOrderDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignSubOrderDriverRequestImplCopyWith<_$AssignSubOrderDriverRequestImpl>
  get copyWith => __$$AssignSubOrderDriverRequestImplCopyWithImpl<
    _$AssignSubOrderDriverRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignSubOrderDriverRequestImplToJson(this);
  }
}

abstract class _AssignSubOrderDriverRequest
    implements AssignSubOrderDriverRequest {
  const factory _AssignSubOrderDriverRequest({
    required final String driverId,
    required final DateTime deliveryDate,
  }) = _$AssignSubOrderDriverRequestImpl;

  factory _AssignSubOrderDriverRequest.fromJson(Map<String, dynamic> json) =
      _$AssignSubOrderDriverRequestImpl.fromJson;

  @override
  String get driverId;
  @override
  DateTime get deliveryDate;

  /// Create a copy of AssignSubOrderDriverRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignSubOrderDriverRequestImplCopyWith<_$AssignSubOrderDriverRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AssignSubOrderDriverResponse _$AssignSubOrderDriverResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AssignSubOrderDriverResponse.fromJson(json);
}

/// @nodoc
mixin _$AssignSubOrderDriverResponse {
  String get message => throw _privateConstructorUsedError;
  AssignedSubOrderInfo get subOrder => throw _privateConstructorUsedError;

  /// Serializes this AssignSubOrderDriverResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignSubOrderDriverResponseCopyWith<AssignSubOrderDriverResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignSubOrderDriverResponseCopyWith<$Res> {
  factory $AssignSubOrderDriverResponseCopyWith(
    AssignSubOrderDriverResponse value,
    $Res Function(AssignSubOrderDriverResponse) then,
  ) =
      _$AssignSubOrderDriverResponseCopyWithImpl<
        $Res,
        AssignSubOrderDriverResponse
      >;
  @useResult
  $Res call({String message, AssignedSubOrderInfo subOrder});

  $AssignedSubOrderInfoCopyWith<$Res> get subOrder;
}

/// @nodoc
class _$AssignSubOrderDriverResponseCopyWithImpl<
  $Res,
  $Val extends AssignSubOrderDriverResponse
>
    implements $AssignSubOrderDriverResponseCopyWith<$Res> {
  _$AssignSubOrderDriverResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? subOrder = null}) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            subOrder:
                null == subOrder
                    ? _value.subOrder
                    : subOrder // ignore: cast_nullable_to_non_nullable
                        as AssignedSubOrderInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssignedSubOrderInfoCopyWith<$Res> get subOrder {
    return $AssignedSubOrderInfoCopyWith<$Res>(_value.subOrder, (value) {
      return _then(_value.copyWith(subOrder: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AssignSubOrderDriverResponseImplCopyWith<$Res>
    implements $AssignSubOrderDriverResponseCopyWith<$Res> {
  factory _$$AssignSubOrderDriverResponseImplCopyWith(
    _$AssignSubOrderDriverResponseImpl value,
    $Res Function(_$AssignSubOrderDriverResponseImpl) then,
  ) = __$$AssignSubOrderDriverResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, AssignedSubOrderInfo subOrder});

  @override
  $AssignedSubOrderInfoCopyWith<$Res> get subOrder;
}

/// @nodoc
class __$$AssignSubOrderDriverResponseImplCopyWithImpl<$Res>
    extends
        _$AssignSubOrderDriverResponseCopyWithImpl<
          $Res,
          _$AssignSubOrderDriverResponseImpl
        >
    implements _$$AssignSubOrderDriverResponseImplCopyWith<$Res> {
  __$$AssignSubOrderDriverResponseImplCopyWithImpl(
    _$AssignSubOrderDriverResponseImpl _value,
    $Res Function(_$AssignSubOrderDriverResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null, Object? subOrder = null}) {
    return _then(
      _$AssignSubOrderDriverResponseImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        subOrder:
            null == subOrder
                ? _value.subOrder
                : subOrder // ignore: cast_nullable_to_non_nullable
                    as AssignedSubOrderInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignSubOrderDriverResponseImpl
    implements _AssignSubOrderDriverResponse {
  const _$AssignSubOrderDriverResponseImpl({
    required this.message,
    required this.subOrder,
  });

  factory _$AssignSubOrderDriverResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$AssignSubOrderDriverResponseImplFromJson(json);

  @override
  final String message;
  @override
  final AssignedSubOrderInfo subOrder;

  @override
  String toString() {
    return 'AssignSubOrderDriverResponse(message: $message, subOrder: $subOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignSubOrderDriverResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.subOrder, subOrder) ||
                other.subOrder == subOrder));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, subOrder);

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignSubOrderDriverResponseImplCopyWith<
    _$AssignSubOrderDriverResponseImpl
  >
  get copyWith => __$$AssignSubOrderDriverResponseImplCopyWithImpl<
    _$AssignSubOrderDriverResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignSubOrderDriverResponseImplToJson(this);
  }
}

abstract class _AssignSubOrderDriverResponse
    implements AssignSubOrderDriverResponse {
  const factory _AssignSubOrderDriverResponse({
    required final String message,
    required final AssignedSubOrderInfo subOrder,
  }) = _$AssignSubOrderDriverResponseImpl;

  factory _AssignSubOrderDriverResponse.fromJson(Map<String, dynamic> json) =
      _$AssignSubOrderDriverResponseImpl.fromJson;

  @override
  String get message;
  @override
  AssignedSubOrderInfo get subOrder;

  /// Create a copy of AssignSubOrderDriverResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignSubOrderDriverResponseImplCopyWith<
    _$AssignSubOrderDriverResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

AssignedSubOrderInfo _$AssignedSubOrderInfoFromJson(Map<String, dynamic> json) {
  return _AssignedSubOrderInfo.fromJson(json);
}

/// @nodoc
mixin _$AssignedSubOrderInfo {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  @IdConverter()
  String get orderId => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @IdConverter()
  String? get driverId => throw _privateConstructorUsedError;
  String? get driverName => throw _privateConstructorUsedError;
  DateTime? get requestedDate => throw _privateConstructorUsedError;

  /// Serializes this AssignedSubOrderInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AssignedSubOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssignedSubOrderInfoCopyWith<AssignedSubOrderInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssignedSubOrderInfoCopyWith<$Res> {
  factory $AssignedSubOrderInfoCopyWith(
    AssignedSubOrderInfo value,
    $Res Function(AssignedSubOrderInfo) then,
  ) = _$AssignedSubOrderInfoCopyWithImpl<$Res, AssignedSubOrderInfo>;
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String orderId,
    String type,
    String status,
    @IdConverter() String? driverId,
    String? driverName,
    DateTime? requestedDate,
  });
}

/// @nodoc
class _$AssignedSubOrderInfoCopyWithImpl<
  $Res,
  $Val extends AssignedSubOrderInfo
>
    implements $AssignedSubOrderInfoCopyWith<$Res> {
  _$AssignedSubOrderInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AssignedSubOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? type = null,
    Object? status = null,
    Object? driverId = freezed,
    Object? driverName = freezed,
    Object? requestedDate = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            orderId:
                null == orderId
                    ? _value.orderId
                    : orderId // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            driverId:
                freezed == driverId
                    ? _value.driverId
                    : driverId // ignore: cast_nullable_to_non_nullable
                        as String?,
            driverName:
                freezed == driverName
                    ? _value.driverName
                    : driverName // ignore: cast_nullable_to_non_nullable
                        as String?,
            requestedDate:
                freezed == requestedDate
                    ? _value.requestedDate
                    : requestedDate // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AssignedSubOrderInfoImplCopyWith<$Res>
    implements $AssignedSubOrderInfoCopyWith<$Res> {
  factory _$$AssignedSubOrderInfoImplCopyWith(
    _$AssignedSubOrderInfoImpl value,
    $Res Function(_$AssignedSubOrderInfoImpl) then,
  ) = __$$AssignedSubOrderInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    @IdConverter() String orderId,
    String type,
    String status,
    @IdConverter() String? driverId,
    String? driverName,
    DateTime? requestedDate,
  });
}

/// @nodoc
class __$$AssignedSubOrderInfoImplCopyWithImpl<$Res>
    extends _$AssignedSubOrderInfoCopyWithImpl<$Res, _$AssignedSubOrderInfoImpl>
    implements _$$AssignedSubOrderInfoImplCopyWith<$Res> {
  __$$AssignedSubOrderInfoImplCopyWithImpl(
    _$AssignedSubOrderInfoImpl _value,
    $Res Function(_$AssignedSubOrderInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AssignedSubOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? type = null,
    Object? status = null,
    Object? driverId = freezed,
    Object? driverName = freezed,
    Object? requestedDate = freezed,
  }) {
    return _then(
      _$AssignedSubOrderInfoImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        orderId:
            null == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        driverId:
            freezed == driverId
                ? _value.driverId
                : driverId // ignore: cast_nullable_to_non_nullable
                    as String?,
        driverName:
            freezed == driverName
                ? _value.driverName
                : driverName // ignore: cast_nullable_to_non_nullable
                    as String?,
        requestedDate:
            freezed == requestedDate
                ? _value.requestedDate
                : requestedDate // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AssignedSubOrderInfoImpl implements _AssignedSubOrderInfo {
  const _$AssignedSubOrderInfoImpl({
    @IdConverter() required this.id,
    @IdConverter() required this.orderId,
    required this.type,
    required this.status,
    @IdConverter() this.driverId,
    this.driverName,
    this.requestedDate,
  });

  factory _$AssignedSubOrderInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssignedSubOrderInfoImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  @IdConverter()
  final String orderId;
  @override
  final String type;
  @override
  final String status;
  @override
  @IdConverter()
  final String? driverId;
  @override
  final String? driverName;
  @override
  final DateTime? requestedDate;

  @override
  String toString() {
    return 'AssignedSubOrderInfo(id: $id, orderId: $orderId, type: $type, status: $status, driverId: $driverId, driverName: $driverName, requestedDate: $requestedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssignedSubOrderInfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.driverId, driverId) ||
                other.driverId == driverId) &&
            (identical(other.driverName, driverName) ||
                other.driverName == driverName) &&
            (identical(other.requestedDate, requestedDate) ||
                other.requestedDate == requestedDate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    orderId,
    type,
    status,
    driverId,
    driverName,
    requestedDate,
  );

  /// Create a copy of AssignedSubOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssignedSubOrderInfoImplCopyWith<_$AssignedSubOrderInfoImpl>
  get copyWith =>
      __$$AssignedSubOrderInfoImplCopyWithImpl<_$AssignedSubOrderInfoImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AssignedSubOrderInfoImplToJson(this);
  }
}

abstract class _AssignedSubOrderInfo implements AssignedSubOrderInfo {
  const factory _AssignedSubOrderInfo({
    @IdConverter() required final String id,
    @IdConverter() required final String orderId,
    required final String type,
    required final String status,
    @IdConverter() final String? driverId,
    final String? driverName,
    final DateTime? requestedDate,
  }) = _$AssignedSubOrderInfoImpl;

  factory _AssignedSubOrderInfo.fromJson(Map<String, dynamic> json) =
      _$AssignedSubOrderInfoImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  @IdConverter()
  String get orderId;
  @override
  String get type;
  @override
  String get status;
  @override
  @IdConverter()
  String? get driverId;
  @override
  String? get driverName;
  @override
  DateTime? get requestedDate;

  /// Create a copy of AssignedSubOrderInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssignedSubOrderInfoImplCopyWith<_$AssignedSubOrderInfoImpl>
  get copyWith => throw _privateConstructorUsedError;
}
