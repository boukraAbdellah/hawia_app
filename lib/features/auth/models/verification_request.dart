import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_request.freezed.dart';
part 'verification_request.g.dart';

@freezed
class VerificationCodeRequest with _$VerificationCodeRequest {
  const factory VerificationCodeRequest({
    required String email,
  }) = _VerificationCodeRequest;

  factory VerificationCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$VerificationCodeRequestFromJson(json);
}

@freezed
class VerifyEmailRequest with _$VerifyEmailRequest {
  const factory VerifyEmailRequest({
    required String email,
    required String code,
  }) = _VerifyEmailRequest;

  factory VerifyEmailRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailRequestFromJson(json);
}
