// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'drivers_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriversState {
  List<Driver> get drivers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriversStateCopyWith<DriversState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriversStateCopyWith<$Res> {
  factory $DriversStateCopyWith(
    DriversState value,
    $Res Function(DriversState) then,
  ) = _$DriversStateCopyWithImpl<$Res, DriversState>;
  @useResult
  $Res call({List<Driver> drivers, bool isLoading, String? error});
}

/// @nodoc
class _$DriversStateCopyWithImpl<$Res, $Val extends DriversState>
    implements $DriversStateCopyWith<$Res> {
  _$DriversStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drivers = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            drivers:
                null == drivers
                    ? _value.drivers
                    : drivers // ignore: cast_nullable_to_non_nullable
                        as List<Driver>,
            isLoading:
                null == isLoading
                    ? _value.isLoading
                    : isLoading // ignore: cast_nullable_to_non_nullable
                        as bool,
            error:
                freezed == error
                    ? _value.error
                    : error // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DriversStateImplCopyWith<$Res>
    implements $DriversStateCopyWith<$Res> {
  factory _$$DriversStateImplCopyWith(
    _$DriversStateImpl value,
    $Res Function(_$DriversStateImpl) then,
  ) = __$$DriversStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Driver> drivers, bool isLoading, String? error});
}

/// @nodoc
class __$$DriversStateImplCopyWithImpl<$Res>
    extends _$DriversStateCopyWithImpl<$Res, _$DriversStateImpl>
    implements _$$DriversStateImplCopyWith<$Res> {
  __$$DriversStateImplCopyWithImpl(
    _$DriversStateImpl _value,
    $Res Function(_$DriversStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? drivers = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$DriversStateImpl(
        drivers:
            null == drivers
                ? _value._drivers
                : drivers // ignore: cast_nullable_to_non_nullable
                    as List<Driver>,
        isLoading:
            null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                    as bool,
        error:
            freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc

class _$DriversStateImpl implements _DriversState {
  const _$DriversStateImpl({
    final List<Driver> drivers = const [],
    this.isLoading = false,
    this.error,
  }) : _drivers = drivers;

  final List<Driver> _drivers;
  @override
  @JsonKey()
  List<Driver> get drivers {
    if (_drivers is EqualUnmodifiableListView) return _drivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drivers);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'DriversState(drivers: $drivers, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriversStateImpl &&
            const DeepCollectionEquality().equals(other._drivers, _drivers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_drivers),
    isLoading,
    error,
  );

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriversStateImplCopyWith<_$DriversStateImpl> get copyWith =>
      __$$DriversStateImplCopyWithImpl<_$DriversStateImpl>(this, _$identity);
}

abstract class _DriversState implements DriversState {
  const factory _DriversState({
    final List<Driver> drivers,
    final bool isLoading,
    final String? error,
  }) = _$DriversStateImpl;

  @override
  List<Driver> get drivers;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of DriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriversStateImplCopyWith<_$DriversStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
