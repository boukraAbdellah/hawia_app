import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import '../../../core/services/auth_api.dart';
import 'auth_provider.dart';

part 'registration_provider.freezed.dart';

enum RegistrationStep { form, verify, pending }

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(RegistrationStep.form) RegistrationStep step,
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,
    @Default(false) bool emailVerified,
    String? email, // Store email for verification step
  }) = _RegistrationState;
}

class RegistrationNotifier extends StateNotifier<RegistrationState> {
  final AuthApi _authApi;

  RegistrationNotifier(this._authApi) : super(const RegistrationState());

  Future<void> sendVerificationCode(String email) async {
    print('🔵 RegistrationProvider: sendVerificationCode called with email: $email');
    state = state.copyWith(isLoading: true, error: null);

    try {
      print('🔵 Calling AuthApi.sendVerificationCode...');
      final message = await _authApi.sendVerificationCode(email);
      print('✅ Verification code sent successfully: $message');
      state = state.copyWith(
        isLoading: false,
        step: RegistrationStep.verify,
        successMessage: message,
        email: email,
      );
    } catch (e, stackTrace) {
      print('❌ ERROR in sendVerificationCode: $e');
      print('❌ Stack trace: $stackTrace');
      state = state.copyWith(
        isLoading: false,
        error: e.toString().replaceAll('Exception: ', ''),
      );
    }
  }

  Future<void> verifyEmailAndRegister(String code, FormData formData) async {
    state = state.copyWith(isLoading: true, error: null);

    try {
      // First verify email
      if (state.email != null) {
        await _authApi.verifyEmailCode(state.email!, code);
      }

      // Then register company
      final message = await _authApi.registerCompany(formData);
      state = state.copyWith(
        isLoading: false,
        step: RegistrationStep.pending,
        successMessage: message,
        emailVerified: true,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString().replaceAll('Exception: ', ''),
      );
    }
  }

  void reset() {
    state = const RegistrationState();
  }

  void clearError() {
    state = state.copyWith(error: null);
  }

  void goToFormStep() {
    state = state.copyWith(step: RegistrationStep.form);
  }
}

final registrationProvider =
    StateNotifierProvider<RegistrationNotifier, RegistrationState>((ref) {
  final authApi = ref.read(authApiProvider);
  return RegistrationNotifier(authApi);
});
