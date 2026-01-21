class ApiConfig {
  // static const String baseUrl = 'https://hawiacom.com';
  static const String baseUrl = 'http://localhost:3000';
  
  // API Endpoints
  static const String login = '/api/company/auth/admin/login';
  static const String sendVerification = '/api/company/send-verification';
  static const String verifyEmail = '/api/company/verify-email';
  static const String register = '/api/company/register';
  
  // Timeouts (reduced for faster response)
  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 15);
}
