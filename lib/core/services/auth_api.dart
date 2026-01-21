import 'package:dio/dio.dart';
import '../../features/auth/models/login_request.dart';
import '../../features/auth/models/login_response.dart';
import '../../features/auth/models/ban_details.dart';
import '../services/api_service.dart';

class AuthApi {
  final ApiService _apiService;

  AuthApi(this._apiService);

  // Login
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await _apiService.post(
        '/api/company/auth/admin/login',
        data: request.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        // Parse error to check for ban
        final errorData = e.response?.data;
        if (errorData != null) {
          throw LoginError.fromJson(errorData);
        }
      }
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }

  // Send verification code
  Future<String> sendVerificationCode(String email) async {
    print('🟢 AuthApi: sendVerificationCode starting...');
    print('🟢 Email: $email');
    try {
      print('🟢 Making POST request to /api/company/send-verification');
      final response = await _apiService.post(
        '/api/company/send-verification',
        data: {'email': email},
      );
      print('🟢 Response received: ${response.data}');
      print('🟢 Response type: ${response.data.runtimeType}');
      final message = response.data['message'] ?? 'تم إرسال رمز التحقق إلى بريدك الإلكتروني';
      print('✅ Returning message: $message');
      return message;
    } on DioException catch (e, stackTrace) {
      print('❌ DioException in sendVerificationCode');
      print('❌ Status code: ${e.response?.statusCode}');
      print('❌ Response data: ${e.response?.data}');
      print('❌ Response data type: ${e.response?.data.runtimeType}');
      print('❌ Error: $e');
      print('❌ Stack trace: $stackTrace');
      
      // Check if response data is a Map before trying to access it
      String errorMessage = 'Failed to send code';
      if (e.response?.data is Map) {
        errorMessage = e.response?.data['message'] ?? errorMessage;
      } else if (e.response?.statusCode == 301 || e.response?.statusCode == 302) {
        errorMessage = 'API redirect error. Please check the server configuration.';
      }
      
      throw Exception(errorMessage);
    } catch (e, stackTrace) {
      print('❌ Unexpected error in sendVerificationCode: $e');
      print('❌ Stack trace: $stackTrace');
      rethrow;
    }
  }

  // Verify email code
  Future<String> verifyEmailCode(String email, String code) async {
    try {
      final response = await _apiService.post(
        '/api/company/verify-email',
        data: {'email': email, 'code': code},
      );
      return response.data['message'] ?? 'تم التحقق من البريد الإلكتروني بنجاح';
    } on DioException catch (e) {
      String errorMessage = 'Invalid code';
      if (e.response?.data is Map) {
        errorMessage = e.response?.data['message'] ?? errorMessage;
      }
      throw Exception(errorMessage);
    }
  }

  // Register company
  Future<String> registerCompany(FormData formData) async {
    try {
      final response = await _apiService.post(
        '/api/company/register',
        data: formData,
      );
      return response.data['message'] ?? 'تم تسجيل الشركة بنجاح. في انتظار موافقة الإدارة.';
    } on DioException catch (e) {
      String errorMessage = 'Registration failed';
      if (e.response?.data is Map) {
        errorMessage = e.response?.data['message'] ?? errorMessage;
      }
      throw Exception(errorMessage);
    }
  }
}
