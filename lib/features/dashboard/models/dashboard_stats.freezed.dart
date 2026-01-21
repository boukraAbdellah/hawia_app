// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) {
  return _DashboardStats.fromJson(json);
}

/// @nodoc
mixin _$DashboardStats {
  ContainerStats get containerStats => throw _privateConstructorUsedError;
  OrderStats get orderStats => throw _privateConstructorUsedError;
  DriverStats get driverStats => throw _privateConstructorUsedError;
  List<MonthlyData> get monthlyData => throw _privateConstructorUsedError;
  CurrentMonth get currentMonth => throw _privateConstructorUsedError;

  /// Serializes this DashboardStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardStatsCopyWith<DashboardStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStatsCopyWith<$Res> {
  factory $DashboardStatsCopyWith(
    DashboardStats value,
    $Res Function(DashboardStats) then,
  ) = _$DashboardStatsCopyWithImpl<$Res, DashboardStats>;
  @useResult
  $Res call({
    ContainerStats containerStats,
    OrderStats orderStats,
    DriverStats driverStats,
    List<MonthlyData> monthlyData,
    CurrentMonth currentMonth,
  });

  $ContainerStatsCopyWith<$Res> get containerStats;
  $OrderStatsCopyWith<$Res> get orderStats;
  $DriverStatsCopyWith<$Res> get driverStats;
  $CurrentMonthCopyWith<$Res> get currentMonth;
}

/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res, $Val extends DashboardStats>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerStats = null,
    Object? orderStats = null,
    Object? driverStats = null,
    Object? monthlyData = null,
    Object? currentMonth = null,
  }) {
    return _then(
      _value.copyWith(
            containerStats:
                null == containerStats
                    ? _value.containerStats
                    : containerStats // ignore: cast_nullable_to_non_nullable
                        as ContainerStats,
            orderStats:
                null == orderStats
                    ? _value.orderStats
                    : orderStats // ignore: cast_nullable_to_non_nullable
                        as OrderStats,
            driverStats:
                null == driverStats
                    ? _value.driverStats
                    : driverStats // ignore: cast_nullable_to_non_nullable
                        as DriverStats,
            monthlyData:
                null == monthlyData
                    ? _value.monthlyData
                    : monthlyData // ignore: cast_nullable_to_non_nullable
                        as List<MonthlyData>,
            currentMonth:
                null == currentMonth
                    ? _value.currentMonth
                    : currentMonth // ignore: cast_nullable_to_non_nullable
                        as CurrentMonth,
          )
          as $Val,
    );
  }

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerStatsCopyWith<$Res> get containerStats {
    return $ContainerStatsCopyWith<$Res>(_value.containerStats, (value) {
      return _then(_value.copyWith(containerStats: value) as $Val);
    });
  }

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OrderStatsCopyWith<$Res> get orderStats {
    return $OrderStatsCopyWith<$Res>(_value.orderStats, (value) {
      return _then(_value.copyWith(orderStats: value) as $Val);
    });
  }

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverStatsCopyWith<$Res> get driverStats {
    return $DriverStatsCopyWith<$Res>(_value.driverStats, (value) {
      return _then(_value.copyWith(driverStats: value) as $Val);
    });
  }

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrentMonthCopyWith<$Res> get currentMonth {
    return $CurrentMonthCopyWith<$Res>(_value.currentMonth, (value) {
      return _then(_value.copyWith(currentMonth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DashboardStatsImplCopyWith<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  factory _$$DashboardStatsImplCopyWith(
    _$DashboardStatsImpl value,
    $Res Function(_$DashboardStatsImpl) then,
  ) = __$$DashboardStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    ContainerStats containerStats,
    OrderStats orderStats,
    DriverStats driverStats,
    List<MonthlyData> monthlyData,
    CurrentMonth currentMonth,
  });

  @override
  $ContainerStatsCopyWith<$Res> get containerStats;
  @override
  $OrderStatsCopyWith<$Res> get orderStats;
  @override
  $DriverStatsCopyWith<$Res> get driverStats;
  @override
  $CurrentMonthCopyWith<$Res> get currentMonth;
}

/// @nodoc
class __$$DashboardStatsImplCopyWithImpl<$Res>
    extends _$DashboardStatsCopyWithImpl<$Res, _$DashboardStatsImpl>
    implements _$$DashboardStatsImplCopyWith<$Res> {
  __$$DashboardStatsImplCopyWithImpl(
    _$DashboardStatsImpl _value,
    $Res Function(_$DashboardStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? containerStats = null,
    Object? orderStats = null,
    Object? driverStats = null,
    Object? monthlyData = null,
    Object? currentMonth = null,
  }) {
    return _then(
      _$DashboardStatsImpl(
        containerStats:
            null == containerStats
                ? _value.containerStats
                : containerStats // ignore: cast_nullable_to_non_nullable
                    as ContainerStats,
        orderStats:
            null == orderStats
                ? _value.orderStats
                : orderStats // ignore: cast_nullable_to_non_nullable
                    as OrderStats,
        driverStats:
            null == driverStats
                ? _value.driverStats
                : driverStats // ignore: cast_nullable_to_non_nullable
                    as DriverStats,
        monthlyData:
            null == monthlyData
                ? _value._monthlyData
                : monthlyData // ignore: cast_nullable_to_non_nullable
                    as List<MonthlyData>,
        currentMonth:
            null == currentMonth
                ? _value.currentMonth
                : currentMonth // ignore: cast_nullable_to_non_nullable
                    as CurrentMonth,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DashboardStatsImpl implements _DashboardStats {
  const _$DashboardStatsImpl({
    required this.containerStats,
    required this.orderStats,
    required this.driverStats,
    required final List<MonthlyData> monthlyData,
    required this.currentMonth,
  }) : _monthlyData = monthlyData;

  factory _$DashboardStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashboardStatsImplFromJson(json);

  @override
  final ContainerStats containerStats;
  @override
  final OrderStats orderStats;
  @override
  final DriverStats driverStats;
  final List<MonthlyData> _monthlyData;
  @override
  List<MonthlyData> get monthlyData {
    if (_monthlyData is EqualUnmodifiableListView) return _monthlyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyData);
  }

  @override
  final CurrentMonth currentMonth;

  @override
  String toString() {
    return 'DashboardStats(containerStats: $containerStats, orderStats: $orderStats, driverStats: $driverStats, monthlyData: $monthlyData, currentMonth: $currentMonth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardStatsImpl &&
            (identical(other.containerStats, containerStats) ||
                other.containerStats == containerStats) &&
            (identical(other.orderStats, orderStats) ||
                other.orderStats == orderStats) &&
            (identical(other.driverStats, driverStats) ||
                other.driverStats == driverStats) &&
            const DeepCollectionEquality().equals(
              other._monthlyData,
              _monthlyData,
            ) &&
            (identical(other.currentMonth, currentMonth) ||
                other.currentMonth == currentMonth));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    containerStats,
    orderStats,
    driverStats,
    const DeepCollectionEquality().hash(_monthlyData),
    currentMonth,
  );

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      __$$DashboardStatsImplCopyWithImpl<_$DashboardStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$DashboardStatsImplToJson(this);
  }
}

abstract class _DashboardStats implements DashboardStats {
  const factory _DashboardStats({
    required final ContainerStats containerStats,
    required final OrderStats orderStats,
    required final DriverStats driverStats,
    required final List<MonthlyData> monthlyData,
    required final CurrentMonth currentMonth,
  }) = _$DashboardStatsImpl;

  factory _DashboardStats.fromJson(Map<String, dynamic> json) =
      _$DashboardStatsImpl.fromJson;

  @override
  ContainerStats get containerStats;
  @override
  OrderStats get orderStats;
  @override
  DriverStats get driverStats;
  @override
  List<MonthlyData> get monthlyData;
  @override
  CurrentMonth get currentMonth;

  /// Create a copy of DashboardStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardStatsImplCopyWith<_$DashboardStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContainerStats _$ContainerStatsFromJson(Map<String, dynamic> json) {
  return _ContainerStats.fromJson(json);
}

/// @nodoc
mixin _$ContainerStats {
  @IntConverter()
  int get total => throw _privateConstructorUsedError;
  @IntConverter()
  int get rented => throw _privateConstructorUsedError;
  @IntConverter()
  int get available => throw _privateConstructorUsedError;

  /// Serializes this ContainerStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerStatsCopyWith<ContainerStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerStatsCopyWith<$Res> {
  factory $ContainerStatsCopyWith(
    ContainerStats value,
    $Res Function(ContainerStats) then,
  ) = _$ContainerStatsCopyWithImpl<$Res, ContainerStats>;
  @useResult
  $Res call({
    @IntConverter() int total,
    @IntConverter() int rented,
    @IntConverter() int available,
  });
}

/// @nodoc
class _$ContainerStatsCopyWithImpl<$Res, $Val extends ContainerStats>
    implements $ContainerStatsCopyWith<$Res> {
  _$ContainerStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? rented = null,
    Object? available = null,
  }) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            rented:
                null == rented
                    ? _value.rented
                    : rented // ignore: cast_nullable_to_non_nullable
                        as int,
            available:
                null == available
                    ? _value.available
                    : available // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerStatsImplCopyWith<$Res>
    implements $ContainerStatsCopyWith<$Res> {
  factory _$$ContainerStatsImplCopyWith(
    _$ContainerStatsImpl value,
    $Res Function(_$ContainerStatsImpl) then,
  ) = __$$ContainerStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IntConverter() int total,
    @IntConverter() int rented,
    @IntConverter() int available,
  });
}

/// @nodoc
class __$$ContainerStatsImplCopyWithImpl<$Res>
    extends _$ContainerStatsCopyWithImpl<$Res, _$ContainerStatsImpl>
    implements _$$ContainerStatsImplCopyWith<$Res> {
  __$$ContainerStatsImplCopyWithImpl(
    _$ContainerStatsImpl _value,
    $Res Function(_$ContainerStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? rented = null,
    Object? available = null,
  }) {
    return _then(
      _$ContainerStatsImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        rented:
            null == rented
                ? _value.rented
                : rented // ignore: cast_nullable_to_non_nullable
                    as int,
        available:
            null == available
                ? _value.available
                : available // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerStatsImpl implements _ContainerStats {
  const _$ContainerStatsImpl({
    @IntConverter() required this.total,
    @IntConverter() required this.rented,
    @IntConverter() required this.available,
  });

  factory _$ContainerStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerStatsImplFromJson(json);

  @override
  @IntConverter()
  final int total;
  @override
  @IntConverter()
  final int rented;
  @override
  @IntConverter()
  final int available;

  @override
  String toString() {
    return 'ContainerStats(total: $total, rented: $rented, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.rented, rented) || other.rented == rented) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, rented, available);

  /// Create a copy of ContainerStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerStatsImplCopyWith<_$ContainerStatsImpl> get copyWith =>
      __$$ContainerStatsImplCopyWithImpl<_$ContainerStatsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerStatsImplToJson(this);
  }
}

abstract class _ContainerStats implements ContainerStats {
  const factory _ContainerStats({
    @IntConverter() required final int total,
    @IntConverter() required final int rented,
    @IntConverter() required final int available,
  }) = _$ContainerStatsImpl;

  factory _ContainerStats.fromJson(Map<String, dynamic> json) =
      _$ContainerStatsImpl.fromJson;

  @override
  @IntConverter()
  int get total;
  @override
  @IntConverter()
  int get rented;
  @override
  @IntConverter()
  int get available;

  /// Create a copy of ContainerStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerStatsImplCopyWith<_$ContainerStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderStats _$OrderStatsFromJson(Map<String, dynamic> json) {
  return _OrderStats.fromJson(json);
}

/// @nodoc
mixin _$OrderStats {
  @IntConverter()
  int get total => throw _privateConstructorUsedError;
  @IntConverter()
  int get pending => throw _privateConstructorUsedError;
  @IntConverter()
  int get completed => throw _privateConstructorUsedError;

  /// Serializes this OrderStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OrderStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStatsCopyWith<OrderStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatsCopyWith<$Res> {
  factory $OrderStatsCopyWith(
    OrderStats value,
    $Res Function(OrderStats) then,
  ) = _$OrderStatsCopyWithImpl<$Res, OrderStats>;
  @useResult
  $Res call({
    @IntConverter() int total,
    @IntConverter() int pending,
    @IntConverter() int completed,
  });
}

/// @nodoc
class _$OrderStatsCopyWithImpl<$Res, $Val extends OrderStats>
    implements $OrderStatsCopyWith<$Res> {
  _$OrderStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pending = null,
    Object? completed = null,
  }) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            pending:
                null == pending
                    ? _value.pending
                    : pending // ignore: cast_nullable_to_non_nullable
                        as int,
            completed:
                null == completed
                    ? _value.completed
                    : completed // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OrderStatsImplCopyWith<$Res>
    implements $OrderStatsCopyWith<$Res> {
  factory _$$OrderStatsImplCopyWith(
    _$OrderStatsImpl value,
    $Res Function(_$OrderStatsImpl) then,
  ) = __$$OrderStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IntConverter() int total,
    @IntConverter() int pending,
    @IntConverter() int completed,
  });
}

/// @nodoc
class __$$OrderStatsImplCopyWithImpl<$Res>
    extends _$OrderStatsCopyWithImpl<$Res, _$OrderStatsImpl>
    implements _$$OrderStatsImplCopyWith<$Res> {
  __$$OrderStatsImplCopyWithImpl(
    _$OrderStatsImpl _value,
    $Res Function(_$OrderStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OrderStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? pending = null,
    Object? completed = null,
  }) {
    return _then(
      _$OrderStatsImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        pending:
            null == pending
                ? _value.pending
                : pending // ignore: cast_nullable_to_non_nullable
                    as int,
        completed:
            null == completed
                ? _value.completed
                : completed // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderStatsImpl implements _OrderStats {
  const _$OrderStatsImpl({
    @IntConverter() required this.total,
    @IntConverter() required this.pending,
    @IntConverter() required this.completed,
  });

  factory _$OrderStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderStatsImplFromJson(json);

  @override
  @IntConverter()
  final int total;
  @override
  @IntConverter()
  final int pending;
  @override
  @IntConverter()
  final int completed;

  @override
  String toString() {
    return 'OrderStats(total: $total, pending: $pending, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.pending, pending) || other.pending == pending) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, pending, completed);

  /// Create a copy of OrderStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStatsImplCopyWith<_$OrderStatsImpl> get copyWith =>
      __$$OrderStatsImplCopyWithImpl<_$OrderStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderStatsImplToJson(this);
  }
}

abstract class _OrderStats implements OrderStats {
  const factory _OrderStats({
    @IntConverter() required final int total,
    @IntConverter() required final int pending,
    @IntConverter() required final int completed,
  }) = _$OrderStatsImpl;

  factory _OrderStats.fromJson(Map<String, dynamic> json) =
      _$OrderStatsImpl.fromJson;

  @override
  @IntConverter()
  int get total;
  @override
  @IntConverter()
  int get pending;
  @override
  @IntConverter()
  int get completed;

  /// Create a copy of OrderStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStatsImplCopyWith<_$OrderStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DriverStats _$DriverStatsFromJson(Map<String, dynamic> json) {
  return _DriverStats.fromJson(json);
}

/// @nodoc
mixin _$DriverStats {
  @IntConverter()
  int get total => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get completionRate => throw _privateConstructorUsedError;

  /// Serializes this DriverStats to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverStatsCopyWith<DriverStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverStatsCopyWith<$Res> {
  factory $DriverStatsCopyWith(
    DriverStats value,
    $Res Function(DriverStats) then,
  ) = _$DriverStatsCopyWithImpl<$Res, DriverStats>;
  @useResult
  $Res call({
    @IntConverter() int total,
    @DoubleConverter() double completionRate,
  });
}

/// @nodoc
class _$DriverStatsCopyWithImpl<$Res, $Val extends DriverStats>
    implements $DriverStatsCopyWith<$Res> {
  _$DriverStatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? completionRate = null}) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            completionRate:
                null == completionRate
                    ? _value.completionRate
                    : completionRate // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriverStatsImplCopyWith<$Res>
    implements $DriverStatsCopyWith<$Res> {
  factory _$$DriverStatsImplCopyWith(
    _$DriverStatsImpl value,
    $Res Function(_$DriverStatsImpl) then,
  ) = __$$DriverStatsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IntConverter() int total,
    @DoubleConverter() double completionRate,
  });
}

/// @nodoc
class __$$DriverStatsImplCopyWithImpl<$Res>
    extends _$DriverStatsCopyWithImpl<$Res, _$DriverStatsImpl>
    implements _$$DriverStatsImplCopyWith<$Res> {
  __$$DriverStatsImplCopyWithImpl(
    _$DriverStatsImpl _value,
    $Res Function(_$DriverStatsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? total = null, Object? completionRate = null}) {
    return _then(
      _$DriverStatsImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        completionRate:
            null == completionRate
                ? _value.completionRate
                : completionRate // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DriverStatsImpl implements _DriverStats {
  const _$DriverStatsImpl({
    @IntConverter() required this.total,
    @DoubleConverter() required this.completionRate,
  });

  factory _$DriverStatsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DriverStatsImplFromJson(json);

  @override
  @IntConverter()
  final int total;
  @override
  @DoubleConverter()
  final double completionRate;

  @override
  String toString() {
    return 'DriverStats(total: $total, completionRate: $completionRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverStatsImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.completionRate, completionRate) ||
                other.completionRate == completionRate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, completionRate);

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverStatsImplCopyWith<_$DriverStatsImpl> get copyWith =>
      __$$DriverStatsImplCopyWithImpl<_$DriverStatsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DriverStatsImplToJson(this);
  }
}

abstract class _DriverStats implements DriverStats {
  const factory _DriverStats({
    @IntConverter() required final int total,
    @DoubleConverter() required final double completionRate,
  }) = _$DriverStatsImpl;

  factory _DriverStats.fromJson(Map<String, dynamic> json) =
      _$DriverStatsImpl.fromJson;

  @override
  @IntConverter()
  int get total;
  @override
  @DoubleConverter()
  double get completionRate;

  /// Create a copy of DriverStats
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverStatsImplCopyWith<_$DriverStatsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthlyData _$MonthlyDataFromJson(Map<String, dynamic> json) {
  return _MonthlyData.fromJson(json);
}

/// @nodoc
mixin _$MonthlyData {
  String get month => throw _privateConstructorUsedError;
  @IntConverter()
  int get requests => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get revenue => throw _privateConstructorUsedError;

  /// Serializes this MonthlyData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyDataCopyWith<MonthlyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyDataCopyWith<$Res> {
  factory $MonthlyDataCopyWith(
    MonthlyData value,
    $Res Function(MonthlyData) then,
  ) = _$MonthlyDataCopyWithImpl<$Res, MonthlyData>;
  @useResult
  $Res call({
    String month,
    @IntConverter() int requests,
    @DoubleConverter() double revenue,
  });
}

/// @nodoc
class _$MonthlyDataCopyWithImpl<$Res, $Val extends MonthlyData>
    implements $MonthlyDataCopyWith<$Res> {
  _$MonthlyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? requests = null,
    Object? revenue = null,
  }) {
    return _then(
      _value.copyWith(
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as String,
            requests:
                null == requests
                    ? _value.requests
                    : requests // ignore: cast_nullable_to_non_nullable
                        as int,
            revenue:
                null == revenue
                    ? _value.revenue
                    : revenue // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MonthlyDataImplCopyWith<$Res>
    implements $MonthlyDataCopyWith<$Res> {
  factory _$$MonthlyDataImplCopyWith(
    _$MonthlyDataImpl value,
    $Res Function(_$MonthlyDataImpl) then,
  ) = __$$MonthlyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String month,
    @IntConverter() int requests,
    @DoubleConverter() double revenue,
  });
}

/// @nodoc
class __$$MonthlyDataImplCopyWithImpl<$Res>
    extends _$MonthlyDataCopyWithImpl<$Res, _$MonthlyDataImpl>
    implements _$$MonthlyDataImplCopyWith<$Res> {
  __$$MonthlyDataImplCopyWithImpl(
    _$MonthlyDataImpl _value,
    $Res Function(_$MonthlyDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MonthlyData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? month = null,
    Object? requests = null,
    Object? revenue = null,
  }) {
    return _then(
      _$MonthlyDataImpl(
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as String,
        requests:
            null == requests
                ? _value.requests
                : requests // ignore: cast_nullable_to_non_nullable
                    as int,
        revenue:
            null == revenue
                ? _value.revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MonthlyDataImpl implements _MonthlyData {
  const _$MonthlyDataImpl({
    required this.month,
    @IntConverter() required this.requests,
    @DoubleConverter() required this.revenue,
  });

  factory _$MonthlyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyDataImplFromJson(json);

  @override
  final String month;
  @override
  @IntConverter()
  final int requests;
  @override
  @DoubleConverter()
  final double revenue;

  @override
  String toString() {
    return 'MonthlyData(month: $month, requests: $requests, revenue: $revenue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyDataImpl &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.revenue, revenue) || other.revenue == revenue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, month, requests, revenue);

  /// Create a copy of MonthlyData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyDataImplCopyWith<_$MonthlyDataImpl> get copyWith =>
      __$$MonthlyDataImplCopyWithImpl<_$MonthlyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyDataImplToJson(this);
  }
}

abstract class _MonthlyData implements MonthlyData {
  const factory _MonthlyData({
    required final String month,
    @IntConverter() required final int requests,
    @DoubleConverter() required final double revenue,
  }) = _$MonthlyDataImpl;

  factory _MonthlyData.fromJson(Map<String, dynamic> json) =
      _$MonthlyDataImpl.fromJson;

  @override
  String get month;
  @override
  @IntConverter()
  int get requests;
  @override
  @DoubleConverter()
  double get revenue;

  /// Create a copy of MonthlyData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyDataImplCopyWith<_$MonthlyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CurrentMonth _$CurrentMonthFromJson(Map<String, dynamic> json) {
  return _CurrentMonth.fromJson(json);
}

/// @nodoc
mixin _$CurrentMonth {
  @IntConverter()
  int get orders => throw _privateConstructorUsedError;
  @DoubleConverter()
  double get revenue => throw _privateConstructorUsedError;
  String get month => throw _privateConstructorUsedError;

  /// Serializes this CurrentMonth to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CurrentMonth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CurrentMonthCopyWith<CurrentMonth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentMonthCopyWith<$Res> {
  factory $CurrentMonthCopyWith(
    CurrentMonth value,
    $Res Function(CurrentMonth) then,
  ) = _$CurrentMonthCopyWithImpl<$Res, CurrentMonth>;
  @useResult
  $Res call({
    @IntConverter() int orders,
    @DoubleConverter() double revenue,
    String month,
  });
}

/// @nodoc
class _$CurrentMonthCopyWithImpl<$Res, $Val extends CurrentMonth>
    implements $CurrentMonthCopyWith<$Res> {
  _$CurrentMonthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CurrentMonth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? revenue = null,
    Object? month = null,
  }) {
    return _then(
      _value.copyWith(
            orders:
                null == orders
                    ? _value.orders
                    : orders // ignore: cast_nullable_to_non_nullable
                        as int,
            revenue:
                null == revenue
                    ? _value.revenue
                    : revenue // ignore: cast_nullable_to_non_nullable
                        as double,
            month:
                null == month
                    ? _value.month
                    : month // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CurrentMonthImplCopyWith<$Res>
    implements $CurrentMonthCopyWith<$Res> {
  factory _$$CurrentMonthImplCopyWith(
    _$CurrentMonthImpl value,
    $Res Function(_$CurrentMonthImpl) then,
  ) = __$$CurrentMonthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IntConverter() int orders,
    @DoubleConverter() double revenue,
    String month,
  });
}

/// @nodoc
class __$$CurrentMonthImplCopyWithImpl<$Res>
    extends _$CurrentMonthCopyWithImpl<$Res, _$CurrentMonthImpl>
    implements _$$CurrentMonthImplCopyWith<$Res> {
  __$$CurrentMonthImplCopyWithImpl(
    _$CurrentMonthImpl _value,
    $Res Function(_$CurrentMonthImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CurrentMonth
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
    Object? revenue = null,
    Object? month = null,
  }) {
    return _then(
      _$CurrentMonthImpl(
        orders:
            null == orders
                ? _value.orders
                : orders // ignore: cast_nullable_to_non_nullable
                    as int,
        revenue:
            null == revenue
                ? _value.revenue
                : revenue // ignore: cast_nullable_to_non_nullable
                    as double,
        month:
            null == month
                ? _value.month
                : month // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentMonthImpl implements _CurrentMonth {
  const _$CurrentMonthImpl({
    @IntConverter() required this.orders,
    @DoubleConverter() required this.revenue,
    required this.month,
  });

  factory _$CurrentMonthImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentMonthImplFromJson(json);

  @override
  @IntConverter()
  final int orders;
  @override
  @DoubleConverter()
  final double revenue;
  @override
  final String month;

  @override
  String toString() {
    return 'CurrentMonth(orders: $orders, revenue: $revenue, month: $month)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentMonthImpl &&
            (identical(other.orders, orders) || other.orders == orders) &&
            (identical(other.revenue, revenue) || other.revenue == revenue) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, orders, revenue, month);

  /// Create a copy of CurrentMonth
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentMonthImplCopyWith<_$CurrentMonthImpl> get copyWith =>
      __$$CurrentMonthImplCopyWithImpl<_$CurrentMonthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentMonthImplToJson(this);
  }
}

abstract class _CurrentMonth implements CurrentMonth {
  const factory _CurrentMonth({
    @IntConverter() required final int orders,
    @DoubleConverter() required final double revenue,
    required final String month,
  }) = _$CurrentMonthImpl;

  factory _CurrentMonth.fromJson(Map<String, dynamic> json) =
      _$CurrentMonthImpl.fromJson;

  @override
  @IntConverter()
  int get orders;
  @override
  @DoubleConverter()
  double get revenue;
  @override
  String get month;

  /// Create a copy of CurrentMonth
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CurrentMonthImplCopyWith<_$CurrentMonthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
