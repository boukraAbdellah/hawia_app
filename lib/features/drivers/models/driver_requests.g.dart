// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driver_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddDriverRequestImpl _$$AddDriverRequestImplFromJson(
  Map<String, dynamic> json,
) => _$AddDriverRequestImpl(
  name: json['name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String?,
  password: json['password'] as String,
  availability: json['availability'] as String,
  identityNumber: json['identityNumber'] as String?,
);

Map<String, dynamic> _$$AddDriverRequestImplToJson(
  _$AddDriverRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'password': instance.password,
  'availability': instance.availability,
  'identityNumber': instance.identityNumber,
};

_$UpdateDriverRequestImpl _$$UpdateDriverRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateDriverRequestImpl(
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  email: json['email'] as String?,
  password: json['password'] as String?,
  availability: json['availability'] as String?,
  identityNumber: json['identityNumber'] as String?,
);

Map<String, dynamic> _$$UpdateDriverRequestImplToJson(
  _$UpdateDriverRequestImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'phone': instance.phone,
  'email': instance.email,
  'password': instance.password,
  'availability': instance.availability,
  'identityNumber': instance.identityNumber,
};
