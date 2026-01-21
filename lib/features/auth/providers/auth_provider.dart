import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/auth_state.dart';
import '../models/user_model.dart';
import '../models/company_model.dart';
import '../models/login_request.dart';
import '../models/ban_details.dart';
import '../../../core/services/api_service.dart';
import '../../../core/services/auth_api.dart';
import '../../../core/services/storage_service.dart';

// Provider for API Service
final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

// Provider for Auth API
final authApiProvider = Provider<AuthApi>((ref) {
  return AuthApi(ref.read(apiServiceProvider));
});

// Auth State Notifier Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(ref.read(authApiProvider));
});

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthApi _authApi;

  AuthNotifier(this._authApi) : super(const AuthState()) {
    loadFromStorage();
  }

  // Load auth state from storage
  Future<void> loadFromStorage() async {
    final token = await StorageService.getToken();
    if (token != null) {
      final user = await StorageService.getUser();
      final company = await StorageService.getCompany();

      if (user != null && company != null) {
        state = state.copyWith(
          token: token,
          user: UserModel.fromJson(user),
          company: CompanyModel.fromJson(company),
          isAuthenticated: true,
        );
      }
    }
  }

  // Login
  Future<void> login(String domain, String email, String password) async {
    state = state.copyWith(isLoading: true, error: null, banDetails: null);

    try {
      final request = LoginRequest(
        domain: domain,
        email: email,
        password: password,
      );

      final response = await _authApi.login(request);

      // Save to secure storage using StorageService
      await StorageService.saveToken(response.token);
      await StorageService.saveUser(response.adminUser.toJson());
      await StorageService.saveCompany(response.company.toJson());

      state = state.copyWith(
        user: response.adminUser,
        company: response.company,
        token: response.token,
        isAuthenticated: true,
        isLoading: false,
      );
    } on LoginError catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.message,
        banDetails: e.banDetails,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  // Logout
  Future<void> logout() async {
    await StorageService.clearAll();
    state = const AuthState();
  }

  // Clear error
  void clearError() {
    state = state.copyWith(error: null, banDetails: null);
  }
}
