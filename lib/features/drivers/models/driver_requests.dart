import 'package:freezed_annotation/freezed_annotation.dart';

part 'driver_requests.freezed.dart';
part 'driver_requests.g.dart';

@freezed
class AddDriverRequest with _$AddDriverRequest {
  const factory AddDriverRequest({
    required String name,
    required String phone,
    String? email,
    required String password,
    required String availability,
    String? identityNumber,
  }) = _AddDriverRequest;

  factory AddDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$AddDriverRequestFromJson(json);
}

@freezed
class UpdateDriverRequest with _$UpdateDriverRequest {
  const factory UpdateDriverRequest({
    String? name,
    String? phone,
    String? email,
    String? password,
    String? availability,
    String? identityNumber,
  }) = _UpdateDriverRequest;

  factory UpdateDriverRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateDriverRequestFromJson(json);
}
