// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ban_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BanDetails _$BanDetailsFromJson(Map<String, dynamic> json) {
  return _BanDetails.fromJson(json);
}

/// @nodoc
mixin _$BanDetails {
  bool get isPermanent => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get expiryMessage => throw _privateConstructorUsedError;
  DateTime? get bannedAt => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;

  /// Serializes this BanDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BanDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BanDetailsCopyWith<BanDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BanDetailsCopyWith<$Res> {
  factory $BanDetailsCopyWith(
    BanDetails value,
    $Res Function(BanDetails) then,
  ) = _$BanDetailsCopyWithImpl<$Res, BanDetails>;
  @useResult
  $Res call({
    bool isPermanent,
    String reason,
    String? duration,
    String? expiryMessage,
    DateTime? bannedAt,
    DateTime? expiresAt,
  });
}

/// @nodoc
class _$BanDetailsCopyWithImpl<$Res, $Val extends BanDetails>
    implements $BanDetailsCopyWith<$Res> {
  _$BanDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BanDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPermanent = null,
    Object? reason = null,
    Object? duration = freezed,
    Object? expiryMessage = freezed,
    Object? bannedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            isPermanent:
                null == isPermanent
                    ? _value.isPermanent
                    : isPermanent // ignore: cast_nullable_to_non_nullable
                        as bool,
            reason:
                null == reason
                    ? _value.reason
                    : reason // ignore: cast_nullable_to_non_nullable
                        as String,
            duration:
                freezed == duration
                    ? _value.duration
                    : duration // ignore: cast_nullable_to_non_nullable
                        as String?,
            expiryMessage:
                freezed == expiryMessage
                    ? _value.expiryMessage
                    : expiryMessage // ignore: cast_nullable_to_non_nullable
                        as String?,
            bannedAt:
                freezed == bannedAt
                    ? _value.bannedAt
                    : bannedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
            expiresAt:
                freezed == expiresAt
                    ? _value.expiresAt
                    : expiresAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BanDetailsImplCopyWith<$Res>
    implements $BanDetailsCopyWith<$Res> {
  factory _$$BanDetailsImplCopyWith(
    _$BanDetailsImpl value,
    $Res Function(_$BanDetailsImpl) then,
  ) = __$$BanDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isPermanent,
    String reason,
    String? duration,
    String? expiryMessage,
    DateTime? bannedAt,
    DateTime? expiresAt,
  });
}

/// @nodoc
class __$$BanDetailsImplCopyWithImpl<$Res>
    extends _$BanDetailsCopyWithImpl<$Res, _$BanDetailsImpl>
    implements _$$BanDetailsImplCopyWith<$Res> {
  __$$BanDetailsImplCopyWithImpl(
    _$BanDetailsImpl _value,
    $Res Function(_$BanDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BanDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPermanent = null,
    Object? reason = null,
    Object? duration = freezed,
    Object? expiryMessage = freezed,
    Object? bannedAt = freezed,
    Object? expiresAt = freezed,
  }) {
    return _then(
      _$BanDetailsImpl(
        isPermanent:
            null == isPermanent
                ? _value.isPermanent
                : isPermanent // ignore: cast_nullable_to_non_nullable
                    as bool,
        reason:
            null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                    as String,
        duration:
            freezed == duration
                ? _value.duration
                : duration // ignore: cast_nullable_to_non_nullable
                    as String?,
        expiryMessage:
            freezed == expiryMessage
                ? _value.expiryMessage
                : expiryMessage // ignore: cast_nullable_to_non_nullable
                    as String?,
        bannedAt:
            freezed == bannedAt
                ? _value.bannedAt
                : bannedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
        expiresAt:
            freezed == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BanDetailsImpl implements _BanDetails {
  const _$BanDetailsImpl({
    required this.isPermanent,
    required this.reason,
    this.duration,
    this.expiryMessage,
    this.bannedAt,
    this.expiresAt,
  });

  factory _$BanDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BanDetailsImplFromJson(json);

  @override
  final bool isPermanent;
  @override
  final String reason;
  @override
  final String? duration;
  @override
  final String? expiryMessage;
  @override
  final DateTime? bannedAt;
  @override
  final DateTime? expiresAt;

  @override
  String toString() {
    return 'BanDetails(isPermanent: $isPermanent, reason: $reason, duration: $duration, expiryMessage: $expiryMessage, bannedAt: $bannedAt, expiresAt: $expiresAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BanDetailsImpl &&
            (identical(other.isPermanent, isPermanent) ||
                other.isPermanent == isPermanent) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.expiryMessage, expiryMessage) ||
                other.expiryMessage == expiryMessage) &&
            (identical(other.bannedAt, bannedAt) ||
                other.bannedAt == bannedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isPermanent,
    reason,
    duration,
    expiryMessage,
    bannedAt,
    expiresAt,
  );

  /// Create a copy of BanDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BanDetailsImplCopyWith<_$BanDetailsImpl> get copyWith =>
      __$$BanDetailsImplCopyWithImpl<_$BanDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BanDetailsImplToJson(this);
  }
}

abstract class _BanDetails implements BanDetails {
  const factory _BanDetails({
    required final bool isPermanent,
    required final String reason,
    final String? duration,
    final String? expiryMessage,
    final DateTime? bannedAt,
    final DateTime? expiresAt,
  }) = _$BanDetailsImpl;

  factory _BanDetails.fromJson(Map<String, dynamic> json) =
      _$BanDetailsImpl.fromJson;

  @override
  bool get isPermanent;
  @override
  String get reason;
  @override
  String? get duration;
  @override
  String? get expiryMessage;
  @override
  DateTime? get bannedAt;
  @override
  DateTime? get expiresAt;

  /// Create a copy of BanDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BanDetailsImplCopyWith<_$BanDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginError _$LoginErrorFromJson(Map<String, dynamic> json) {
  return _LoginError.fromJson(json);
}

/// @nodoc
mixin _$LoginError {
  String get message => throw _privateConstructorUsedError;
  bool get isBanned => throw _privateConstructorUsedError;
  BanDetails? get banDetails => throw _privateConstructorUsedError;

  /// Serializes this LoginError to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginErrorCopyWith<LoginError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorCopyWith<$Res> {
  factory $LoginErrorCopyWith(
    LoginError value,
    $Res Function(LoginError) then,
  ) = _$LoginErrorCopyWithImpl<$Res, LoginError>;
  @useResult
  $Res call({String message, bool isBanned, BanDetails? banDetails});

  $BanDetailsCopyWith<$Res>? get banDetails;
}

/// @nodoc
class _$LoginErrorCopyWithImpl<$Res, $Val extends LoginError>
    implements $LoginErrorCopyWith<$Res> {
  _$LoginErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isBanned = null,
    Object? banDetails = freezed,
  }) {
    return _then(
      _value.copyWith(
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            isBanned:
                null == isBanned
                    ? _value.isBanned
                    : isBanned // ignore: cast_nullable_to_non_nullable
                        as bool,
            banDetails:
                freezed == banDetails
                    ? _value.banDetails
                    : banDetails // ignore: cast_nullable_to_non_nullable
                        as BanDetails?,
          )
          as $Val,
    );
  }

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BanDetailsCopyWith<$Res>? get banDetails {
    if (_value.banDetails == null) {
      return null;
    }

    return $BanDetailsCopyWith<$Res>(_value.banDetails!, (value) {
      return _then(_value.copyWith(banDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res>
    implements $LoginErrorCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
    _$LoginErrorImpl value,
    $Res Function(_$LoginErrorImpl) then,
  ) = __$$LoginErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, bool isBanned, BanDetails? banDetails});

  @override
  $BanDetailsCopyWith<$Res>? get banDetails;
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginErrorCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
    _$LoginErrorImpl _value,
    $Res Function(_$LoginErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? isBanned = null,
    Object? banDetails = freezed,
  }) {
    return _then(
      _$LoginErrorImpl(
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        isBanned:
            null == isBanned
                ? _value.isBanned
                : isBanned // ignore: cast_nullable_to_non_nullable
                    as bool,
        banDetails:
            freezed == banDetails
                ? _value.banDetails
                : banDetails // ignore: cast_nullable_to_non_nullable
                    as BanDetails?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginErrorImpl implements _LoginError {
  const _$LoginErrorImpl({
    required this.message,
    this.isBanned = false,
    this.banDetails,
  });

  factory _$LoginErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginErrorImplFromJson(json);

  @override
  final String message;
  @override
  @JsonKey()
  final bool isBanned;
  @override
  final BanDetails? banDetails;

  @override
  String toString() {
    return 'LoginError(message: $message, isBanned: $isBanned, banDetails: $banDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.banDetails, banDetails) ||
                other.banDetails == banDetails));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, isBanned, banDetails);

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginErrorImplToJson(this);
  }
}

abstract class _LoginError implements LoginError {
  const factory _LoginError({
    required final String message,
    final bool isBanned,
    final BanDetails? banDetails,
  }) = _$LoginErrorImpl;

  factory _LoginError.fromJson(Map<String, dynamic> json) =
      _$LoginErrorImpl.fromJson;

  @override
  String get message;
  @override
  bool get isBanned;
  @override
  BanDetails? get banDetails;

  /// Create a copy of LoginError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
