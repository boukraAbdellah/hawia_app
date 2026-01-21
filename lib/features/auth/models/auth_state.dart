import 'package:freezed_annotation/freezed_annotation.dart';
import 'user_model.dart';
import 'company_model.dart';
import 'ban_details.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    UserModel? user,
    CompanyModel? company,
    String? token,
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    String? error,
    BanDetails? banDetails,
  }) = _AuthState;
}
