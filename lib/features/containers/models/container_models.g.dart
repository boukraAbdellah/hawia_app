// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContainerSummaryResponseImpl _$$ContainerSummaryResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ContainerSummaryResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  summary:
      (json['summary'] as List<dynamic>)
          .map((e) => ContainerSummaryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ContainerSummaryResponseImplToJson(
  _$ContainerSummaryResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'summary': instance.summary,
};

_$ContainerSummaryItemImpl _$$ContainerSummaryItemImplFromJson(
  Map<String, dynamic> json,
) => _$ContainerSummaryItemImpl(
  type: json['type'] as String,
  size: json['size'] as String,
  total: (json['total'] as num).toInt(),
  available: (json['available'] as num).toInt(),
  rented: (json['rented'] as num).toInt(),
  maintenance: (json['maintenance'] as num).toInt(),
);

Map<String, dynamic> _$$ContainerSummaryItemImplToJson(
  _$ContainerSummaryItemImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'size': instance.size,
  'total': instance.total,
  'available': instance.available,
  'rented': instance.rented,
  'maintenance': instance.maintenance,
};

_$ContainerDetailsResponseImpl _$$ContainerDetailsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ContainerDetailsResponseImpl(
  success: json['success'] as bool,
  type: json['type'] as String,
  size: json['size'] as String,
  total: (json['total'] as num).toInt(),
  containers: GroupedContainers.fromJson(
    json['containers'] as Map<String, dynamic>,
  ),
  allContainers:
      (json['allContainers'] as List<dynamic>)
          .map((e) => Container.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ContainerDetailsResponseImplToJson(
  _$ContainerDetailsResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'type': instance.type,
  'size': instance.size,
  'total': instance.total,
  'containers': instance.containers,
  'allContainers': instance.allContainers,
};

_$GroupedContainersImpl _$$GroupedContainersImplFromJson(
  Map<String, dynamic> json,
) => _$GroupedContainersImpl(
  available:
      (json['available'] as List<dynamic>)
          .map((e) => Container.fromJson(e as Map<String, dynamic>))
          .toList(),
  rented:
      (json['rented'] as List<dynamic>)
          .map((e) => Container.fromJson(e as Map<String, dynamic>))
          .toList(),
  maintenance:
      (json['maintenance'] as List<dynamic>)
          .map((e) => Container.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$GroupedContainersImplToJson(
  _$GroupedContainersImpl instance,
) => <String, dynamic>{
  'available': instance.available,
  'rented': instance.rented,
  'maintenance': instance.maintenance,
};

_$ContainerImpl _$$ContainerImplFromJson(Map<String, dynamic> json) =>
    _$ContainerImpl(
      id: const IdConverter().fromJson(json['id']),
      type: json['type'] as String,
      size: json['size'] as String,
      containerNumber: const IdConverter().fromJson(json['containerNumber']),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ContainerImplToJson(_$ContainerImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'type': instance.type,
      'size': instance.size,
      'containerNumber': _$JsonConverterToJson<dynamic, String>(
        instance.containerNumber,
        const IdConverter().toJson,
      ),
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_$ContainerTypesResponseImpl _$$ContainerTypesResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ContainerTypesResponseImpl(
  success: json['success'] as bool,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => ContainerType.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ContainerTypesResponseImplToJson(
  _$ContainerTypesResponseImpl instance,
) => <String, dynamic>{'success': instance.success, 'data': instance.data};

_$ContainerTypeImpl _$$ContainerTypeImplFromJson(Map<String, dynamic> json) =>
    _$ContainerTypeImpl(
      id: const IdConverter().fromJson(json['id']),
      name: json['name'] as String,
      description: json['description'] as String?,
      sizes:
          (json['sizes'] as List<dynamic>)
              .map((e) => ContainerSize.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$ContainerTypeImplToJson(_$ContainerTypeImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'name': instance.name,
      'description': instance.description,
      'sizes': instance.sizes,
    };

_$ContainerSizeImpl _$$ContainerSizeImplFromJson(Map<String, dynamic> json) =>
    _$ContainerSizeImpl(
      id: const IdConverter().fromJson(json['id']),
      size: json['size'] as String,
      imageUrl: json['imageUrl'] as String?,
      priceRange: json['priceRange'] as String?,
    );

Map<String, dynamic> _$$ContainerSizeImplToJson(_$ContainerSizeImpl instance) =>
    <String, dynamic>{
      'id': const IdConverter().toJson(instance.id),
      'size': instance.size,
      'imageUrl': instance.imageUrl,
      'priceRange': instance.priceRange,
    };

_$AddContainersRequestImpl _$$AddContainersRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AddContainersRequestImpl(
  type: json['type'] as String,
  size: json['size'] as String,
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  status: json['status'] as String? ?? 'available',
);

Map<String, dynamic> _$$AddContainersRequestImplToJson(
  _$AddContainersRequestImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'size': instance.size,
  'quantity': instance.quantity,
  'status': instance.status,
};

_$AddContainersResponseImpl _$$AddContainersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$AddContainersResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  count: (json['count'] as num).toInt(),
  containers:
      (json['containers'] as List<dynamic>)
          .map((e) => Container.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$AddContainersResponseImplToJson(
  _$AddContainersResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'count': instance.count,
  'containers': instance.containers,
};

_$BulkUpdateStatusRequestImpl _$$BulkUpdateStatusRequestImplFromJson(
  Map<String, dynamic> json,
) => _$BulkUpdateStatusRequestImpl(
  containerIds: const IdListConverter().fromJson(json['containerIds'] as List),
  newStatus: json['newStatus'] as String,
);

Map<String, dynamic> _$$BulkUpdateStatusRequestImplToJson(
  _$BulkUpdateStatusRequestImpl instance,
) => <String, dynamic>{
  'containerIds': const IdListConverter().toJson(instance.containerIds),
  'newStatus': instance.newStatus,
};

_$BulkUpdateStatusResponseImpl _$$BulkUpdateStatusResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BulkUpdateStatusResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  updatedCount: (json['updatedCount'] as num).toInt(),
);

Map<String, dynamic> _$$BulkUpdateStatusResponseImplToJson(
  _$BulkUpdateStatusResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'updatedCount': instance.updatedCount,
};

_$BulkDeleteByTypeSizeImpl _$$BulkDeleteByTypeSizeImplFromJson(
  Map<String, dynamic> json,
) => _$BulkDeleteByTypeSizeImpl(
  type: json['type'] as String,
  size: json['size'] as String,
  quantity: (json['quantity'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$BulkDeleteByTypeSizeImplToJson(
  _$BulkDeleteByTypeSizeImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'size': instance.size,
  'quantity': instance.quantity,
  'runtimeType': instance.$type,
};

_$BulkDeleteByIdsImpl _$$BulkDeleteByIdsImplFromJson(
  Map<String, dynamic> json,
) => _$BulkDeleteByIdsImpl(
  specificIds: const IdListConverter().fromJson(json['specificIds'] as List),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$$BulkDeleteByIdsImplToJson(
  _$BulkDeleteByIdsImpl instance,
) => <String, dynamic>{
  'specificIds': const IdListConverter().toJson(instance.specificIds),
  'runtimeType': instance.$type,
};

_$BulkDeleteContainersResponseImpl _$$BulkDeleteContainersResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BulkDeleteContainersResponseImpl(
  success: json['success'] as bool,
  message: json['message'] as String,
  deletedCount: (json['deletedCount'] as num).toInt(),
);

Map<String, dynamic> _$$BulkDeleteContainersResponseImplToJson(
  _$BulkDeleteContainersResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'deletedCount': instance.deletedCount,
};
