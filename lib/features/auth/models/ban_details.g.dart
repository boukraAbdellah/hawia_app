// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ban_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BanDetailsImpl _$$BanDetailsImplFromJson(Map<String, dynamic> json) =>
    _$BanDetailsImpl(
      isPermanent: json['isPermanent'] as bool,
      reason: json['reason'] as String,
      duration: json['duration'] as String?,
      expiryMessage: json['expiryMessage'] as String?,
      bannedAt:
          json['bannedAt'] == null
              ? null
              : DateTime.parse(json['bannedAt'] as String),
      expiresAt:
          json['expiresAt'] == null
              ? null
              : DateTime.parse(json['expiresAt'] as String),
    );

Map<String, dynamic> _$$BanDetailsImplToJson(_$BanDetailsImpl instance) =>
    <String, dynamic>{
      'isPermanent': instance.isPermanent,
      'reason': instance.reason,
      'duration': instance.duration,
      'expiryMessage': instance.expiryMessage,
      'bannedAt': instance.bannedAt?.toIso8601String(),
      'expiresAt': instance.expiresAt?.toIso8601String(),
    };

_$LoginErrorImpl _$$LoginErrorImplFromJson(Map<String, dynamic> json) =>
    _$LoginErrorImpl(
      message: json['message'] as String,
      isBanned: json['isBanned'] as bool? ?? false,
      banDetails:
          json['banDetails'] == null
              ? null
              : BanDetails.fromJson(json['banDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginErrorImplToJson(_$LoginErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'isBanned': instance.isBanned,
      'banDetails': instance.banDetails,
    };
