// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'driver_details_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$DriverDetailsState {
  DriverDetails? get details => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DriverDetailsStateCopyWith<DriverDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DriverDetailsStateCopyWith<$Res> {
  factory $DriverDetailsStateCopyWith(
    DriverDetailsState value,
    $Res Function(DriverDetailsState) then,
  ) = _$DriverDetailsStateCopyWithImpl<$Res, DriverDetailsState>;
  @useResult
  $Res call({DriverDetails? details, bool isLoading, String? error});

  $DriverDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class _$DriverDetailsStateCopyWithImpl<$Res, $Val extends DriverDetailsState>
    implements $DriverDetailsStateCopyWith<$Res> {
  _$DriverDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            details:
                freezed == details
                    ? _value.details
                    : details // ignore: cast_nullable_to_non_nullable
                        as DriverDetails?,
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

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DriverDetailsCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $DriverDetailsCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DriverDetailsStateImplCopyWith<$Res>
    implements $DriverDetailsStateCopyWith<$Res> {
  factory _$$DriverDetailsStateImplCopyWith(
    _$DriverDetailsStateImpl value,
    $Res Function(_$DriverDetailsStateImpl) then,
  ) = __$$DriverDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DriverDetails? details, bool isLoading, String? error});

  @override
  $DriverDetailsCopyWith<$Res>? get details;
}

/// @nodoc
class __$$DriverDetailsStateImplCopyWithImpl<$Res>
    extends _$DriverDetailsStateCopyWithImpl<$Res, _$DriverDetailsStateImpl>
    implements _$$DriverDetailsStateImplCopyWith<$Res> {
  __$$DriverDetailsStateImplCopyWithImpl(
    _$DriverDetailsStateImpl _value,
    $Res Function(_$DriverDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$DriverDetailsStateImpl(
        details:
            freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                    as DriverDetails?,
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

class _$DriverDetailsStateImpl implements _DriverDetailsState {
  const _$DriverDetailsStateImpl({
    this.details,
    this.isLoading = false,
    this.error,
  });

  @override
  final DriverDetails? details;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'DriverDetailsState(details: $details, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DriverDetailsStateImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details, isLoading, error);

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DriverDetailsStateImplCopyWith<_$DriverDetailsStateImpl> get copyWith =>
      __$$DriverDetailsStateImplCopyWithImpl<_$DriverDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _DriverDetailsState implements DriverDetailsState {
  const factory _DriverDetailsState({
    final DriverDetails? details,
    final bool isLoading,
    final String? error,
  }) = _$DriverDetailsStateImpl;

  @override
  DriverDetails? get details;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of DriverDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DriverDetailsStateImplCopyWith<_$DriverDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
