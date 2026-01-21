// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'containers_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ContainersState {
  List<ContainerSummaryItem> get summary => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ContainersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainersStateCopyWith<ContainersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainersStateCopyWith<$Res> {
  factory $ContainersStateCopyWith(
    ContainersState value,
    $Res Function(ContainersState) then,
  ) = _$ContainersStateCopyWithImpl<$Res, ContainersState>;
  @useResult
  $Res call({
    List<ContainerSummaryItem> summary,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class _$ContainersStateCopyWithImpl<$Res, $Val extends ContainersState>
    implements $ContainersStateCopyWith<$Res> {
  _$ContainersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _value.copyWith(
            summary:
                null == summary
                    ? _value.summary
                    : summary // ignore: cast_nullable_to_non_nullable
                        as List<ContainerSummaryItem>,
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
abstract class _$$ContainersStateImplCopyWith<$Res>
    implements $ContainersStateCopyWith<$Res> {
  factory _$$ContainersStateImplCopyWith(
    _$ContainersStateImpl value,
    $Res Function(_$ContainersStateImpl) then,
  ) = __$$ContainersStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ContainerSummaryItem> summary,
    bool isLoading,
    String? error,
  });
}

/// @nodoc
class __$$ContainersStateImplCopyWithImpl<$Res>
    extends _$ContainersStateCopyWithImpl<$Res, _$ContainersStateImpl>
    implements _$$ContainersStateImplCopyWith<$Res> {
  __$$ContainersStateImplCopyWithImpl(
    _$ContainersStateImpl _value,
    $Res Function(_$ContainersStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainersState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ContainersStateImpl(
        summary:
            null == summary
                ? _value._summary
                : summary // ignore: cast_nullable_to_non_nullable
                    as List<ContainerSummaryItem>,
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

class _$ContainersStateImpl implements _ContainersState {
  const _$ContainersStateImpl({
    final List<ContainerSummaryItem> summary = const [],
    this.isLoading = false,
    this.error,
  }) : _summary = summary;

  final List<ContainerSummaryItem> _summary;
  @override
  @JsonKey()
  List<ContainerSummaryItem> get summary {
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summary);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ContainersState(summary: $summary, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainersStateImpl &&
            const DeepCollectionEquality().equals(other._summary, _summary) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_summary),
    isLoading,
    error,
  );

  /// Create a copy of ContainersState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainersStateImplCopyWith<_$ContainersStateImpl> get copyWith =>
      __$$ContainersStateImplCopyWithImpl<_$ContainersStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ContainersState implements ContainersState {
  const factory _ContainersState({
    final List<ContainerSummaryItem> summary,
    final bool isLoading,
    final String? error,
  }) = _$ContainersStateImpl;

  @override
  List<ContainerSummaryItem> get summary;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ContainersState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainersStateImplCopyWith<_$ContainersStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContainerDetailsState {
  ContainerDetailsResponse? get details => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of ContainerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerDetailsStateCopyWith<ContainerDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerDetailsStateCopyWith<$Res> {
  factory $ContainerDetailsStateCopyWith(
    ContainerDetailsState value,
    $Res Function(ContainerDetailsState) then,
  ) = _$ContainerDetailsStateCopyWithImpl<$Res, ContainerDetailsState>;
  @useResult
  $Res call({ContainerDetailsResponse? details, bool isLoading, String? error});

  $ContainerDetailsResponseCopyWith<$Res>? get details;
}

/// @nodoc
class _$ContainerDetailsStateCopyWithImpl<
  $Res,
  $Val extends ContainerDetailsState
>
    implements $ContainerDetailsStateCopyWith<$Res> {
  _$ContainerDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerDetailsState
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
                        as ContainerDetailsResponse?,
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

  /// Create a copy of ContainerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContainerDetailsResponseCopyWith<$Res>? get details {
    if (_value.details == null) {
      return null;
    }

    return $ContainerDetailsResponseCopyWith<$Res>(_value.details!, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContainerDetailsStateImplCopyWith<$Res>
    implements $ContainerDetailsStateCopyWith<$Res> {
  factory _$$ContainerDetailsStateImplCopyWith(
    _$ContainerDetailsStateImpl value,
    $Res Function(_$ContainerDetailsStateImpl) then,
  ) = __$$ContainerDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContainerDetailsResponse? details, bool isLoading, String? error});

  @override
  $ContainerDetailsResponseCopyWith<$Res>? get details;
}

/// @nodoc
class __$$ContainerDetailsStateImplCopyWithImpl<$Res>
    extends
        _$ContainerDetailsStateCopyWithImpl<$Res, _$ContainerDetailsStateImpl>
    implements _$$ContainerDetailsStateImplCopyWith<$Res> {
  __$$ContainerDetailsStateImplCopyWithImpl(
    _$ContainerDetailsStateImpl _value,
    $Res Function(_$ContainerDetailsStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(
      _$ContainerDetailsStateImpl(
        details:
            freezed == details
                ? _value.details
                : details // ignore: cast_nullable_to_non_nullable
                    as ContainerDetailsResponse?,
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

class _$ContainerDetailsStateImpl implements _ContainerDetailsState {
  const _$ContainerDetailsStateImpl({
    this.details,
    this.isLoading = false,
    this.error,
  });

  @override
  final ContainerDetailsResponse? details;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'ContainerDetailsState(details: $details, isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerDetailsStateImpl &&
            (identical(other.details, details) || other.details == details) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, details, isLoading, error);

  /// Create a copy of ContainerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerDetailsStateImplCopyWith<_$ContainerDetailsStateImpl>
  get copyWith =>
      __$$ContainerDetailsStateImplCopyWithImpl<_$ContainerDetailsStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ContainerDetailsState implements ContainerDetailsState {
  const factory _ContainerDetailsState({
    final ContainerDetailsResponse? details,
    final bool isLoading,
    final String? error,
  }) = _$ContainerDetailsStateImpl;

  @override
  ContainerDetailsResponse? get details;
  @override
  bool get isLoading;
  @override
  String? get error;

  /// Create a copy of ContainerDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerDetailsStateImplCopyWith<_$ContainerDetailsStateImpl>
  get copyWith => throw _privateConstructorUsedError;
}
