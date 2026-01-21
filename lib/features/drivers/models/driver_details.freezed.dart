// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DriverDetails _$DriverDetailsFromJson(Map<String, dynamic> json) {
  return _DriverDetails.fromJson(json);
}

/// @nodoc
mixin _$DriverDetails {
  Driver get driver => throw _privateConstructorUsedError;
  DriverStatistics get statistics => throw _privateConstructorUsedError;
  List<DriverOrder> get orders => throw _privateConstructorUsedError;
  DriverSummary? get summary => throw _privateConstructorUsedError;

  /// Serializes this DriverDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverDetailsCopyWith<DriverDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDetailsCopyWith<$Res> {
  factory $DriverDetailsCopyWith(
    DriverDetails value,
    $Res Function(DriverDetails) then,
  ) = _$DriverDetailsCopyWithImpl<$Res, DriverDetails>;
  @useResult
  $Res call({
    Driver driver,
    DriverStatistics statistics,
    List<DriverOrder> orders,
    DriverSummary? summary,
  });

  $DriverCopyWith<$Res> get driver;
  $DriverStatisticsCopyWith<$Res> get statistics;
  $DriverSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class _$DriverDetailsCopyWithImpl<$Res, $Val extends DriverDetails>
    implements $DriverDetailsCopyWith<$Res> {
  _$DriverDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
    Object? statistics = null,
    Object? orders = null,
    Object? summary = freezed,
  }) {
    return _then(
      _value.copyWith(
            driver:
                null == driver
                    ? _value.driver
                    : driver // ignore: cast_nullable_to_non_nullable
                        as Driver,
            statistics:
                null == statistics
                    ? _value.statistics
                    : statistics // ignore: cast_nullable_to_non_nullable
                        as DriverStatistics,
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as List<DriverOrder>,
            summary:
                freezed == summary
                    ? _value.summary
                    : summary // ignore: cast_nullable_to_non_nullable
                        as DriverSummary?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverCopyWith<$Res> get driver {
    return $DriverCopyWith<$Res>(_value.driver, (value) {
      return _then(_value.copyWith(driver: value) as $Val);
    });
  }

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverStatisticsCopyWith<$Res> get statistics {
    return $DriverStatisticsCopyWith<$Res>(_value.statistics, (value) {
      return _then(_value.copyWith(statistics: value) as $Val);
    });
  }

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverSummaryCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $DriverSummaryCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverDetailsImplCopyWith<$Res>
    implements $DriverDetailsCopyWith<$Res> {
  factory _$$DriverDetailsImplCopyWith(
    _$DriverDetailsImpl value,
    $Res Function(_$DriverDetailsImpl) then,
  ) = __$$DriverDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    Driver driver,
    DriverStatistics statistics,
    List<DriverOrder> orders,
    DriverSummary? summary,
  });

  @override
  $DriverCopyWith<$Res> get driver;
  @override
  $DriverStatisticsCopyWith<$Res> get statistics;
  @override
  $DriverSummaryCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$DriverDetailsImplCopyWithImpl<$Res>
    extends _$DriverDetailsCopyWithImpl<$Res, _$DriverDetailsImpl>
    implements _$$DriverDetailsImplCopyWith<$Res> {
  __$$DriverDetailsImplCopyWithImpl(
    _$DriverDetailsImpl _value,
    $Res Function(_$DriverDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? driver = null,
    Object? statistics = null,
    Object? orders = null,
    Object? summary = freezed,
  }) {
    return _then(
      _$DriverDetailsImpl(
        driver:
            null == driver
                ? _value.driver
                : driver // ignore: cast_nullable_to_non_nullable
                    as Driver,
        statistics:
            null == statistics
                ? _value.statistics
                : statistics // ignore: cast_nullable_to_non_nullable
                    as DriverStatistics,
        orders:
            null == orders
                ? _value._orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as List<DriverOrder>,
        summary:
            freezed == summary
                ? _value.summary
                : summary // ignore: cast_nullable_to_non_nullable
                    as DriverSummary?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverDetailsImpl implements _DriverDetails {
  const _$DriverDetailsImpl({
    required this.driver,
    required this.statistics,
    required final List<DriverOrder> orders,
    this.summary,
  }) : _orders = orders;

  factory _$DriverDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverDetailsImplFromJson(json);

  @override
  final Driver driver;
  @override
  final DriverStatistics statistics;
  final List<DriverOrder> _orders;
  @override
  List<DriverOrder> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final DriverSummary? summary;

  @override
  String toString() {
    return 'DriverDetails(driver: $driver, statistics: $statistics, orders: $orders, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverDetailsImpl &&
            (identical(other.driver, driver) || other.driver == driver) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    driver,
    statistics,
    const DeepCollectionEquality().hash(_orders),
    summary,
  );

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverDetailsImplCopyWith<_$DriverDetailsImpl> get copyWith =>
      __$$DriverDetailsImplCopyWithImpl<_$DriverDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverDetailsImplToJson(this);
  }
}

abstract class _DriverDetails implements DriverDetails {
  const factory _DriverDetails({
    required final Driver driver,
    required final DriverStatistics statistics,
    required final List<DriverOrder> orders,
    final DriverSummary? summary,
  }) = _$DriverDetailsImpl;

  factory _DriverDetails.fromJson(Map<String, dynamic> json) =
      _$DriverDetailsImpl.fromJson;

  @override
  Driver get driver;
  @override
  DriverStatistics get statistics;
  @override
  List<DriverOrder> get orders;
  @override
  DriverSummary? get summary;

  /// Create a copy of DriverDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverDetailsImplCopyWith<_$DriverDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverStatistics _$DriverStatisticsFromJson(Map<String, dynamic> json) {
  return _DriverStatistics.fromJson(json);
}

/// @nodoc
mixin _$DriverStatistics {
  int get currentApplications => throw _privateConstructorUsedError;
  int get completedApplications => throw _privateConstructorUsedError;
  int get totalApplications => throw _privateConstructorUsedError;

  /// Serializes this DriverStatistics to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverStatisticsCopyWith<DriverStatistics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStatisticsCopyWith<$Res> {
  factory $DriverStatisticsCopyWith(
    DriverStatistics value,
    $Res Function(DriverStatistics) then,
  ) = _$DriverStatisticsCopyWithImpl<$Res, DriverStatistics>;
  @useResult
  $Res call({
    int currentApplications,
    int completedApplications,
    int totalApplications,
  });
}

/// @nodoc
class _$DriverStatisticsCopyWithImpl<$Res, $Val extends DriverStatistics>
    implements $DriverStatisticsCopyWith<$Res> {
  _$DriverStatisticsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentApplications = null,
    Object? completedApplications = null,
    Object? totalApplications = null,
  }) {
    return _then(
      _value.copyWith(
            currentApplications:
                null == currentApplications
                    ? _value.currentApplications
                    : currentApplications // ignore: cast_nullable_to_non_nullable
                        as int,
            completedApplications:
                null == completedApplications
                    ? _value.completedApplications
                    : completedApplications // ignore: cast_nullable_to_non_nullable
                        as int,
            totalApplications:
                null == totalApplications
                    ? _value.totalApplications
                    : totalApplications // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverStatisticsImplCopyWith<$Res>
    implements $DriverStatisticsCopyWith<$Res> {
  factory _$$DriverStatisticsImplCopyWith(
    _$DriverStatisticsImpl value,
    $Res Function(_$DriverStatisticsImpl) then,
  ) = __$$DriverStatisticsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int currentApplications,
    int completedApplications,
    int totalApplications,
  });
}

/// @nodoc
class __$$DriverStatisticsImplCopyWithImpl<$Res>
    extends _$DriverStatisticsCopyWithImpl<$Res, _$DriverStatisticsImpl>
    implements _$$DriverStatisticsImplCopyWith<$Res> {
  __$$DriverStatisticsImplCopyWithImpl(
    _$DriverStatisticsImpl _value,
    $Res Function(_$DriverStatisticsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverStatistics
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentApplications = null,
    Object? completedApplications = null,
    Object? totalApplications = null,
  }) {
    return _then(
      _$DriverStatisticsImpl(
        currentApplications:
            null == currentApplications
                ? _value.currentApplications
                : currentApplications // ignore: cast_nullable_to_non_nullable
                    as int,
        completedApplications:
            null == completedApplications
                ? _value.completedApplications
                : completedApplications // ignore: cast_nullable_to_non_nullable
                    as int,
        totalApplications:
            null == totalApplications
                ? _value.totalApplications
                : totalApplications // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverStatisticsImpl implements _DriverStatistics {
  const _$DriverStatisticsImpl({
    required this.currentApplications,
    required this.completedApplications,
    required this.totalApplications,
  });

  factory _$DriverStatisticsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverStatisticsImplFromJson(json);

  @override
  final int currentApplications;
  @override
  final int completedApplications;
  @override
  final int totalApplications;

  @override
  String toString() {
    return 'DriverStatistics(currentApplications: $currentApplications, completedApplications: $completedApplications, totalApplications: $totalApplications)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverStatisticsImpl &&
            (identical(other.currentApplications, currentApplications) ||
                other.currentApplications == currentApplications) &&
            (identical(other.completedApplications, completedApplications) ||
                other.completedApplications == completedApplications) &&
            (identical(other.totalApplications, totalApplications) ||
                other.totalApplications == totalApplications));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    currentApplications,
    completedApplications,
    totalApplications,
  );

  /// Create a copy of DriverStatistics
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverStatisticsImplCopyWith<_$DriverStatisticsImpl> get copyWith =>
      __$$DriverStatisticsImplCopyWithImpl<_$DriverStatisticsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverStatisticsImplToJson(this);
  }
}

abstract class _DriverStatistics implements DriverStatistics {
  const factory _DriverStatistics({
    required final int currentApplications,
    required final int completedApplications,
    required final int totalApplications,
  }) = _$DriverStatisticsImpl;

  factory _DriverStatistics.fromJson(Map<String, dynamic> json) =
      _$DriverStatisticsImpl.fromJson;

  @override
  int get currentApplications;
  @override
  int get completedApplications;
  @override
  int get totalApplications;

  /// Create a copy of DriverStatistics
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverStatisticsImplCopyWith<_$DriverStatisticsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverOrder _$DriverOrderFromJson(Map<String, dynamic> json) {
  return _DriverOrder.fromJson(json);
}

/// @nodoc
mixin _$DriverOrder {
  String get id => throw _privateConstructorUsedError;
  String get truck => throw _privateConstructorUsedError;
  int? get containerNumber => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String get deliveryDate => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get customerPhone => throw _privateConstructorUsedError;
  DriverOrderLocation? get deliveryLocation =>
      throw _privateConstructorUsedError;
  String? get orderType => throw _privateConstructorUsedError;

  /// Serializes this DriverOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverOrderCopyWith<DriverOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOrderCopyWith<$Res> {
  factory $DriverOrderCopyWith(
    DriverOrder value,
    $Res Function(DriverOrder) then,
  ) = _$DriverOrderCopyWithImpl<$Res, DriverOrder>;
  @useResult
  $Res call({
    String id,
    String truck,
    int? containerNumber,
    String type,
    String size,
    String deliveryDate,
    String status,
    String? customerName,
    String? customerPhone,
    DriverOrderLocation? deliveryLocation,
    String? orderType,
  });

  $DriverOrderLocationCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class _$DriverOrderCopyWithImpl<$Res, $Val extends DriverOrder>
    implements $DriverOrderCopyWith<$Res> {
  _$DriverOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truck = null,
    Object? containerNumber = freezed,
    Object? type = null,
    Object? size = null,
    Object? deliveryDate = null,
    Object? status = null,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? deliveryLocation = freezed,
    Object? orderType = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            truck:
                null == truck
                    ? _value.truck
                    : truck // ignore: cast_nullable_to_non_nullable
                        as String,
            containerNumber:
                freezed == containerNumber
                    ? _value.containerNumber
                    : containerNumber // ignore: cast_nullable_to_non_nullable
                        as int?,
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
            deliveryDate:
                null == deliveryDate
                    ? _value.deliveryDate
                    : deliveryDate // ignore: cast_nullable_to_non_nullable
                        as String,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
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
            deliveryLocation:
                freezed == deliveryLocation
                    ? _value.deliveryLocation
                    : deliveryLocation // ignore: cast_nullable_to_non_nullable
                        as DriverOrderLocation?,
            orderType:
                freezed == orderType
                    ? _value.orderType
                    : orderType // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverOrderLocationCopyWith<$Res>? get deliveryLocation {
    if (_value.deliveryLocation == null) {
      return null;
    }

    return $DriverOrderLocationCopyWith<$Res>(_value.deliveryLocation!, (
      value,
    ) {
      return _then(_value.copyWith(deliveryLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverOrderImplCopyWith<$Res>
    implements $DriverOrderCopyWith<$Res> {
  factory _$$DriverOrderImplCopyWith(
    _$DriverOrderImpl value,
    $Res Function(_$DriverOrderImpl) then,
  ) = __$$DriverOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String truck,
    int? containerNumber,
    String type,
    String size,
    String deliveryDate,
    String status,
    String? customerName,
    String? customerPhone,
    DriverOrderLocation? deliveryLocation,
    String? orderType,
  });

  @override
  $DriverOrderLocationCopyWith<$Res>? get deliveryLocation;
}

/// @nodoc
class __$$DriverOrderImplCopyWithImpl<$Res>
    extends _$DriverOrderCopyWithImpl<$Res, _$DriverOrderImpl>
    implements _$$DriverOrderImplCopyWith<$Res> {
  __$$DriverOrderImplCopyWithImpl(
    _$DriverOrderImpl _value,
    $Res Function(_$DriverOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? truck = null,
    Object? containerNumber = freezed,
    Object? type = null,
    Object? size = null,
    Object? deliveryDate = null,
    Object? status = null,
    Object? customerName = freezed,
    Object? customerPhone = freezed,
    Object? deliveryLocation = freezed,
    Object? orderType = freezed,
  }) {
    return _then(
      _$DriverOrderImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        truck:
            null == truck
                ? _value.truck
                : truck // ignore: cast_nullable_to_non_nullable
                    as String,
        containerNumber:
            freezed == containerNumber
                ? _value.containerNumber
                : containerNumber // ignore: cast_nullable_to_non_nullable
                    as int?,
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
        deliveryDate:
            null == deliveryDate
                ? _value.deliveryDate
                : deliveryDate // ignore: cast_nullable_to_non_nullable
                    as String,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
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
        deliveryLocation:
            freezed == deliveryLocation
                ? _value.deliveryLocation
                : deliveryLocation // ignore: cast_nullable_to_non_nullable
                    as DriverOrderLocation?,
        orderType:
            freezed == orderType
                ? _value.orderType
                : orderType // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverOrderImpl implements _DriverOrder {
  const _$DriverOrderImpl({
    required this.id,
    required this.truck,
    this.containerNumber,
    required this.type,
    required this.size,
    required this.deliveryDate,
    required this.status,
    this.customerName,
    this.customerPhone,
    this.deliveryLocation,
    this.orderType,
  });

  factory _$DriverOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverOrderImplFromJson(json);

  @override
  final String id;
  @override
  final String truck;
  @override
  final int? containerNumber;
  @override
  final String type;
  @override
  final String size;
  @override
  final String deliveryDate;
  @override
  final String status;
  @override
  final String? customerName;
  @override
  final String? customerPhone;
  @override
  final DriverOrderLocation? deliveryLocation;
  @override
  final String? orderType;

  @override
  String toString() {
    return 'DriverOrder(id: $id, truck: $truck, containerNumber: $containerNumber, type: $type, size: $size, deliveryDate: $deliveryDate, status: $status, customerName: $customerName, customerPhone: $customerPhone, deliveryLocation: $deliveryLocation, orderType: $orderType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.truck, truck) || other.truck == truck) &&
            (identical(other.containerNumber, containerNumber) ||
                other.containerNumber == containerNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.customerPhone, customerPhone) ||
                other.customerPhone == customerPhone) &&
            (identical(other.deliveryLocation, deliveryLocation) ||
                other.deliveryLocation == deliveryLocation) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    truck,
    containerNumber,
    type,
    size,
    deliveryDate,
    status,
    customerName,
    customerPhone,
    deliveryLocation,
    orderType,
  );

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOrderImplCopyWith<_$DriverOrderImpl> get copyWith =>
      __$$DriverOrderImplCopyWithImpl<_$DriverOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverOrderImplToJson(this);
  }
}

abstract class _DriverOrder implements DriverOrder {
  const factory _DriverOrder({
    required final String id,
    required final String truck,
    final int? containerNumber,
    required final String type,
    required final String size,
    required final String deliveryDate,
    required final String status,
    final String? customerName,
    final String? customerPhone,
    final DriverOrderLocation? deliveryLocation,
    final String? orderType,
  }) = _$DriverOrderImpl;

  factory _DriverOrder.fromJson(Map<String, dynamic> json) =
      _$DriverOrderImpl.fromJson;

  @override
  String get id;
  @override
  String get truck;
  @override
  int? get containerNumber;
  @override
  String get type;
  @override
  String get size;
  @override
  String get deliveryDate;
  @override
  String get status;
  @override
  String? get customerName;
  @override
  String? get customerPhone;
  @override
  DriverOrderLocation? get deliveryLocation;
  @override
  String? get orderType;

  /// Create a copy of DriverOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOrderImplCopyWith<_$DriverOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverOrderLocation _$DriverOrderLocationFromJson(Map<String, dynamic> json) {
  return _DriverOrderLocation.fromJson(json);
}

/// @nodoc
mixin _$DriverOrderLocation {
  String? get address => throw _privateConstructorUsedError;
  String? get cityName => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  /// Serializes this DriverOrderLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverOrderLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverOrderLocationCopyWith<DriverOrderLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverOrderLocationCopyWith<$Res> {
  factory $DriverOrderLocationCopyWith(
    DriverOrderLocation value,
    $Res Function(DriverOrderLocation) then,
  ) = _$DriverOrderLocationCopyWithImpl<$Res, DriverOrderLocation>;
  @useResult
  $Res call({
    String? address,
    String? cityName,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class _$DriverOrderLocationCopyWithImpl<$Res, $Val extends DriverOrderLocation>
    implements $DriverOrderLocationCopyWith<$Res> {
  _$DriverOrderLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverOrderLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? cityName = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _value.copyWith(
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
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverOrderLocationImplCopyWith<$Res>
    implements $DriverOrderLocationCopyWith<$Res> {
  factory _$$DriverOrderLocationImplCopyWith(
    _$DriverOrderLocationImpl value,
    $Res Function(_$DriverOrderLocationImpl) then,
  ) = __$$DriverOrderLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? address,
    String? cityName,
    double latitude,
    double longitude,
  });
}

/// @nodoc
class __$$DriverOrderLocationImplCopyWithImpl<$Res>
    extends _$DriverOrderLocationCopyWithImpl<$Res, _$DriverOrderLocationImpl>
    implements _$$DriverOrderLocationImplCopyWith<$Res> {
  __$$DriverOrderLocationImplCopyWithImpl(
    _$DriverOrderLocationImpl _value,
    $Res Function(_$DriverOrderLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverOrderLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? cityName = freezed,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(
      _$DriverOrderLocationImpl(
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
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverOrderLocationImpl implements _DriverOrderLocation {
  const _$DriverOrderLocationImpl({
    this.address,
    this.cityName,
    required this.latitude,
    required this.longitude,
  });

  factory _$DriverOrderLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverOrderLocationImplFromJson(json);

  @override
  final String? address;
  @override
  final String? cityName;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'DriverOrderLocation(address: $address, cityName: $cityName, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverOrderLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.cityName, cityName) ||
                other.cityName == cityName) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, cityName, latitude, longitude);

  /// Create a copy of DriverOrderLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverOrderLocationImplCopyWith<_$DriverOrderLocationImpl> get copyWith =>
      __$$DriverOrderLocationImplCopyWithImpl<_$DriverOrderLocationImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverOrderLocationImplToJson(this);
  }
}

abstract class _DriverOrderLocation implements DriverOrderLocation {
  const factory _DriverOrderLocation({
    final String? address,
    final String? cityName,
    required final double latitude,
    required final double longitude,
  }) = _$DriverOrderLocationImpl;

  factory _DriverOrderLocation.fromJson(Map<String, dynamic> json) =
      _$DriverOrderLocationImpl.fromJson;

  @override
  String? get address;
  @override
  String? get cityName;
  @override
  double get latitude;
  @override
  double get longitude;

  /// Create a copy of DriverOrderLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverOrderLocationImplCopyWith<_$DriverOrderLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverSummary _$DriverSummaryFromJson(Map<String, dynamic> json) {
  return _DriverSummary.fromJson(json);
}

/// @nodoc
mixin _$DriverSummary {
  int get totalOrders => throw _privateConstructorUsedError;
  int get totalSubOrders => throw _privateConstructorUsedError;
  int get totalAssignedOrders => throw _privateConstructorUsedError;
  int get completedOrders => throw _privateConstructorUsedError;
  int get pendingOrders => throw _privateConstructorUsedError;

  /// Serializes this DriverSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverSummaryCopyWith<DriverSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverSummaryCopyWith<$Res> {
  factory $DriverSummaryCopyWith(
    DriverSummary value,
    $Res Function(DriverSummary) then,
  ) = _$DriverSummaryCopyWithImpl<$Res, DriverSummary>;
  @useResult
  $Res call({
    int totalOrders,
    int totalSubOrders,
    int totalAssignedOrders,
    int completedOrders,
    int pendingOrders,
  });
}

/// @nodoc
class _$DriverSummaryCopyWithImpl<$Res, $Val extends DriverSummary>
    implements $DriverSummaryCopyWith<$Res> {
  _$DriverSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? totalSubOrders = null,
    Object? totalAssignedOrders = null,
    Object? completedOrders = null,
    Object? pendingOrders = null,
  }) {
    return _then(
      _value.copyWith(
            totalOrders:
                null == totalOrders
                    ? _value.totalOrders
                    : totalOrders // ignore: cast_nullable_to_non_nullable
                        as int,
            totalSubOrders:
                null == totalSubOrders
                    ? _value.totalSubOrders
                    : totalSubOrders // ignore: cast_nullable_to_non_nullable
                        as int,
            totalAssignedOrders:
                null == totalAssignedOrders
                    ? _value.totalAssignedOrders
                    : totalAssignedOrders // ignore: cast_nullable_to_non_nullable
                        as int,
            completedOrders:
                null == completedOrders
                    ? _value.completedOrders
                    : completedOrders // ignore: cast_nullable_to_non_nullable
                        as int,
            pendingOrders:
                null == pendingOrders
                    ? _value.pendingOrders
                    : pendingOrders // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverSummaryImplCopyWith<$Res>
    implements $DriverSummaryCopyWith<$Res> {
  factory _$$DriverSummaryImplCopyWith(
    _$DriverSummaryImpl value,
    $Res Function(_$DriverSummaryImpl) then,
  ) = __$$DriverSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int totalOrders,
    int totalSubOrders,
    int totalAssignedOrders,
    int completedOrders,
    int pendingOrders,
  });
}

/// @nodoc
class __$$DriverSummaryImplCopyWithImpl<$Res>
    extends _$DriverSummaryCopyWithImpl<$Res, _$DriverSummaryImpl>
    implements _$$DriverSummaryImplCopyWith<$Res> {
  __$$DriverSummaryImplCopyWithImpl(
    _$DriverSummaryImpl _value,
    $Res Function(_$DriverSummaryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalOrders = null,
    Object? totalSubOrders = null,
    Object? totalAssignedOrders = null,
    Object? completedOrders = null,
    Object? pendingOrders = null,
  }) {
    return _then(
      _$DriverSummaryImpl(
        totalOrders:
            null == totalOrders
                ? _value.totalOrders
                : totalOrders // ignore: cast_nullable_to_non_nullable
                    as int,
        totalSubOrders:
            null == totalSubOrders
                ? _value.totalSubOrders
                : totalSubOrders // ignore: cast_nullable_to_non_nullable
                    as int,
        totalAssignedOrders:
            null == totalAssignedOrders
                ? _value.totalAssignedOrders
                : totalAssignedOrders // ignore: cast_nullable_to_non_nullable
                    as int,
        completedOrders:
            null == completedOrders
                ? _value.completedOrders
                : completedOrders // ignore: cast_nullable_to_non_nullable
                    as int,
        pendingOrders:
            null == pendingOrders
                ? _value.pendingOrders
                : pendingOrders // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverSummaryImpl implements _DriverSummary {
  const _$DriverSummaryImpl({
    required this.totalOrders,
    required this.totalSubOrders,
    required this.totalAssignedOrders,
    required this.completedOrders,
    required this.pendingOrders,
  });

  factory _$DriverSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverSummaryImplFromJson(json);

  @override
  final int totalOrders;
  @override
  final int totalSubOrders;
  @override
  final int totalAssignedOrders;
  @override
  final int completedOrders;
  @override
  final int pendingOrders;

  @override
  String toString() {
    return 'DriverSummary(totalOrders: $totalOrders, totalSubOrders: $totalSubOrders, totalAssignedOrders: $totalAssignedOrders, completedOrders: $completedOrders, pendingOrders: $pendingOrders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverSummaryImpl &&
            (identical(other.totalOrders, totalOrders) ||
                other.totalOrders == totalOrders) &&
            (identical(other.totalSubOrders, totalSubOrders) ||
                other.totalSubOrders == totalSubOrders) &&
            (identical(other.totalAssignedOrders, totalAssignedOrders) ||
                other.totalAssignedOrders == totalAssignedOrders) &&
            (identical(other.completedOrders, completedOrders) ||
                other.completedOrders == completedOrders) &&
            (identical(other.pendingOrders, pendingOrders) ||
                other.pendingOrders == pendingOrders));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    totalOrders,
    totalSubOrders,
    totalAssignedOrders,
    completedOrders,
    pendingOrders,
  );

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverSummaryImplCopyWith<_$DriverSummaryImpl> get copyWith =>
      __$$DriverSummaryImplCopyWithImpl<_$DriverSummaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverSummaryImplToJson(this);
  }
}

abstract class _DriverSummary implements DriverSummary {
  const factory _DriverSummary({
    required final int totalOrders,
    required final int totalSubOrders,
    required final int totalAssignedOrders,
    required final int completedOrders,
    required final int pendingOrders,
  }) = _$DriverSummaryImpl;

  factory _DriverSummary.fromJson(Map<String, dynamic> json) =
      _$DriverSummaryImpl.fromJson;

  @override
  int get totalOrders;
  @override
  int get totalSubOrders;
  @override
  int get totalAssignedOrders;
  @override
  int get completedOrders;
  @override
  int get pendingOrders;

  /// Create a copy of DriverSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverSummaryImplCopyWith<_$DriverSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
