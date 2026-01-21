# Flutter Authentication Implementation Guide

**Source Analysis:** React SignIn.jsx & SignUp.jsx  
**Target:** Flutter Login & Registration Screens  
**Date:** January 11, 2026

---

## Table of Contents
1. [Login Flow](#1-login-flow)
2. [Registration Flow](#2-registration-flow)
3. [Flutter Data Models](#3-flutter-data-models)
4. [Flutter API Service](#4-flutter-api-service)
5. [Flutter State Management](#5-flutter-state-management)
6. [Flutter UI Implementation](#6-flutter-ui-implementation)

---

## 1. Login Flow

### 1.1 Login Fields

| Field Name | Type | Required | Validation | Description |
|------------|------|----------|------------|-------------|
| `domain` | String | ✅ Yes | Not empty | Company unique identifier (10 digits) |
| `email` | String | ✅ Yes | Email format | Admin email address |
| `password` | String | ✅ Yes | Not empty | Admin password |

### 1.2 Login API

**Endpoint:** `POST /api/company/auth/admin/login`

**Request Body:**
```json
{
  "domain": "0123456789",
  "email": "admin@company.com",
  "password": "password123"
}
```

**Success Response (200):**
```json
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "adminUser": {
    "id": "uuid-here",
    "name": "Admin Name",
    "email": "admin@company.com",
    "role": "admin"
  },
  "company": {
    "id": "uuid-here",
    "name": "شركة النقل",
    "domain": "0123456789",
    "status": "active",
    "city": "الرياض",
    "phone": "+966501234567"
  }
}
```

**Error Response - Invalid Credentials (401):**
```json
{
  "message": "بيانات الاعتماد غير صحيحة",
  "isBanned": false
}
```

**Error Response - Banned User (403):**
```json
{
  "message": "تم حظر حسابك",
  "isBanned": true,
  "banDetails": {
    "isPermanent": false,
    "reason": "انتهاك شروط الخدمة",
    "duration": "7 أيام",
    "expiryMessage": "ينتهي الحظر في 18 يناير 2026",
    "bannedAt": "2026-01-11T10:30:00Z",
    "expiresAt": "2026-01-18T10:30:00Z"
  }
}
```

**Error Response - Banned User (Permanent):**
```json
{
  "message": "تم حظر حسابك بشكل دائم",
  "isBanned": true,
  "banDetails": {
    "isPermanent": true,
    "reason": "انتهاكات متكررة لسياسة الاستخدام"
  }
}
```

### 1.3 Login Behavior

1. User enters domain, email, and password
2. Client validates all fields are not empty
3. POST request to `/api/company/auth/admin/login`
4. **On Success:**
   - Extract `token`, `adminUser`, and `company` from response
   - Save to secure storage:
     - Token → `FlutterSecureStorage` (key: `authTokenWeb`)
     - User → JSON string (key: `authUser`)
     - Company → JSON string (key: `authCompany`)
   - Navigate to `/dashboard`
5. **On Error:**
   - If `isBanned === true` and `banDetails` exists:
     - Show ban details modal/dialog with:
       - Ban type (permanent/temporary)
       - Reason
       - Duration (if temporary)
       - Expiry message
     - Use different UI styling:
       - Red gradient header for permanent ban
       - Orange gradient for temporary ban
   - If regular error:
     - Show error message in snackbar or alert

### 1.4 Post-Login Actions

- Store authentication state globally (Riverpod/Bloc)
- All subsequent API calls must include header:
  ```
  Authorization: Bearer {token}
  ```
- If any API returns 401 Unauthorized → logout and redirect to login

---

## 2. Registration Flow

### 2.1 Registration Steps

The registration process has **3 steps**:

1. **Step 1 - Form:** Collect company details
2. **Step 2 - Verify:** Email verification with 6-digit code
3. **Step 3 - Pending:** Awaiting admin approval

### 2.2 Registration Fields

#### Step 1: Company Details Form

| Field Name | Type | Required | Validation | Default | Description |
|------------|------|----------|------------|---------|-------------|
| `companyName` | String | ✅ Yes | Not empty | - | Company name |
| `commercialNumber` | String | ✅ Yes | 10 digits | - | Commercial registration number |
| `taxNumber` | String | ✅ Yes | Not empty | - | Tax registration number |
| `companyPhoneNumber` | String | ✅ Yes | Not empty | - | Company phone number |
| `regionId` | String | ✅ Yes | Not empty | - | Selected region ID |
| `cityId` | String | ✅ Yes | Not empty | - | Selected city ID |
| `logo` | File | ✅ Yes | Image, <2MB | - | Company logo (JPEG/PNG/GIF/WEBP) |
| `latitude` | String (number) | ✅ Yes | -90 to 90 | "24.7136" | Company location latitude |
| `longitude` | String (number) | ✅ Yes | -180 to 180 | "46.6753" | Company location longitude |
| `bankName` | String | ✅ Yes | Not empty | - | Bank name |
| `bankAccountNumber` | String | ✅ Yes | Not empty | - | Bank account number |
| `iban` | String | ✅ Yes | Not empty | - | IBAN number |
| `bankAccountName` | String | ✅ Yes | Not empty | - | Account holder name |
| `email` | String | ✅ Yes | Email format | - | Admin email |
| `password` | String | ✅ Yes | Min 6 chars | - | Admin password |
| `confirmPassword` | String | ✅ Yes | Match password | - | Password confirmation |

**Validation Rules:**
- All fields must be filled
- `logo` must be an image file under 2MB
- `password` must match `confirmPassword`
- `latitude` must be between -90 and 90
- `longitude` must be between -180 and 180
- `email` must be valid email format

#### Step 2: Email Verification

| Field Name | Type | Required | Description |
|------------|------|----------|-------------|
| `code` | String | ✅ Yes | 6-digit verification code |

### 2.3 Registration API Endpoints

#### 2.3.1 Send Verification Code

**Endpoint:** `POST /api/company/send-verification`

**Request Body:**
```json
{
  "email": "admin@company.com"
}
```

**Success Response (200):**
```json
{
  "message": "تم إرسال رمز التحقق إلى بريدك الإلكتروني"
}
```

**Error Response (400):**
```json
{
  "message": "البريد الإلكتروني مستخدم بالفعل"
}
```

---

#### 2.3.2 Verify Email Code

**Endpoint:** `POST /api/company/verify-email`

**Request Body:**
```json
{
  "email": "admin@company.com",
  "code": "123456"
}
```

**Success Response (200):**
```json
{
  "message": "تم التحقق من البريد الإلكتروني بنجاح"
}
```

**Error Response (400):**
```json
{
  "message": "رمز التحقق غير صحيح"
}
```

---

#### 2.3.3 Register Company

**Endpoint:** `POST /api/company/register`

**Request Type:** `multipart/form-data` (for file upload)

**Request Body (FormData):**
```
companyName: "شركة النقل الحديث"
commercialNumber: "1234567890"
taxNumber: "300012345600003"
companyPhoneNumber: "+966501234567"
cityId: "1" (Note: cityId only, NOT regionId)
latitude: 24.7136
longitude: 46.6753
logo: [File object]
bankName: "البنك الأهلي"
bankAccountNumber: "1234567890"
iban: "SA0000000000000000000000"
bankAccountName: "شركة النقل"
email: "admin@company.com"
password: "password123"
```

**Important Notes:**
- Do NOT send `confirmPassword` field (client-side validation only)
- Do NOT send `regionId` field (only cityId is needed)
- Do NOT send `code` field (verified in previous step)
- `latitude` and `longitude` must be sent as numbers, not strings
- `logo` must be a file upload (multipart/form-data)

**Success Response (201):**
```json
{
  "message": "تم تسجيل الشركة بنجاح. في انتظار موافقة الإدارة."
}
```

**Error Response (400):**
```json
{
  "message": "الرقم التجاري مستخدم بالفعل"
}
```

### 2.4 Registration Behavior

#### Step 1: Form Submission

1. User fills all company details
2. User selects region → Cities filtered by region
3. User can:
   - Click map to select location
   - Click "Current Location" button → Request GPS coordinates
   - Manually enter latitude/longitude
4. User uploads company logo (validate: image type, <2MB)
5. Click "Send Verification Code" button
6. Validate all fields locally:
   - All required fields filled
   - Logo selected
   - Password matches confirm password
   - Coordinates are valid numbers
7. Dispatch `sendVerificationCode(email)`
8. On success → Move to Step 2 (Verify)

#### Step 2: Email Verification

1. User enters 6-digit code received via email
2. Click "Confirm Registration" button
3. Dispatch `verifyEmailCode({ email, code })`
4. On success → Dispatch `registerCompany(formData)`
5. On success → Move to Step 3 (Pending)

#### Step 3: Pending Approval

1. Show success message:
   - "Your registration is under review"
   - "You will receive an email with a 10-digit unique number for login"
2. Provide link to return to login page
3. User cannot login until admin approves

### 2.5 Region & City Data

**Regions (from `regions.json`):**
```json
[
  {
    "region_id": 1,
    "name_ar": "منطقة الرياض",
    "name_en": "Riyadh Region"
  },
  {
    "region_id": 2,
    "name_ar": "منطقة مكة المكرمة",
    "name_en": "Makkah Region"
  }
  // ... more regions
]
```

**Cities (from `cities.json`):**
```json
[
  {
    "city_id": 1,
    "region_id": 1,
    "name_ar": "الرياض",
    "name_en": "Riyadh"
  },
  {
    "city_id": 2,
    "region_id": 1,
    "name_ar": "الخرج",
    "name_en": "Al Kharj"
  }
  // ... more cities
]
```

**Flutter Implementation:**
- Load regions.json and cities.json as assets
- Parse into Dart models
- Filter cities where `city.region_id == selectedRegion.region_id`
- Implement searchable dropdown for cities

---

## 3. Flutter Data Models

### 3.1 Login Models

**login_request.dart:**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.freezed.dart';
part 'login_request.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String domain,
    required String email,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
```

**login_response.dart:**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String token,
    required AdminUser adminUser,
    required Company company,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class AdminUser with _$AdminUser {
  const factory AdminUser({
    required String id,
    required String name,
    required String email,
    required String role,
  }) = _AdminUser;

  factory AdminUser.fromJson(Map<String, dynamic> json) =>
      _$AdminUserFromJson(json);
}

@freezed
class Company with _$Company {
  const factory Company({
    required String id,
    required String name,
    required String domain,
    required String status,
    String? city,
    String? phone,
  }) = _Company;

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);
}
```

**ban_details.dart:**
```dart
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
```

### 3.2 Registration Models

**registration_request.dart:**
```dart
// Note: This is for the final registration, not for form state
class RegistrationRequest {
  final String companyName;
  final String commercialNumber;
  final String taxNumber;
  final String companyPhoneNumber;
  final String cityId;
  final double latitude;
  final double longitude;
  final File logo;
  final String bankName;
  final String bankAccountNumber;
  final String iban;
  final String bankAccountName;
  final String email;
  final String password;

  RegistrationRequest({
    required this.companyName,
    required this.commercialNumber,
    required this.taxNumber,
    required this.companyPhoneNumber,
    required this.cityId,
    required this.latitude,
    required this.longitude,
    required this.logo,
    required this.bankName,
    required this.bankAccountNumber,
    required this.iban,
    required this.bankAccountName,
    required this.email,
    required this.password,
  });

  // Convert to multipart form data
  Future<FormData> toFormData() async {
    return FormData.fromMap({
      'companyName': companyName,
      'commercialNumber': commercialNumber,
      'taxNumber': taxNumber,
      'companyPhoneNumber': companyPhoneNumber,
      'cityId': cityId,
      'latitude': latitude,
      'longitude': longitude,
      'logo': await MultipartFile.fromFile(logo.path),
      'bankName': bankName,
      'bankAccountNumber': bankAccountNumber,
      'iban': iban,
      'bankAccountName': bankAccountName,
      'email': email,
      'password': password,
    });
  }
}
```

**verification_request.dart:**
```dart
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
```

**region_city_models.dart:**
```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'region_city_models.freezed.dart';
part 'region_city_models.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    @JsonKey(name: 'region_id') required int regionId,
    @JsonKey(name: 'name_ar') required String nameAr,
    @JsonKey(name: 'name_en') required String nameEn,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) =>
      _$RegionFromJson(json);
}

@freezed
class City with _$City {
  const factory City({
    @JsonKey(name: 'city_id') required int cityId,
    @JsonKey(name: 'region_id') required int regionId,
    @JsonKey(name: 'name_ar') required String nameAr,
    @JsonKey(name: 'name_en') required String nameEn,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) =>
      _$CityFromJson(json);
}
```

---

## 4. Flutter API Service

### 4.1 Auth API Service

**lib/core/services/auth_api.dart:**
```dart
import 'package:dio/dio.dart';

class AuthApi {
  final Dio _dio;

  AuthApi(this._dio);

  // Login
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await _dio.post(
        '/api/company/auth/admin/login',
        data: request.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401 || e.response?.statusCode == 403) {
        // Parse error to check for ban
        final errorData = e.response?.data;
        throw LoginError.fromJson(errorData);
      }
      throw Exception(e.response?.data['message'] ?? 'Login failed');
    }
  }

  // Send verification code
  Future<String> sendVerificationCode(String email) async {
    try {
      final response = await _dio.post(
        '/api/company/send-verification',
        data: {'email': email},
      );
      return response.data['message'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Failed to send code');
    }
  }

  // Verify email code
  Future<String> verifyEmailCode(String email, String code) async {
    try {
      final response = await _dio.post(
        '/api/company/verify-email',
        data: {'email': email, 'code': code},
      );
      return response.data['message'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Invalid code');
    }
  }

  // Register company
  Future<String> registerCompany(RegistrationRequest request) async {
    try {
      final formData = await request.toFormData();
      final response = await _dio.post(
        '/api/company/register',
        data: formData,
        options: Options(
          contentType: 'multipart/form-data',
        ),
      );
      return response.data['message'];
    } on DioException catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Registration failed');
    }
  }
}
```

---

## 5. Flutter State Management

### 5.1 Auth State (Riverpod Example)

**lib/features/auth/providers/auth_provider.dart:**
```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// Auth State
@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    AdminUser? user,
    Company? company,
    String? token,
    @Default(false) bool isAuthenticated,
    @Default(false) bool isLoading,
    String? error,
    BanDetails? banDetails,
  }) = _AuthState;
}

// Auth Notifier
class AuthNotifier extends StateNotifier<AuthState> {
  final AuthApi _authApi;
  final FlutterSecureStorage _secureStorage;

  AuthNotifier(this._authApi, this._secureStorage)
      : super(const AuthState());

  Future<void> login(String domain, String email, String password) async {
    state = state.copyWith(isLoading: true, error: null, banDetails: null);

    try {
      final request = LoginRequest(
        domain: domain,
        email: email,
        password: password,
      );
      
      final response = await _authApi.login(request);
      
      // Save to secure storage
      await _secureStorage.write(key: 'authTokenWeb', value: response.token);
      await _secureStorage.write(
        key: 'authUser',
        value: jsonEncode(response.adminUser.toJson()),
      );
      await _secureStorage.write(
        key: 'authCompany',
        value: jsonEncode(response.company.toJson()),
      );
      
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

  Future<void> logout() async {
    await _secureStorage.deleteAll();
    state = const AuthState();
  }

  Future<void> loadFromStorage() async {
    final token = await _secureStorage.read(key: 'authTokenWeb');
    if (token != null) {
      final userJson = await _secureStorage.read(key: 'authUser');
      final companyJson = await _secureStorage.read(key: 'authCompany');
      
      if (userJson != null && companyJson != null) {
        state = state.copyWith(
          token: token,
          user: AdminUser.fromJson(jsonDecode(userJson)),
          company: Company.fromJson(jsonDecode(companyJson)),
          isAuthenticated: true,
        );
      }
    }
  }
}

// Provider
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  final authApi = ref.read(authApiProvider);
  final secureStorage = const FlutterSecureStorage();
  return AuthNotifier(authApi, secureStorage);
});
```

### 5.2 Registration State (Riverpod Example)

**lib/features/auth/providers/registration_provider.dart:**
```dart
enum RegistrationStep { form, verify, pending }

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(RegistrationStep.form) RegistrationStep step,
    @Default(false) bool isLoading,
    String? error,
    String? successMessage,
    @Default(false) bool emailVerified,
  }) = _RegistrationState;
}

class RegistrationNotifier extends StateNotifier<RegistrationState> {
  final AuthApi _authApi;

  RegistrationNotifier(this._authApi) : super(const RegistrationState());

  Future<void> sendVerificationCode(String email) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final message = await _authApi.sendVerificationCode(email);
      state = state.copyWith(
        isLoading: false,
        step: RegistrationStep.verify,
        successMessage: message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> verifyEmail(String email, String code) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final message = await _authApi.verifyEmailCode(email, code);
      state = state.copyWith(
        isLoading: false,
        emailVerified: true,
        successMessage: message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> registerCompany(RegistrationRequest request) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      final message = await _authApi.registerCompany(request);
      state = state.copyWith(
        isLoading: false,
        step: RegistrationStep.pending,
        successMessage: message,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  void reset() {
    state = const RegistrationState();
  }
}

final registrationProvider =
    StateNotifierProvider<RegistrationNotifier, RegistrationState>((ref) {
  final authApi = ref.read(authApiProvider);
  return RegistrationNotifier(authApi);
});
```

---

## 6. Flutter UI Implementation

### 6.1 Login Screen Structure

**lib/features/auth/presentation/pages/sign_in_page.dart:**
```dart
class SignInPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ConsumerState<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  final _domainController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    // Listen for successful login
    ref.listen<AuthState>(authProvider, (previous, next) {
      if (next.isAuthenticated) {
        context.go('/dashboard');
      }
    });

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo
              // ...
              
              // Title
              Text('تسجيل الدخول', style: TextStyle(fontSize: 24)),
              
              // Ban Details Modal (if banned)
              if (authState.banDetails != null)
                _BanDetailsCard(banDetails: authState.banDetails!),
              
              // Regular Error
              if (authState.error != null && authState.banDetails == null)
                Text(authState.error!, style: TextStyle(color: Colors.red)),
              
              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Domain Field
                    TextFormField(
                      controller: _domainController,
                      decoration: InputDecoration(
                        labelText: 'الرقم التعريفي للشركة',
                        hintText: '0123456789',
                      ),
                      textDirection: TextDirection.rtl,
                      validator: (value) => 
                        value?.isEmpty ?? true ? 'مطلوب' : null,
                    ),
                    
                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: 'البريد الإلكتروني للمسؤول',
                      ),
                      textDirection: TextDirection.rtl,
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) =>
                        value?.isEmpty ?? true ? 'مطلوب' : null,
                    ),
                    
                    // Password Field with show/hide toggle
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: 'كلمة سر المسؤول',
                        suffixIcon: IconButton(
                          icon: Icon(_showPassword 
                            ? Icons.visibility_off 
                            : Icons.visibility),
                          onPressed: () => 
                            setState(() => _showPassword = !_showPassword),
                        ),
                      ),
                      textDirection: TextDirection.rtl,
                      obscureText: !_showPassword,
                      validator: (value) =>
                        value?.isEmpty ?? true ? 'مطلوب' : null,
                    ),
                    
                    SizedBox(height: 16),
                    
                    // Login Button
                    ElevatedButton(
                      onPressed: authState.isLoading ? null : _handleLogin,
                      child: authState.isLoading
                        ? CircularProgressIndicator()
                        : Text('تسجيل الدخول'),
                    ),
                    
                    // Sign up link
                    TextButton(
                      onPressed: () => context.go('/signup'),
                      child: Text('ليس لديك حساب؟ انشاء حساب'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _handleLogin() {
    if (_formKey.currentState!.validate()) {
      ref.read(authProvider.notifier).login(
        _domainController.text,
        _emailController.text,
        _passwordController.text,
      );
    }
  }
}

// Ban Details Card Widget
class _BanDetailsCard extends StatelessWidget {
  final BanDetails banDetails;
  
  @override
  Widget build(BuildContext context) {
    return Card(
      color: banDetails.isPermanent ? Colors.red[50] : Colors.orange[50],
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with ban icon
            Row(
              children: [
                Icon(Icons.block, color: Colors.red),
                SizedBox(width: 8),
                Text(
                  banDetails.isPermanent ? 'حظر دائم' : 'حظر مؤقت',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            
            // Duration (if temporary)
            if (!banDetails.isPermanent && banDetails.expiryMessage != null)
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(banDetails.expiryMessage!),
              ),
            
            // Reason
            Padding(
              padding: EdgeInsets.only(top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('سبب الحظر:', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text(banDetails.reason),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

### 6.2 Registration Screen Structure

**Key Points for Registration:**

1. **Use PageView or Stepper** for 3 steps
2. **Step 1 - Form:**
   - Load regions from JSON asset
   - On region select → filter cities
   - Implement searchable city dropdown
   - Use `image_picker` for logo selection
   - Use `google_maps_flutter` for location selection
   - Implement "Current Location" button using `geolocator`
   - Validate coordinates (-90 to 90 for lat, -180 to 180 for lng)
   
3. **Step 2 - Verify:**
   - Show 6-digit code input (use `pin_code_fields` package)
   - Call verify API
   - On success → immediately call register API
   
4. **Step 3 - Pending:**
   - Show success message card
   - Provide "Go to Login" button

**Example Registration Screen (Simplified):**
```dart
class SignUpPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _pageController = PageController();
  
  // Controllers for all fields
  final _companyNameController = TextEditingController();
  final _commercialNumberController = TextEditingController();
  // ... (create controllers for all 15+ fields)
  
  File? _logoFile;
  Region? _selectedRegion;
  City? _selectedCity;
  LatLng _location = LatLng(24.7136, 46.6753);
  
  List<Region> _regions = [];
  List<City> _allCities = [];
  
  @override
  void initState() {
    super.initState();
    _loadRegionsAndCities();
  }
  
  Future<void> _loadRegionsAndCities() async {
    final regionsJson = await rootBundle.loadString('assets/data/regions.json');
    final citiesJson = await rootBundle.loadString('assets/data/cities.json');
    
    setState(() {
      _regions = (jsonDecode(regionsJson) as List)
          .map((e) => Region.fromJson(e))
          .toList();
      _allCities = (jsonDecode(citiesJson) as List)
          .map((e) => City.fromJson(e))
          .toList();
    });
  }
  
  List<City> get _filteredCities {
    if (_selectedRegion == null) return [];
    return _allCities
        .where((city) => city.regionId == _selectedRegion!.regionId)
        .toList();
  }
  
  @override
  Widget build(BuildContext context) {
    final registrationState = ref.watch(registrationProvider);
    
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          // Step 1: Form
          _buildFormStep(),
          
          // Step 2: Verification
          _buildVerificationStep(),
          
          // Step 3: Pending
          _buildPendingStep(),
        ],
      ),
    );
  }
  
  Widget _buildFormStep() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(24),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // All form fields...
            TextFormField(/* Company Name */),
            TextFormField(/* Commercial Number */),
            // ... more fields
            
            // Region Dropdown
            DropdownButtonFormField<Region>(
              value: _selectedRegion,
              items: _regions.map((r) => DropdownMenuItem(
                value: r,
                child: Text(r.nameAr),
              )).toList(),
              onChanged: (region) {
                setState(() {
                  _selectedRegion = region;
                  _selectedCity = null; // Reset city
                });
              },
            ),
            
            // City Searchable Dropdown
            if (_selectedRegion != null)
              SearchableDropdown(/* Implement searchable city dropdown */),
            
            // Logo Picker
            ElevatedButton(
              onPressed: _pickLogo,
              child: Text(_logoFile == null ? 'اختر شعار الشركة' : 'تم الاختيار'),
            ),
            if (_logoFile != null)
              Image.file(_logoFile!, height: 100),
            
            // Location Section
            Column(
              children: [
                ElevatedButton(
                  onPressed: _requestCurrentLocation,
                  child: Text('موقعي الحالي'),
                ),
                
                // Lat/Lng inputs
                TextFormField(/* Latitude */),
                TextFormField(/* Longitude */),
                
                // Map
                Container(
                  height: 300,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: _location,
                      zoom: 13,
                    ),
                    markers: {Marker(markerId: MarkerId('company'), position: _location)},
                    onTap: (latLng) => setState(() => _location = latLng),
                  ),
                ),
              ],
            ),
            
            // Submit Button
            ElevatedButton(
              onPressed: _handleSendVerificationCode,
              child: Text('إرسال رمز التحقق'),
            ),
          ],
        ),
      ),
    );
  }
  
  void _handleSendVerificationCode() {
    if (_formKey.currentState!.validate() && _logoFile != null) {
      ref.read(registrationProvider.notifier)
          .sendVerificationCode(_emailController.text);
      _pageController.nextPage(/* animate */);
    }
  }
  
  Future<void> _pickLogo() async {
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final file = File(image.path);
      // Validate size < 2MB
      final bytes = await file.length();
      if (bytes > 2 * 1024 * 1024) {
        // Show error
        return;
      }
      setState(() => _logoFile = file);
    }
  }
  
  Future<void> _requestCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition();
    setState(() {
      _location = LatLng(position.latitude, position.longitude);
    });
  }
}
```

---

## 7. Implementation Checklist

### Login Screen
- [ ] Create login form with 3 fields (domain, email, password)
- [ ] Implement show/hide password toggle
- [ ] Add form validation (all fields required)
- [ ] Implement login API call
- [ ] Handle success: save token/user/company to FlutterSecureStorage
- [ ] Handle ban error: show ban details modal with proper styling
- [ ] Handle regular error: show error message
- [ ] Navigate to dashboard on success
- [ ] Add "Forgot Password" link
- [ ] Add "Sign Up" link

### Registration Screen
- [ ] Create 3-step flow (form → verify → pending)
- [ ] Load regions.json and cities.json from assets
- [ ] Implement region dropdown
- [ ] Implement searchable city dropdown (filtered by region)
- [ ] Add all 15+ form fields with proper validation
- [ ] Implement image picker for logo (validate type and size)
- [ ] Integrate Google Maps for location selection
- [ ] Implement "Current Location" button with Geolocator
- [ ] Add manual lat/lng inputs with validation
- [ ] Implement send verification code API
- [ ] Create 6-digit code input screen
- [ ] Implement verify email API
- [ ] On verify success → call register API with FormData
- [ ] Show pending approval screen
- [ ] Add navigation between steps
- [ ] Handle errors at each step

### State Management
- [ ] Create auth provider with login/logout/loadFromStorage
- [ ] Create registration provider with 3-step flow
- [ ] Persist auth state to secure storage
- [ ] Implement auto-login on app start
- [ ] Handle global 401 responses (auto-logout)

### Models
- [ ] Generate freezed models for all request/response types
- [ ] Create region and city models with JsonKey annotations
- [ ] Implement LoginError with ban details support

---

## 8. Key Differences from React

| Aspect | React | Flutter |
|--------|-------|---------|
| Form State | useState hooks | TextEditingController + StatefulWidget |
| Validation | Manual or libraries | Form + GlobalKey + validators |
| File Upload | File input + FormData | image_picker + dio FormData |
| Map | react-leaflet | google_maps_flutter |
| Location | navigator.geolocation | geolocator package |
| Password Toggle | useState boolean | StatefulWidget state |
| Dropdown Search | Custom component | searchable_dropdown or custom |
| Navigation | react-router | go_router |
| Storage | localStorage | flutter_secure_storage |
| API Calls | Axios | Dio |

---

## 9. Required Flutter Packages

```yaml
dependencies:
  # Core
  flutter_riverpod: ^2.4.0
  
  # Networking
  dio: ^5.4.0
  
  # Storage
  flutter_secure_storage: ^9.0.0
  
  # Models
  freezed_annotation: ^2.4.1
  json_annotation: ^4.8.1
  
  # UI
  go_router: ^13.0.0
  image_picker: ^1.0.7
  google_maps_flutter: ^2.5.0
  geolocator: ^11.0.0
  pin_code_fields: ^8.0.1
  
dev_dependencies:
  build_runner: ^2.4.7
  freezed: ^2.4.6
  json_serializable: ^6.7.1
```

---

**End of Implementation Guide**

This document provides complete API contracts, model structures, and implementation guidance for Flutter authentication screens matching the React implementation.
