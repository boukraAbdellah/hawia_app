// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerificationCodeRequestImpl _$$VerificationCodeRequestImplFromJson(
  Map<String, dynamic> json,
) => _$VerificationCodeRequestImpl(email: json['email'] as String);

Map<String, dynamic> _$$VerificationCodeRequestImplToJson(
  _$VerificationCodeRequestImpl instance,
) => <String, dynamic>{'email': instance.email};

_$VerifyEmailRequestImpl _$$VerifyEmailRequestImplFromJson(
  Map<String, dynamic> json,
) => _$VerifyEmailRequestImpl(
  email: json['email'] as String,
  code: json['code'] as String,
);

Map<String, dynamic> _$$VerifyEmailRequestImplToJson(
  _$VerifyEmailRequestImpl instance,
) => <String, dynamic>{'email': instance.email, 'code': instance.code};
