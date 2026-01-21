// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ContainerSummaryResponse _$ContainerSummaryResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ContainerSummaryResponse.fromJson(json);
}

/// @nodoc
mixin _$ContainerSummaryResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<ContainerSummaryItem> get summary => throw _privateConstructorUsedError;

  /// Serializes this ContainerSummaryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerSummaryResponseCopyWith<ContainerSummaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerSummaryResponseCopyWith<$Res> {
  factory $ContainerSummaryResponseCopyWith(
    ContainerSummaryResponse value,
    $Res Function(ContainerSummaryResponse) then,
  ) = _$ContainerSummaryResponseCopyWithImpl<$Res, ContainerSummaryResponse>;
  @useResult
  $Res call({bool success, String message, List<ContainerSummaryItem> summary});
}

/// @nodoc
class _$ContainerSummaryResponseCopyWithImpl<
  $Res,
  $Val extends ContainerSummaryResponse
>
    implements $ContainerSummaryResponseCopyWith<$Res> {
  _$ContainerSummaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? summary = null,
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
            summary:
                null == summary
                    ? _value.summary
                    : summary // ignore: cast_nullable_to_non_nullable
                        as List<ContainerSummaryItem>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerSummaryResponseImplCopyWith<$Res>
    implements $ContainerSummaryResponseCopyWith<$Res> {
  factory _$$ContainerSummaryResponseImplCopyWith(
    _$ContainerSummaryResponseImpl value,
    $Res Function(_$ContainerSummaryResponseImpl) then,
  ) = __$$ContainerSummaryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, List<ContainerSummaryItem> summary});
}

/// @nodoc
class __$$ContainerSummaryResponseImplCopyWithImpl<$Res>
    extends
        _$ContainerSummaryResponseCopyWithImpl<
          $Res,
          _$ContainerSummaryResponseImpl
        >
    implements _$$ContainerSummaryResponseImplCopyWith<$Res> {
  __$$ContainerSummaryResponseImplCopyWithImpl(
    _$ContainerSummaryResponseImpl _value,
    $Res Function(_$ContainerSummaryResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? summary = null,
  }) {
    return _then(
      _$ContainerSummaryResponseImpl(
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
        summary:
            null == summary
                ? _value._summary
                : summary // ignore: cast_nullable_to_non_nullable
                    as List<ContainerSummaryItem>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerSummaryResponseImpl implements _ContainerSummaryResponse {
  const _$ContainerSummaryResponseImpl({
    required this.success,
    required this.message,
    required final List<ContainerSummaryItem> summary,
  }) : _summary = summary;

  factory _$ContainerSummaryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerSummaryResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  final List<ContainerSummaryItem> _summary;
  @override
  List<ContainerSummaryItem> get summary {
    if (_summary is EqualUnmodifiableListView) return _summary;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summary);
  }

  @override
  String toString() {
    return 'ContainerSummaryResponse(success: $success, message: $message, summary: $summary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerSummaryResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._summary, _summary));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_summary),
  );

  /// Create a copy of ContainerSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerSummaryResponseImplCopyWith<_$ContainerSummaryResponseImpl>
  get copyWith => __$$ContainerSummaryResponseImplCopyWithImpl<
    _$ContainerSummaryResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerSummaryResponseImplToJson(this);
  }
}

abstract class _ContainerSummaryResponse implements ContainerSummaryResponse {
  const factory _ContainerSummaryResponse({
    required final bool success,
    required final String message,
    required final List<ContainerSummaryItem> summary,
  }) = _$ContainerSummaryResponseImpl;

  factory _ContainerSummaryResponse.fromJson(Map<String, dynamic> json) =
      _$ContainerSummaryResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  List<ContainerSummaryItem> get summary;

  /// Create a copy of ContainerSummaryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerSummaryResponseImplCopyWith<_$ContainerSummaryResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ContainerSummaryItem _$ContainerSummaryItemFromJson(Map<String, dynamic> json) {
  return _ContainerSummaryItem.fromJson(json);
}

/// @nodoc
mixin _$ContainerSummaryItem {
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  int get rented => throw _privateConstructorUsedError;
  int get maintenance => throw _privateConstructorUsedError;

  /// Serializes this ContainerSummaryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerSummaryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerSummaryItemCopyWith<ContainerSummaryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerSummaryItemCopyWith<$Res> {
  factory $ContainerSummaryItemCopyWith(
    ContainerSummaryItem value,
    $Res Function(ContainerSummaryItem) then,
  ) = _$ContainerSummaryItemCopyWithImpl<$Res, ContainerSummaryItem>;
  @useResult
  $Res call({
    String type,
    String size,
    int total,
    int available,
    int rented,
    int maintenance,
  });
}

/// @nodoc
class _$ContainerSummaryItemCopyWithImpl<
  $Res,
  $Val extends ContainerSummaryItem
>
    implements $ContainerSummaryItemCopyWith<$Res> {
  _$ContainerSummaryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerSummaryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? total = null,
    Object? available = null,
    Object? rented = null,
    Object? maintenance = null,
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
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            available:
                null == available
                    ? _value.available
                    : available // ignore: cast_nullable_to_non_nullable
                        as int,
            rented:
                null == rented
                    ? _value.rented
                    : rented // ignore: cast_nullable_to_non_nullable
                        as int,
            maintenance:
                null == maintenance
                    ? _value.maintenance
                    : maintenance // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerSummaryItemImplCopyWith<$Res>
    implements $ContainerSummaryItemCopyWith<$Res> {
  factory _$$ContainerSummaryItemImplCopyWith(
    _$ContainerSummaryItemImpl value,
    $Res Function(_$ContainerSummaryItemImpl) then,
  ) = __$$ContainerSummaryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String type,
    String size,
    int total,
    int available,
    int rented,
    int maintenance,
  });
}

/// @nodoc
class __$$ContainerSummaryItemImplCopyWithImpl<$Res>
    extends _$ContainerSummaryItemCopyWithImpl<$Res, _$ContainerSummaryItemImpl>
    implements _$$ContainerSummaryItemImplCopyWith<$Res> {
  __$$ContainerSummaryItemImplCopyWithImpl(
    _$ContainerSummaryItemImpl _value,
    $Res Function(_$ContainerSummaryItemImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerSummaryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? total = null,
    Object? available = null,
    Object? rented = null,
    Object? maintenance = null,
  }) {
    return _then(
      _$ContainerSummaryItemImpl(
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
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        available:
            null == available
                ? _value.available
                : available // ignore: cast_nullable_to_non_nullable
                    as int,
        rented:
            null == rented
                ? _value.rented
                : rented // ignore: cast_nullable_to_non_nullable
                    as int,
        maintenance:
            null == maintenance
                ? _value.maintenance
                : maintenance // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerSummaryItemImpl implements _ContainerSummaryItem {
  const _$ContainerSummaryItemImpl({
    required this.type,
    required this.size,
    required this.total,
    required this.available,
    required this.rented,
    required this.maintenance,
  });

  factory _$ContainerSummaryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerSummaryItemImplFromJson(json);

  @override
  final String type;
  @override
  final String size;
  @override
  final int total;
  @override
  final int available;
  @override
  final int rented;
  @override
  final int maintenance;

  @override
  String toString() {
    return 'ContainerSummaryItem(type: $type, size: $size, total: $total, available: $available, rented: $rented, maintenance: $maintenance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerSummaryItemImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.rented, rented) || other.rented == rented) &&
            (identical(other.maintenance, maintenance) ||
                other.maintenance == maintenance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    size,
    total,
    available,
    rented,
    maintenance,
  );

  /// Create a copy of ContainerSummaryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerSummaryItemImplCopyWith<_$ContainerSummaryItemImpl>
  get copyWith =>
      __$$ContainerSummaryItemImplCopyWithImpl<_$ContainerSummaryItemImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerSummaryItemImplToJson(this);
  }
}

abstract class _ContainerSummaryItem implements ContainerSummaryItem {
  const factory _ContainerSummaryItem({
    required final String type,
    required final String size,
    required final int total,
    required final int available,
    required final int rented,
    required final int maintenance,
  }) = _$ContainerSummaryItemImpl;

  factory _ContainerSummaryItem.fromJson(Map<String, dynamic> json) =
      _$ContainerSummaryItemImpl.fromJson;

  @override
  String get type;
  @override
  String get size;
  @override
  int get total;
  @override
  int get available;
  @override
  int get rented;
  @override
  int get maintenance;

  /// Create a copy of ContainerSummaryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerSummaryItemImplCopyWith<_$ContainerSummaryItemImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ContainerDetailsResponse _$ContainerDetailsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ContainerDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ContainerDetailsResponse {
  bool get success => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  GroupedContainers get containers => throw _privateConstructorUsedError;
  List<Container> get allContainers => throw _privateConstructorUsedError;

  /// Serializes this ContainerDetailsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerDetailsResponseCopyWith<ContainerDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerDetailsResponseCopyWith<$Res> {
  factory $ContainerDetailsResponseCopyWith(
    ContainerDetailsResponse value,
    $Res Function(ContainerDetailsResponse) then,
  ) = _$ContainerDetailsResponseCopyWithImpl<$Res, ContainerDetailsResponse>;
  @useResult
  $Res call({
    bool success,
    String type,
    String size,
    int total,
    GroupedContainers containers,
    List<Container> allContainers,
  });

  $GroupedContainersCopyWith<$Res> get containers;
}

/// @nodoc
class _$ContainerDetailsResponseCopyWithImpl<
  $Res,
  $Val extends ContainerDetailsResponse
>
    implements $ContainerDetailsResponseCopyWith<$Res> {
  _$ContainerDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? type = null,
    Object? size = null,
    Object? total = null,
    Object? containers = null,
    Object? allContainers = null,
  }) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
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
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            containers:
                null == containers
                    ? _value.containers
                    : containers // ignore: cast_nullable_to_non_nullable
                        as GroupedContainers,
            allContainers:
                null == allContainers
                    ? _value.allContainers
                    : allContainers // ignore: cast_nullable_to_non_nullable
                        as List<Container>,
          )
          as $Val,
    );
  }

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GroupedContainersCopyWith<$Res> get containers {
    return $GroupedContainersCopyWith<$Res>(_value.containers, (value) {
      return _then(_value.copyWith(containers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContainerDetailsResponseImplCopyWith<$Res>
    implements $ContainerDetailsResponseCopyWith<$Res> {
  factory _$$ContainerDetailsResponseImplCopyWith(
    _$ContainerDetailsResponseImpl value,
    $Res Function(_$ContainerDetailsResponseImpl) then,
  ) = __$$ContainerDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String type,
    String size,
    int total,
    GroupedContainers containers,
    List<Container> allContainers,
  });

  @override
  $GroupedContainersCopyWith<$Res> get containers;
}

/// @nodoc
class __$$ContainerDetailsResponseImplCopyWithImpl<$Res>
    extends
        _$ContainerDetailsResponseCopyWithImpl<
          $Res,
          _$ContainerDetailsResponseImpl
        >
    implements _$$ContainerDetailsResponseImplCopyWith<$Res> {
  __$$ContainerDetailsResponseImplCopyWithImpl(
    _$ContainerDetailsResponseImpl _value,
    $Res Function(_$ContainerDetailsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? type = null,
    Object? size = null,
    Object? total = null,
    Object? containers = null,
    Object? allContainers = null,
  }) {
    return _then(
      _$ContainerDetailsResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
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
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        containers:
            null == containers
                ? _value.containers
                : containers // ignore: cast_nullable_to_non_nullable
                    as GroupedContainers,
        allContainers:
            null == allContainers
                ? _value._allContainers
                : allContainers // ignore: cast_nullable_to_non_nullable
                    as List<Container>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerDetailsResponseImpl implements _ContainerDetailsResponse {
  const _$ContainerDetailsResponseImpl({
    required this.success,
    required this.type,
    required this.size,
    required this.total,
    required this.containers,
    required final List<Container> allContainers,
  }) : _allContainers = allContainers;

  factory _$ContainerDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerDetailsResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String type;
  @override
  final String size;
  @override
  final int total;
  @override
  final GroupedContainers containers;
  final List<Container> _allContainers;
  @override
  List<Container> get allContainers {
    if (_allContainers is EqualUnmodifiableListView) return _allContainers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allContainers);
  }

  @override
  String toString() {
    return 'ContainerDetailsResponse(success: $success, type: $type, size: $size, total: $total, containers: $containers, allContainers: $allContainers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerDetailsResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.containers, containers) ||
                other.containers == containers) &&
            const DeepCollectionEquality().equals(
              other._allContainers,
              _allContainers,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    type,
    size,
    total,
    containers,
    const DeepCollectionEquality().hash(_allContainers),
  );

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerDetailsResponseImplCopyWith<_$ContainerDetailsResponseImpl>
  get copyWith => __$$ContainerDetailsResponseImplCopyWithImpl<
    _$ContainerDetailsResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerDetailsResponseImplToJson(this);
  }
}

abstract class _ContainerDetailsResponse implements ContainerDetailsResponse {
  const factory _ContainerDetailsResponse({
    required final bool success,
    required final String type,
    required final String size,
    required final int total,
    required final GroupedContainers containers,
    required final List<Container> allContainers,
  }) = _$ContainerDetailsResponseImpl;

  factory _ContainerDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$ContainerDetailsResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get type;
  @override
  String get size;
  @override
  int get total;
  @override
  GroupedContainers get containers;
  @override
  List<Container> get allContainers;

  /// Create a copy of ContainerDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerDetailsResponseImplCopyWith<_$ContainerDetailsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

GroupedContainers _$GroupedContainersFromJson(Map<String, dynamic> json) {
  return _GroupedContainers.fromJson(json);
}

/// @nodoc
mixin _$GroupedContainers {
  List<Container> get available => throw _privateConstructorUsedError;
  List<Container> get rented => throw _privateConstructorUsedError;
  List<Container> get maintenance => throw _privateConstructorUsedError;

  /// Serializes this GroupedContainers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GroupedContainers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupedContainersCopyWith<GroupedContainers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupedContainersCopyWith<$Res> {
  factory $GroupedContainersCopyWith(
    GroupedContainers value,
    $Res Function(GroupedContainers) then,
  ) = _$GroupedContainersCopyWithImpl<$Res, GroupedContainers>;
  @useResult
  $Res call({
    List<Container> available,
    List<Container> rented,
    List<Container> maintenance,
  });
}

/// @nodoc
class _$GroupedContainersCopyWithImpl<$Res, $Val extends GroupedContainers>
    implements $GroupedContainersCopyWith<$Res> {
  _$GroupedContainersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GroupedContainers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? rented = null,
    Object? maintenance = null,
  }) {
    return _then(
      _value.copyWith(
            available:
                null == available
                    ? _value.available
                    : available // ignore: cast_nullable_to_non_nullable
                        as List<Container>,
            rented:
                null == rented
                    ? _value.rented
                    : rented // ignore: cast_nullable_to_non_nullable
                        as List<Container>,
            maintenance:
                null == maintenance
                    ? _value.maintenance
                    : maintenance // ignore: cast_nullable_to_non_nullable
                        as List<Container>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroupedContainersImplCopyWith<$Res>
    implements $GroupedContainersCopyWith<$Res> {
  factory _$$GroupedContainersImplCopyWith(
    _$GroupedContainersImpl value,
    $Res Function(_$GroupedContainersImpl) then,
  ) = __$$GroupedContainersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<Container> available,
    List<Container> rented,
    List<Container> maintenance,
  });
}

/// @nodoc
class __$$GroupedContainersImplCopyWithImpl<$Res>
    extends _$GroupedContainersCopyWithImpl<$Res, _$GroupedContainersImpl>
    implements _$$GroupedContainersImplCopyWith<$Res> {
  __$$GroupedContainersImplCopyWithImpl(
    _$GroupedContainersImpl _value,
    $Res Function(_$GroupedContainersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GroupedContainers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? available = null,
    Object? rented = null,
    Object? maintenance = null,
  }) {
    return _then(
      _$GroupedContainersImpl(
        available:
            null == available
                ? _value._available
                : available // ignore: cast_nullable_to_non_nullable
                    as List<Container>,
        rented:
            null == rented
                ? _value._rented
                : rented // ignore: cast_nullable_to_non_nullable
                    as List<Container>,
        maintenance:
            null == maintenance
                ? _value._maintenance
                : maintenance // ignore: cast_nullable_to_non_nullable
                    as List<Container>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupedContainersImpl implements _GroupedContainers {
  const _$GroupedContainersImpl({
    required final List<Container> available,
    required final List<Container> rented,
    required final List<Container> maintenance,
  }) : _available = available,
       _rented = rented,
       _maintenance = maintenance;

  factory _$GroupedContainersImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupedContainersImplFromJson(json);

  final List<Container> _available;
  @override
  List<Container> get available {
    if (_available is EqualUnmodifiableListView) return _available;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_available);
  }

  final List<Container> _rented;
  @override
  List<Container> get rented {
    if (_rented is EqualUnmodifiableListView) return _rented;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rented);
  }

  final List<Container> _maintenance;
  @override
  List<Container> get maintenance {
    if (_maintenance is EqualUnmodifiableListView) return _maintenance;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maintenance);
  }

  @override
  String toString() {
    return 'GroupedContainers(available: $available, rented: $rented, maintenance: $maintenance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupedContainersImpl &&
            const DeepCollectionEquality().equals(
              other._available,
              _available,
            ) &&
            const DeepCollectionEquality().equals(other._rented, _rented) &&
            const DeepCollectionEquality().equals(
              other._maintenance,
              _maintenance,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_available),
    const DeepCollectionEquality().hash(_rented),
    const DeepCollectionEquality().hash(_maintenance),
  );

  /// Create a copy of GroupedContainers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupedContainersImplCopyWith<_$GroupedContainersImpl> get copyWith =>
      __$$GroupedContainersImplCopyWithImpl<_$GroupedContainersImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupedContainersImplToJson(this);
  }
}

abstract class _GroupedContainers implements GroupedContainers {
  const factory _GroupedContainers({
    required final List<Container> available,
    required final List<Container> rented,
    required final List<Container> maintenance,
  }) = _$GroupedContainersImpl;

  factory _GroupedContainers.fromJson(Map<String, dynamic> json) =
      _$GroupedContainersImpl.fromJson;

  @override
  List<Container> get available;
  @override
  List<Container> get rented;
  @override
  List<Container> get maintenance;

  /// Create a copy of GroupedContainers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupedContainersImplCopyWith<_$GroupedContainersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Container _$ContainerFromJson(Map<String, dynamic> json) {
  return _Container.fromJson(json);
}

/// @nodoc
mixin _$Container {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  @IdConverter()
  String? get containerNumber => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Container to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerCopyWith<Container> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerCopyWith<$Res> {
  factory $ContainerCopyWith(Container value, $Res Function(Container) then) =
      _$ContainerCopyWithImpl<$Res, Container>;
  @useResult
  $Res call({
    @IdConverter() String id,
    String type,
    String size,
    @IdConverter() String? containerNumber,
    String status,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class _$ContainerCopyWithImpl<$Res, $Val extends Container>
    implements $ContainerCopyWith<$Res> {
  _$ContainerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? size = null,
    Object? containerNumber = freezed,
    Object? status = null,
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
abstract class _$$ContainerImplCopyWith<$Res>
    implements $ContainerCopyWith<$Res> {
  factory _$$ContainerImplCopyWith(
    _$ContainerImpl value,
    $Res Function(_$ContainerImpl) then,
  ) = __$$ContainerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    String type,
    String size,
    @IdConverter() String? containerNumber,
    String status,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// @nodoc
class __$$ContainerImplCopyWithImpl<$Res>
    extends _$ContainerCopyWithImpl<$Res, _$ContainerImpl>
    implements _$$ContainerImplCopyWith<$Res> {
  __$$ContainerImplCopyWithImpl(
    _$ContainerImpl _value,
    $Res Function(_$ContainerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? size = null,
    Object? containerNumber = freezed,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(
      _$ContainerImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
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
class _$ContainerImpl implements _Container {
  const _$ContainerImpl({
    @IdConverter() required this.id,
    required this.type,
    required this.size,
    @IdConverter() this.containerNumber,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
  });

  factory _$ContainerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  final String type;
  @override
  final String size;
  @override
  @IdConverter()
  final String? containerNumber;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Container(id: $id, type: $type, size: $size, containerNumber: $containerNumber, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.containerNumber, containerNumber) ||
                other.containerNumber == containerNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    type,
    size,
    containerNumber,
    status,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerImplCopyWith<_$ContainerImpl> get copyWith =>
      __$$ContainerImplCopyWithImpl<_$ContainerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerImplToJson(this);
  }
}

abstract class _Container implements Container {
  const factory _Container({
    @IdConverter() required final String id,
    required final String type,
    required final String size,
    @IdConverter() final String? containerNumber,
    required final String status,
    required final DateTime createdAt,
    required final DateTime updatedAt,
  }) = _$ContainerImpl;

  factory _Container.fromJson(Map<String, dynamic> json) =
      _$ContainerImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  String get type;
  @override
  String get size;
  @override
  @IdConverter()
  String? get containerNumber;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Container
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerImplCopyWith<_$ContainerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContainerTypesResponse _$ContainerTypesResponseFromJson(
  Map<String, dynamic> json,
) {
  return _ContainerTypesResponse.fromJson(json);
}

/// @nodoc
mixin _$ContainerTypesResponse {
  bool get success => throw _privateConstructorUsedError;
  List<ContainerType> get data => throw _privateConstructorUsedError;

  /// Serializes this ContainerTypesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerTypesResponseCopyWith<ContainerTypesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerTypesResponseCopyWith<$Res> {
  factory $ContainerTypesResponseCopyWith(
    ContainerTypesResponse value,
    $Res Function(ContainerTypesResponse) then,
  ) = _$ContainerTypesResponseCopyWithImpl<$Res, ContainerTypesResponse>;
  @useResult
  $Res call({bool success, List<ContainerType> data});
}

/// @nodoc
class _$ContainerTypesResponseCopyWithImpl<
  $Res,
  $Val extends ContainerTypesResponse
>
    implements $ContainerTypesResponseCopyWith<$Res> {
  _$ContainerTypesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            success:
                null == success
                    ? _value.success
                    : success // ignore: cast_nullable_to_non_nullable
                        as bool,
            data:
                null == data
                    ? _value.data
                    : data // ignore: cast_nullable_to_non_nullable
                        as List<ContainerType>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerTypesResponseImplCopyWith<$Res>
    implements $ContainerTypesResponseCopyWith<$Res> {
  factory _$$ContainerTypesResponseImplCopyWith(
    _$ContainerTypesResponseImpl value,
    $Res Function(_$ContainerTypesResponseImpl) then,
  ) = __$$ContainerTypesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, List<ContainerType> data});
}

/// @nodoc
class __$$ContainerTypesResponseImplCopyWithImpl<$Res>
    extends
        _$ContainerTypesResponseCopyWithImpl<$Res, _$ContainerTypesResponseImpl>
    implements _$$ContainerTypesResponseImplCopyWith<$Res> {
  __$$ContainerTypesResponseImplCopyWithImpl(
    _$ContainerTypesResponseImpl _value,
    $Res Function(_$ContainerTypesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? success = null, Object? data = null}) {
    return _then(
      _$ContainerTypesResponseImpl(
        success:
            null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                    as bool,
        data:
            null == data
                ? _value._data
                : data // ignore: cast_nullable_to_non_nullable
                    as List<ContainerType>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerTypesResponseImpl implements _ContainerTypesResponse {
  const _$ContainerTypesResponseImpl({
    required this.success,
    required final List<ContainerType> data,
  }) : _data = data;

  factory _$ContainerTypesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerTypesResponseImplFromJson(json);

  @override
  final bool success;
  final List<ContainerType> _data;
  @override
  List<ContainerType> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ContainerTypesResponse(success: $success, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerTypesResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ContainerTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerTypesResponseImplCopyWith<_$ContainerTypesResponseImpl>
  get copyWith =>
      __$$ContainerTypesResponseImplCopyWithImpl<_$ContainerTypesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerTypesResponseImplToJson(this);
  }
}

abstract class _ContainerTypesResponse implements ContainerTypesResponse {
  const factory _ContainerTypesResponse({
    required final bool success,
    required final List<ContainerType> data,
  }) = _$ContainerTypesResponseImpl;

  factory _ContainerTypesResponse.fromJson(Map<String, dynamic> json) =
      _$ContainerTypesResponseImpl.fromJson;

  @override
  bool get success;
  @override
  List<ContainerType> get data;

  /// Create a copy of ContainerTypesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerTypesResponseImplCopyWith<_$ContainerTypesResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ContainerType _$ContainerTypeFromJson(Map<String, dynamic> json) {
  return _ContainerType.fromJson(json);
}

/// @nodoc
mixin _$ContainerType {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<ContainerSize> get sizes => throw _privateConstructorUsedError;

  /// Serializes this ContainerType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerTypeCopyWith<ContainerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerTypeCopyWith<$Res> {
  factory $ContainerTypeCopyWith(
    ContainerType value,
    $Res Function(ContainerType) then,
  ) = _$ContainerTypeCopyWithImpl<$Res, ContainerType>;
  @useResult
  $Res call({
    @IdConverter() String id,
    String name,
    String? description,
    List<ContainerSize> sizes,
  });
}

/// @nodoc
class _$ContainerTypeCopyWithImpl<$Res, $Val extends ContainerType>
    implements $ContainerTypeCopyWith<$Res> {
  _$ContainerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sizes = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                freezed == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String?,
            sizes:
                null == sizes
                    ? _value.sizes
                    : sizes // ignore: cast_nullable_to_non_nullable
                        as List<ContainerSize>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerTypeImplCopyWith<$Res>
    implements $ContainerTypeCopyWith<$Res> {
  factory _$$ContainerTypeImplCopyWith(
    _$ContainerTypeImpl value,
    $Res Function(_$ContainerTypeImpl) then,
  ) = __$$ContainerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    String name,
    String? description,
    List<ContainerSize> sizes,
  });
}

/// @nodoc
class __$$ContainerTypeImplCopyWithImpl<$Res>
    extends _$ContainerTypeCopyWithImpl<$Res, _$ContainerTypeImpl>
    implements _$$ContainerTypeImplCopyWith<$Res> {
  __$$ContainerTypeImplCopyWithImpl(
    _$ContainerTypeImpl _value,
    $Res Function(_$ContainerTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = freezed,
    Object? sizes = null,
  }) {
    return _then(
      _$ContainerTypeImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String?,
        sizes:
            null == sizes
                ? _value._sizes
                : sizes // ignore: cast_nullable_to_non_nullable
                    as List<ContainerSize>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerTypeImpl implements _ContainerType {
  const _$ContainerTypeImpl({
    @IdConverter() required this.id,
    required this.name,
    this.description,
    required final List<ContainerSize> sizes,
  }) : _sizes = sizes;

  factory _$ContainerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerTypeImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  final String name;
  @override
  final String? description;
  final List<ContainerSize> _sizes;
  @override
  List<ContainerSize> get sizes {
    if (_sizes is EqualUnmodifiableListView) return _sizes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sizes);
  }

  @override
  String toString() {
    return 'ContainerType(id: $id, name: $name, description: $description, sizes: $sizes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerTypeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._sizes, _sizes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    name,
    description,
    const DeepCollectionEquality().hash(_sizes),
  );

  /// Create a copy of ContainerType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerTypeImplCopyWith<_$ContainerTypeImpl> get copyWith =>
      __$$ContainerTypeImplCopyWithImpl<_$ContainerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerTypeImplToJson(this);
  }
}

abstract class _ContainerType implements ContainerType {
  const factory _ContainerType({
    @IdConverter() required final String id,
    required final String name,
    final String? description,
    required final List<ContainerSize> sizes,
  }) = _$ContainerTypeImpl;

  factory _ContainerType.fromJson(Map<String, dynamic> json) =
      _$ContainerTypeImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  String get name;
  @override
  String? get description;
  @override
  List<ContainerSize> get sizes;

  /// Create a copy of ContainerType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerTypeImplCopyWith<_$ContainerTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContainerSize _$ContainerSizeFromJson(Map<String, dynamic> json) {
  return _ContainerSize.fromJson(json);
}

/// @nodoc
mixin _$ContainerSize {
  @IdConverter()
  String get id => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get priceRange => throw _privateConstructorUsedError;

  /// Serializes this ContainerSize to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContainerSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContainerSizeCopyWith<ContainerSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerSizeCopyWith<$Res> {
  factory $ContainerSizeCopyWith(
    ContainerSize value,
    $Res Function(ContainerSize) then,
  ) = _$ContainerSizeCopyWithImpl<$Res, ContainerSize>;
  @useResult
  $Res call({
    @IdConverter() String id,
    String size,
    String? imageUrl,
    String? priceRange,
  });
}

/// @nodoc
class _$ContainerSizeCopyWithImpl<$Res, $Val extends ContainerSize>
    implements $ContainerSizeCopyWith<$Res> {
  _$ContainerSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContainerSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? imageUrl = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as String,
            imageUrl:
                freezed == imageUrl
                    ? _value.imageUrl
                    : imageUrl // ignore: cast_nullable_to_non_nullable
                        as String?,
            priceRange:
                freezed == priceRange
                    ? _value.priceRange
                    : priceRange // ignore: cast_nullable_to_non_nullable
                        as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContainerSizeImplCopyWith<$Res>
    implements $ContainerSizeCopyWith<$Res> {
  factory _$$ContainerSizeImplCopyWith(
    _$ContainerSizeImpl value,
    $Res Function(_$ContainerSizeImpl) then,
  ) = __$$ContainerSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @IdConverter() String id,
    String size,
    String? imageUrl,
    String? priceRange,
  });
}

/// @nodoc
class __$$ContainerSizeImplCopyWithImpl<$Res>
    extends _$ContainerSizeCopyWithImpl<$Res, _$ContainerSizeImpl>
    implements _$$ContainerSizeImplCopyWith<$Res> {
  __$$ContainerSizeImplCopyWithImpl(
    _$ContainerSizeImpl _value,
    $Res Function(_$ContainerSizeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ContainerSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? size = null,
    Object? imageUrl = freezed,
    Object? priceRange = freezed,
  }) {
    return _then(
      _$ContainerSizeImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as String,
        imageUrl:
            freezed == imageUrl
                ? _value.imageUrl
                : imageUrl // ignore: cast_nullable_to_non_nullable
                    as String?,
        priceRange:
            freezed == priceRange
                ? _value.priceRange
                : priceRange // ignore: cast_nullable_to_non_nullable
                    as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContainerSizeImpl implements _ContainerSize {
  const _$ContainerSizeImpl({
    @IdConverter() required this.id,
    required this.size,
    this.imageUrl,
    this.priceRange,
  });

  factory _$ContainerSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContainerSizeImplFromJson(json);

  @override
  @IdConverter()
  final String id;
  @override
  final String size;
  @override
  final String? imageUrl;
  @override
  final String? priceRange;

  @override
  String toString() {
    return 'ContainerSize(id: $id, size: $size, imageUrl: $imageUrl, priceRange: $priceRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContainerSizeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.priceRange, priceRange) ||
                other.priceRange == priceRange));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, size, imageUrl, priceRange);

  /// Create a copy of ContainerSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContainerSizeImplCopyWith<_$ContainerSizeImpl> get copyWith =>
      __$$ContainerSizeImplCopyWithImpl<_$ContainerSizeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContainerSizeImplToJson(this);
  }
}

abstract class _ContainerSize implements ContainerSize {
  const factory _ContainerSize({
    @IdConverter() required final String id,
    required final String size,
    final String? imageUrl,
    final String? priceRange,
  }) = _$ContainerSizeImpl;

  factory _ContainerSize.fromJson(Map<String, dynamic> json) =
      _$ContainerSizeImpl.fromJson;

  @override
  @IdConverter()
  String get id;
  @override
  String get size;
  @override
  String? get imageUrl;
  @override
  String? get priceRange;

  /// Create a copy of ContainerSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContainerSizeImplCopyWith<_$ContainerSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AddContainersRequest _$AddContainersRequestFromJson(Map<String, dynamic> json) {
  return _AddContainersRequest.fromJson(json);
}

/// @nodoc
mixin _$AddContainersRequest {
  String get type => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this AddContainersRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddContainersRequestCopyWith<AddContainersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContainersRequestCopyWith<$Res> {
  factory $AddContainersRequestCopyWith(
    AddContainersRequest value,
    $Res Function(AddContainersRequest) then,
  ) = _$AddContainersRequestCopyWithImpl<$Res, AddContainersRequest>;
  @useResult
  $Res call({String type, String size, int quantity, String status});
}

/// @nodoc
class _$AddContainersRequestCopyWithImpl<
  $Res,
  $Val extends AddContainersRequest
>
    implements $AddContainersRequestCopyWith<$Res> {
  _$AddContainersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? quantity = null,
    Object? status = null,
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
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddContainersRequestImplCopyWith<$Res>
    implements $AddContainersRequestCopyWith<$Res> {
  factory _$$AddContainersRequestImplCopyWith(
    _$AddContainersRequestImpl value,
    $Res Function(_$AddContainersRequestImpl) then,
  ) = __$$AddContainersRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String size, int quantity, String status});
}

/// @nodoc
class __$$AddContainersRequestImplCopyWithImpl<$Res>
    extends _$AddContainersRequestCopyWithImpl<$Res, _$AddContainersRequestImpl>
    implements _$$AddContainersRequestImplCopyWith<$Res> {
  __$$AddContainersRequestImplCopyWithImpl(
    _$AddContainersRequestImpl _value,
    $Res Function(_$AddContainersRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? quantity = null,
    Object? status = null,
  }) {
    return _then(
      _$AddContainersRequestImpl(
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
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddContainersRequestImpl implements _AddContainersRequest {
  const _$AddContainersRequestImpl({
    required this.type,
    required this.size,
    this.quantity = 1,
    this.status = 'available',
  });

  factory _$AddContainersRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddContainersRequestImplFromJson(json);

  @override
  final String type;
  @override
  final String size;
  @override
  @JsonKey()
  final int quantity;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'AddContainersRequest(type: $type, size: $size, quantity: $quantity, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContainersRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, size, quantity, status);

  /// Create a copy of AddContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContainersRequestImplCopyWith<_$AddContainersRequestImpl>
  get copyWith =>
      __$$AddContainersRequestImplCopyWithImpl<_$AddContainersRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddContainersRequestImplToJson(this);
  }
}

abstract class _AddContainersRequest implements AddContainersRequest {
  const factory _AddContainersRequest({
    required final String type,
    required final String size,
    final int quantity,
    final String status,
  }) = _$AddContainersRequestImpl;

  factory _AddContainersRequest.fromJson(Map<String, dynamic> json) =
      _$AddContainersRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get size;
  @override
  int get quantity;
  @override
  String get status;

  /// Create a copy of AddContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddContainersRequestImplCopyWith<_$AddContainersRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

AddContainersResponse _$AddContainersResponseFromJson(
  Map<String, dynamic> json,
) {
  return _AddContainersResponse.fromJson(json);
}

/// @nodoc
mixin _$AddContainersResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<Container> get containers => throw _privateConstructorUsedError;

  /// Serializes this AddContainersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddContainersResponseCopyWith<AddContainersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddContainersResponseCopyWith<$Res> {
  factory $AddContainersResponseCopyWith(
    AddContainersResponse value,
    $Res Function(AddContainersResponse) then,
  ) = _$AddContainersResponseCopyWithImpl<$Res, AddContainersResponse>;
  @useResult
  $Res call({
    bool success,
    String message,
    int count,
    List<Container> containers,
  });
}

/// @nodoc
class _$AddContainersResponseCopyWithImpl<
  $Res,
  $Val extends AddContainersResponse
>
    implements $AddContainersResponseCopyWith<$Res> {
  _$AddContainersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? count = null,
    Object? containers = null,
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
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            containers:
                null == containers
                    ? _value.containers
                    : containers // ignore: cast_nullable_to_non_nullable
                        as List<Container>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddContainersResponseImplCopyWith<$Res>
    implements $AddContainersResponseCopyWith<$Res> {
  factory _$$AddContainersResponseImplCopyWith(
    _$AddContainersResponseImpl value,
    $Res Function(_$AddContainersResponseImpl) then,
  ) = __$$AddContainersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool success,
    String message,
    int count,
    List<Container> containers,
  });
}

/// @nodoc
class __$$AddContainersResponseImplCopyWithImpl<$Res>
    extends
        _$AddContainersResponseCopyWithImpl<$Res, _$AddContainersResponseImpl>
    implements _$$AddContainersResponseImplCopyWith<$Res> {
  __$$AddContainersResponseImplCopyWithImpl(
    _$AddContainersResponseImpl _value,
    $Res Function(_$AddContainersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AddContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? count = null,
    Object? containers = null,
  }) {
    return _then(
      _$AddContainersResponseImpl(
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
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        containers:
            null == containers
                ? _value._containers
                : containers // ignore: cast_nullable_to_non_nullable
                    as List<Container>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddContainersResponseImpl implements _AddContainersResponse {
  const _$AddContainersResponseImpl({
    required this.success,
    required this.message,
    required this.count,
    required final List<Container> containers,
  }) : _containers = containers;

  factory _$AddContainersResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddContainersResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int count;
  final List<Container> _containers;
  @override
  List<Container> get containers {
    if (_containers is EqualUnmodifiableListView) return _containers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_containers);
  }

  @override
  String toString() {
    return 'AddContainersResponse(success: $success, message: $message, count: $count, containers: $containers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddContainersResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(
              other._containers,
              _containers,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    count,
    const DeepCollectionEquality().hash(_containers),
  );

  /// Create a copy of AddContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddContainersResponseImplCopyWith<_$AddContainersResponseImpl>
  get copyWith =>
      __$$AddContainersResponseImplCopyWithImpl<_$AddContainersResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AddContainersResponseImplToJson(this);
  }
}

abstract class _AddContainersResponse implements AddContainersResponse {
  const factory _AddContainersResponse({
    required final bool success,
    required final String message,
    required final int count,
    required final List<Container> containers,
  }) = _$AddContainersResponseImpl;

  factory _AddContainersResponse.fromJson(Map<String, dynamic> json) =
      _$AddContainersResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get count;
  @override
  List<Container> get containers;

  /// Create a copy of AddContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddContainersResponseImplCopyWith<_$AddContainersResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BulkUpdateStatusRequest _$BulkUpdateStatusRequestFromJson(
  Map<String, dynamic> json,
) {
  return _BulkUpdateStatusRequest.fromJson(json);
}

/// @nodoc
mixin _$BulkUpdateStatusRequest {
  @IdListConverter()
  List<String> get containerIds => throw _privateConstructorUsedError;
  String get newStatus => throw _privateConstructorUsedError;

  /// Serializes this BulkUpdateStatusRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BulkUpdateStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BulkUpdateStatusRequestCopyWith<BulkUpdateStatusRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkUpdateStatusRequestCopyWith<$Res> {
  factory $BulkUpdateStatusRequestCopyWith(
    BulkUpdateStatusRequest value,
    $Res Function(BulkUpdateStatusRequest) then,
  ) = _$BulkUpdateStatusRequestCopyWithImpl<$Res, BulkUpdateStatusRequest>;
  @useResult
  $Res call({@IdListConverter() List<String> containerIds, String newStatus});
}

/// @nodoc
class _$BulkUpdateStatusRequestCopyWithImpl<
  $Res,
  $Val extends BulkUpdateStatusRequest
>
    implements $BulkUpdateStatusRequestCopyWith<$Res> {
  _$BulkUpdateStatusRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BulkUpdateStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? containerIds = null, Object? newStatus = null}) {
    return _then(
      _value.copyWith(
            containerIds:
                null == containerIds
                    ? _value.containerIds
                    : containerIds // ignore: cast_nullable_to_non_nullable
                        as List<String>,
            newStatus:
                null == newStatus
                    ? _value.newStatus
                    : newStatus // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BulkUpdateStatusRequestImplCopyWith<$Res>
    implements $BulkUpdateStatusRequestCopyWith<$Res> {
  factory _$$BulkUpdateStatusRequestImplCopyWith(
    _$BulkUpdateStatusRequestImpl value,
    $Res Function(_$BulkUpdateStatusRequestImpl) then,
  ) = __$$BulkUpdateStatusRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@IdListConverter() List<String> containerIds, String newStatus});
}

/// @nodoc
class __$$BulkUpdateStatusRequestImplCopyWithImpl<$Res>
    extends
        _$BulkUpdateStatusRequestCopyWithImpl<
          $Res,
          _$BulkUpdateStatusRequestImpl
        >
    implements _$$BulkUpdateStatusRequestImplCopyWith<$Res> {
  __$$BulkUpdateStatusRequestImplCopyWithImpl(
    _$BulkUpdateStatusRequestImpl _value,
    $Res Function(_$BulkUpdateStatusRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BulkUpdateStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? containerIds = null, Object? newStatus = null}) {
    return _then(
      _$BulkUpdateStatusRequestImpl(
        containerIds:
            null == containerIds
                ? _value._containerIds
                : containerIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
        newStatus:
            null == newStatus
                ? _value.newStatus
                : newStatus // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkUpdateStatusRequestImpl implements _BulkUpdateStatusRequest {
  const _$BulkUpdateStatusRequestImpl({
    @IdListConverter() required final List<String> containerIds,
    required this.newStatus,
  }) : _containerIds = containerIds;

  factory _$BulkUpdateStatusRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkUpdateStatusRequestImplFromJson(json);

  final List<String> _containerIds;
  @override
  @IdListConverter()
  List<String> get containerIds {
    if (_containerIds is EqualUnmodifiableListView) return _containerIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_containerIds);
  }

  @override
  final String newStatus;

  @override
  String toString() {
    return 'BulkUpdateStatusRequest(containerIds: $containerIds, newStatus: $newStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkUpdateStatusRequestImpl &&
            const DeepCollectionEquality().equals(
              other._containerIds,
              _containerIds,
            ) &&
            (identical(other.newStatus, newStatus) ||
                other.newStatus == newStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_containerIds),
    newStatus,
  );

  /// Create a copy of BulkUpdateStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkUpdateStatusRequestImplCopyWith<_$BulkUpdateStatusRequestImpl>
  get copyWith => __$$BulkUpdateStatusRequestImplCopyWithImpl<
    _$BulkUpdateStatusRequestImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkUpdateStatusRequestImplToJson(this);
  }
}

abstract class _BulkUpdateStatusRequest implements BulkUpdateStatusRequest {
  const factory _BulkUpdateStatusRequest({
    @IdListConverter() required final List<String> containerIds,
    required final String newStatus,
  }) = _$BulkUpdateStatusRequestImpl;

  factory _BulkUpdateStatusRequest.fromJson(Map<String, dynamic> json) =
      _$BulkUpdateStatusRequestImpl.fromJson;

  @override
  @IdListConverter()
  List<String> get containerIds;
  @override
  String get newStatus;

  /// Create a copy of BulkUpdateStatusRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkUpdateStatusRequestImplCopyWith<_$BulkUpdateStatusRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BulkUpdateStatusResponse _$BulkUpdateStatusResponseFromJson(
  Map<String, dynamic> json,
) {
  return _BulkUpdateStatusResponse.fromJson(json);
}

/// @nodoc
mixin _$BulkUpdateStatusResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get updatedCount => throw _privateConstructorUsedError;

  /// Serializes this BulkUpdateStatusResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BulkUpdateStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BulkUpdateStatusResponseCopyWith<BulkUpdateStatusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkUpdateStatusResponseCopyWith<$Res> {
  factory $BulkUpdateStatusResponseCopyWith(
    BulkUpdateStatusResponse value,
    $Res Function(BulkUpdateStatusResponse) then,
  ) = _$BulkUpdateStatusResponseCopyWithImpl<$Res, BulkUpdateStatusResponse>;
  @useResult
  $Res call({bool success, String message, int updatedCount});
}

/// @nodoc
class _$BulkUpdateStatusResponseCopyWithImpl<
  $Res,
  $Val extends BulkUpdateStatusResponse
>
    implements $BulkUpdateStatusResponseCopyWith<$Res> {
  _$BulkUpdateStatusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BulkUpdateStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? updatedCount = null,
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
            updatedCount:
                null == updatedCount
                    ? _value.updatedCount
                    : updatedCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BulkUpdateStatusResponseImplCopyWith<$Res>
    implements $BulkUpdateStatusResponseCopyWith<$Res> {
  factory _$$BulkUpdateStatusResponseImplCopyWith(
    _$BulkUpdateStatusResponseImpl value,
    $Res Function(_$BulkUpdateStatusResponseImpl) then,
  ) = __$$BulkUpdateStatusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int updatedCount});
}

/// @nodoc
class __$$BulkUpdateStatusResponseImplCopyWithImpl<$Res>
    extends
        _$BulkUpdateStatusResponseCopyWithImpl<
          $Res,
          _$BulkUpdateStatusResponseImpl
        >
    implements _$$BulkUpdateStatusResponseImplCopyWith<$Res> {
  __$$BulkUpdateStatusResponseImplCopyWithImpl(
    _$BulkUpdateStatusResponseImpl _value,
    $Res Function(_$BulkUpdateStatusResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BulkUpdateStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? updatedCount = null,
  }) {
    return _then(
      _$BulkUpdateStatusResponseImpl(
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
        updatedCount:
            null == updatedCount
                ? _value.updatedCount
                : updatedCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkUpdateStatusResponseImpl implements _BulkUpdateStatusResponse {
  const _$BulkUpdateStatusResponseImpl({
    required this.success,
    required this.message,
    required this.updatedCount,
  });

  factory _$BulkUpdateStatusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkUpdateStatusResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int updatedCount;

  @override
  String toString() {
    return 'BulkUpdateStatusResponse(success: $success, message: $message, updatedCount: $updatedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkUpdateStatusResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.updatedCount, updatedCount) ||
                other.updatedCount == updatedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, updatedCount);

  /// Create a copy of BulkUpdateStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkUpdateStatusResponseImplCopyWith<_$BulkUpdateStatusResponseImpl>
  get copyWith => __$$BulkUpdateStatusResponseImplCopyWithImpl<
    _$BulkUpdateStatusResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkUpdateStatusResponseImplToJson(this);
  }
}

abstract class _BulkUpdateStatusResponse implements BulkUpdateStatusResponse {
  const factory _BulkUpdateStatusResponse({
    required final bool success,
    required final String message,
    required final int updatedCount,
  }) = _$BulkUpdateStatusResponseImpl;

  factory _BulkUpdateStatusResponse.fromJson(Map<String, dynamic> json) =
      _$BulkUpdateStatusResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get updatedCount;

  /// Create a copy of BulkUpdateStatusResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkUpdateStatusResponseImplCopyWith<_$BulkUpdateStatusResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

BulkDeleteContainersRequest _$BulkDeleteContainersRequestFromJson(
  Map<String, dynamic> json,
) {
  switch (json['runtimeType']) {
    case 'byTypeSize':
      return _BulkDeleteByTypeSize.fromJson(json);
    case 'byIds':
      return _BulkDeleteByIds.fromJson(json);

    default:
      throw CheckedFromJsonException(
        json,
        'runtimeType',
        'BulkDeleteContainersRequest',
        'Invalid union type "${json['runtimeType']}"!',
      );
  }
}

/// @nodoc
mixin _$BulkDeleteContainersRequest {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String size, int quantity)
    byTypeSize,
    required TResult Function(@IdListConverter() List<String> specificIds)
    byIds,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String size, int quantity)? byTypeSize,
    TResult? Function(@IdListConverter() List<String> specificIds)? byIds,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String size, int quantity)? byTypeSize,
    TResult Function(@IdListConverter() List<String> specificIds)? byIds,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkDeleteByTypeSize value) byTypeSize,
    required TResult Function(_BulkDeleteByIds value) byIds,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult? Function(_BulkDeleteByIds value)? byIds,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult Function(_BulkDeleteByIds value)? byIds,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Serializes this BulkDeleteContainersRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkDeleteContainersRequestCopyWith<$Res> {
  factory $BulkDeleteContainersRequestCopyWith(
    BulkDeleteContainersRequest value,
    $Res Function(BulkDeleteContainersRequest) then,
  ) =
      _$BulkDeleteContainersRequestCopyWithImpl<
        $Res,
        BulkDeleteContainersRequest
      >;
}

/// @nodoc
class _$BulkDeleteContainersRequestCopyWithImpl<
  $Res,
  $Val extends BulkDeleteContainersRequest
>
    implements $BulkDeleteContainersRequestCopyWith<$Res> {
  _$BulkDeleteContainersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$BulkDeleteByTypeSizeImplCopyWith<$Res> {
  factory _$$BulkDeleteByTypeSizeImplCopyWith(
    _$BulkDeleteByTypeSizeImpl value,
    $Res Function(_$BulkDeleteByTypeSizeImpl) then,
  ) = __$$BulkDeleteByTypeSizeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, String size, int quantity});
}

/// @nodoc
class __$$BulkDeleteByTypeSizeImplCopyWithImpl<$Res>
    extends
        _$BulkDeleteContainersRequestCopyWithImpl<
          $Res,
          _$BulkDeleteByTypeSizeImpl
        >
    implements _$$BulkDeleteByTypeSizeImplCopyWith<$Res> {
  __$$BulkDeleteByTypeSizeImplCopyWithImpl(
    _$BulkDeleteByTypeSizeImpl _value,
    $Res Function(_$BulkDeleteByTypeSizeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? size = null,
    Object? quantity = null,
  }) {
    return _then(
      _$BulkDeleteByTypeSizeImpl(
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
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkDeleteByTypeSizeImpl implements _BulkDeleteByTypeSize {
  const _$BulkDeleteByTypeSizeImpl({
    required this.type,
    required this.size,
    required this.quantity,
    final String? $type,
  }) : $type = $type ?? 'byTypeSize';

  factory _$BulkDeleteByTypeSizeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkDeleteByTypeSizeImplFromJson(json);

  @override
  final String type;
  @override
  final String size;
  @override
  final int quantity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BulkDeleteContainersRequest.byTypeSize(type: $type, size: $size, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkDeleteByTypeSizeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, size, quantity);

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkDeleteByTypeSizeImplCopyWith<_$BulkDeleteByTypeSizeImpl>
  get copyWith =>
      __$$BulkDeleteByTypeSizeImplCopyWithImpl<_$BulkDeleteByTypeSizeImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String size, int quantity)
    byTypeSize,
    required TResult Function(@IdListConverter() List<String> specificIds)
    byIds,
  }) {
    return byTypeSize(type, size, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String size, int quantity)? byTypeSize,
    TResult? Function(@IdListConverter() List<String> specificIds)? byIds,
  }) {
    return byTypeSize?.call(type, size, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String size, int quantity)? byTypeSize,
    TResult Function(@IdListConverter() List<String> specificIds)? byIds,
    required TResult orElse(),
  }) {
    if (byTypeSize != null) {
      return byTypeSize(type, size, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkDeleteByTypeSize value) byTypeSize,
    required TResult Function(_BulkDeleteByIds value) byIds,
  }) {
    return byTypeSize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult? Function(_BulkDeleteByIds value)? byIds,
  }) {
    return byTypeSize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult Function(_BulkDeleteByIds value)? byIds,
    required TResult orElse(),
  }) {
    if (byTypeSize != null) {
      return byTypeSize(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkDeleteByTypeSizeImplToJson(this);
  }
}

abstract class _BulkDeleteByTypeSize implements BulkDeleteContainersRequest {
  const factory _BulkDeleteByTypeSize({
    required final String type,
    required final String size,
    required final int quantity,
  }) = _$BulkDeleteByTypeSizeImpl;

  factory _BulkDeleteByTypeSize.fromJson(Map<String, dynamic> json) =
      _$BulkDeleteByTypeSizeImpl.fromJson;

  String get type;
  String get size;
  int get quantity;

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkDeleteByTypeSizeImplCopyWith<_$BulkDeleteByTypeSizeImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BulkDeleteByIdsImplCopyWith<$Res> {
  factory _$$BulkDeleteByIdsImplCopyWith(
    _$BulkDeleteByIdsImpl value,
    $Res Function(_$BulkDeleteByIdsImpl) then,
  ) = __$$BulkDeleteByIdsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({@IdListConverter() List<String> specificIds});
}

/// @nodoc
class __$$BulkDeleteByIdsImplCopyWithImpl<$Res>
    extends
        _$BulkDeleteContainersRequestCopyWithImpl<$Res, _$BulkDeleteByIdsImpl>
    implements _$$BulkDeleteByIdsImplCopyWith<$Res> {
  __$$BulkDeleteByIdsImplCopyWithImpl(
    _$BulkDeleteByIdsImpl _value,
    $Res Function(_$BulkDeleteByIdsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? specificIds = null}) {
    return _then(
      _$BulkDeleteByIdsImpl(
        specificIds:
            null == specificIds
                ? _value._specificIds
                : specificIds // ignore: cast_nullable_to_non_nullable
                    as List<String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkDeleteByIdsImpl implements _BulkDeleteByIds {
  const _$BulkDeleteByIdsImpl({
    @IdListConverter() required final List<String> specificIds,
    final String? $type,
  }) : _specificIds = specificIds,
       $type = $type ?? 'byIds';

  factory _$BulkDeleteByIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$BulkDeleteByIdsImplFromJson(json);

  final List<String> _specificIds;
  @override
  @IdListConverter()
  List<String> get specificIds {
    if (_specificIds is EqualUnmodifiableListView) return _specificIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specificIds);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BulkDeleteContainersRequest.byIds(specificIds: $specificIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkDeleteByIdsImpl &&
            const DeepCollectionEquality().equals(
              other._specificIds,
              _specificIds,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_specificIds),
  );

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkDeleteByIdsImplCopyWith<_$BulkDeleteByIdsImpl> get copyWith =>
      __$$BulkDeleteByIdsImplCopyWithImpl<_$BulkDeleteByIdsImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, String size, int quantity)
    byTypeSize,
    required TResult Function(@IdListConverter() List<String> specificIds)
    byIds,
  }) {
    return byIds(specificIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, String size, int quantity)? byTypeSize,
    TResult? Function(@IdListConverter() List<String> specificIds)? byIds,
  }) {
    return byIds?.call(specificIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, String size, int quantity)? byTypeSize,
    TResult Function(@IdListConverter() List<String> specificIds)? byIds,
    required TResult orElse(),
  }) {
    if (byIds != null) {
      return byIds(specificIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BulkDeleteByTypeSize value) byTypeSize,
    required TResult Function(_BulkDeleteByIds value) byIds,
  }) {
    return byIds(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult? Function(_BulkDeleteByIds value)? byIds,
  }) {
    return byIds?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BulkDeleteByTypeSize value)? byTypeSize,
    TResult Function(_BulkDeleteByIds value)? byIds,
    required TResult orElse(),
  }) {
    if (byIds != null) {
      return byIds(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkDeleteByIdsImplToJson(this);
  }
}

abstract class _BulkDeleteByIds implements BulkDeleteContainersRequest {
  const factory _BulkDeleteByIds({
    @IdListConverter() required final List<String> specificIds,
  }) = _$BulkDeleteByIdsImpl;

  factory _BulkDeleteByIds.fromJson(Map<String, dynamic> json) =
      _$BulkDeleteByIdsImpl.fromJson;

  @IdListConverter()
  List<String> get specificIds;

  /// Create a copy of BulkDeleteContainersRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkDeleteByIdsImplCopyWith<_$BulkDeleteByIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BulkDeleteContainersResponse _$BulkDeleteContainersResponseFromJson(
  Map<String, dynamic> json,
) {
  return _BulkDeleteContainersResponse.fromJson(json);
}

/// @nodoc
mixin _$BulkDeleteContainersResponse {
  bool get success => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get deletedCount => throw _privateConstructorUsedError;

  /// Serializes this BulkDeleteContainersResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BulkDeleteContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BulkDeleteContainersResponseCopyWith<BulkDeleteContainersResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BulkDeleteContainersResponseCopyWith<$Res> {
  factory $BulkDeleteContainersResponseCopyWith(
    BulkDeleteContainersResponse value,
    $Res Function(BulkDeleteContainersResponse) then,
  ) =
      _$BulkDeleteContainersResponseCopyWithImpl<
        $Res,
        BulkDeleteContainersResponse
      >;
  @useResult
  $Res call({bool success, String message, int deletedCount});
}

/// @nodoc
class _$BulkDeleteContainersResponseCopyWithImpl<
  $Res,
  $Val extends BulkDeleteContainersResponse
>
    implements $BulkDeleteContainersResponseCopyWith<$Res> {
  _$BulkDeleteContainersResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BulkDeleteContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? deletedCount = null,
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
            deletedCount:
                null == deletedCount
                    ? _value.deletedCount
                    : deletedCount // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BulkDeleteContainersResponseImplCopyWith<$Res>
    implements $BulkDeleteContainersResponseCopyWith<$Res> {
  factory _$$BulkDeleteContainersResponseImplCopyWith(
    _$BulkDeleteContainersResponseImpl value,
    $Res Function(_$BulkDeleteContainersResponseImpl) then,
  ) = __$$BulkDeleteContainersResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String message, int deletedCount});
}

/// @nodoc
class __$$BulkDeleteContainersResponseImplCopyWithImpl<$Res>
    extends
        _$BulkDeleteContainersResponseCopyWithImpl<
          $Res,
          _$BulkDeleteContainersResponseImpl
        >
    implements _$$BulkDeleteContainersResponseImplCopyWith<$Res> {
  __$$BulkDeleteContainersResponseImplCopyWithImpl(
    _$BulkDeleteContainersResponseImpl _value,
    $Res Function(_$BulkDeleteContainersResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BulkDeleteContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? deletedCount = null,
  }) {
    return _then(
      _$BulkDeleteContainersResponseImpl(
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
        deletedCount:
            null == deletedCount
                ? _value.deletedCount
                : deletedCount // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BulkDeleteContainersResponseImpl
    implements _BulkDeleteContainersResponse {
  const _$BulkDeleteContainersResponseImpl({
    required this.success,
    required this.message,
    required this.deletedCount,
  });

  factory _$BulkDeleteContainersResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$BulkDeleteContainersResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final String message;
  @override
  final int deletedCount;

  @override
  String toString() {
    return 'BulkDeleteContainersResponse(success: $success, message: $message, deletedCount: $deletedCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BulkDeleteContainersResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.deletedCount, deletedCount) ||
                other.deletedCount == deletedCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message, deletedCount);

  /// Create a copy of BulkDeleteContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BulkDeleteContainersResponseImplCopyWith<
    _$BulkDeleteContainersResponseImpl
  >
  get copyWith => __$$BulkDeleteContainersResponseImplCopyWithImpl<
    _$BulkDeleteContainersResponseImpl
  >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BulkDeleteContainersResponseImplToJson(this);
  }
}

abstract class _BulkDeleteContainersResponse
    implements BulkDeleteContainersResponse {
  const factory _BulkDeleteContainersResponse({
    required final bool success,
    required final String message,
    required final int deletedCount,
  }) = _$BulkDeleteContainersResponseImpl;

  factory _BulkDeleteContainersResponse.fromJson(Map<String, dynamic> json) =
      _$BulkDeleteContainersResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String get message;
  @override
  int get deletedCount;

  /// Create a copy of BulkDeleteContainersResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BulkDeleteContainersResponseImplCopyWith<
    _$BulkDeleteContainersResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
