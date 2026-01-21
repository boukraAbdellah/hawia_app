import 'package:freezed_annotation/freezed_annotation.dart';

part 'ban_details.freezed.dart';
part 'ban_details.g.dart';

@freezed
class BanDetails with _$BanDetails {
  const factory BanDetails({
    required bool isPermanent,
    required String reason,
    String? duration,
    String? expiryMessage,
    DateTime? bannedAt,
    DateTime? expiresAt,
  }) = _BanDetails;

  factory BanDetails.fromJson(Map<String, dynamic> json) =>
      _$BanDetailsFromJson(json);
}

@freezed
class LoginError with _$LoginError {
  const factory LoginError({
    required String message,
    @Default(false) bool isBanned,
    BanDetails? banDetails,
  }) = _LoginError;

  factory LoginError.fromJson(Map<String, dynamic> json) =>
      _$LoginErrorFromJson(json);
}
