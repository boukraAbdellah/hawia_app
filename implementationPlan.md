# Implementation Plan: Authentication Screens Setup

## Overview
Setting up the authentication flow for Hawiya Flutter app with Landing, Sign In, and Sign Up screens using Riverpod for state management.

## User Review Required

> [!IMPORTANT]
> **State Management Choice: Riverpod**
> - Modern, type-safe, and recommended by Flutter community
> - Simple to use for both simple and complex state
> - Will be used throughout the entire app
> - Great for API calls with async providers

## Proposed Changes

### Dependencies

#### [MODIFY] [pubspec.yaml](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/pubspec.yaml)
Add required dependencies:
- `flutter_riverpod: ^2.6.1` - State management
- `dio: ^5.7.0` - HTTP client
- `flutter_secure_storage: ^9.2.2` - Secure token storage
- `shared_preferences: ^2.3.4` - Local preferences
- `go_router: ^14.7.0` - Navigation

---

### Project Structure

Create the following folder structure:
```
lib/
├── main.dart (modify)
├── core/
│   ├── config/
│   │   └── api_config.dart
│   ├── services/
│   │   ├── api_service.dart
│   │   └── storage_service.dart
│   └── router/
│       └── app_router.dart
├── features/
│   └── auth/
│       ├── models/
│       │   ├── user_model.dart
│       │   ├── company_model.dart
│       │   └── auth_state.dart
│       ├── providers/
│       │   └── auth_provider.dart
│       ├── screens/
│       │   ├── landing_screen.dart
│       │   ├── sign_in_screen.dart
│       │   └── sign_up_screen.dart
│       └── widgets/
│           └── custom_text_field.dart
└── shared/
    └── widgets/
        └── loading_button.dart
```

---

### Core Configuration

#### [NEW] [api_config.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/core/config/api_config.dart)
- Define base API URL
- API endpoints constants

#### [NEW] [api_service.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/core/services/api_service.dart)
- Dio instance configuration
- Request/response interceptors
- Auth token injection
- Error handling

#### [NEW] [storage_service.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/core/services/storage_service.dart)
- Save/retrieve auth token
- Save/retrieve user data
- Clear storage on logout

#### [NEW] [app_router.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/core/router/app_router.dart)
- Configure routes with go_router
- Route guards for auth
- Initial route logic

---

### Authentication Feature

#### Models

##### [NEW] [user_model.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/models/user_model.dart)
```dart
class UserModel {
  final String id;
  final String name;
  final String email;
  final String role;
  // JSON serialization
}
```

##### [NEW] [company_model.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/models/company_model.dart)
```dart
class CompanyModel {
  final String id;
  final String name;
  // Other company fields
  // JSON serialization
}
```

##### [NEW] [auth_state.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/models/auth_state.dart)
```dart
class AuthState {
  final UserModel? user;
  final CompanyModel? company;
  final String? token;
  final bool isAuthenticated;
  final bool isLoading;
  final String? error;
}
```

#### Provider

##### [NEW] [auth_provider.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/providers/auth_provider.dart)
- `StateNotifierProvider<AuthNotifier, AuthState>`
- Methods:
  - `signIn(email, password)` → POST `/api/company/auth/admin/login`
  - `signUp(registrationData)` → POST `/api/company/register`
  - `sendVerification(email)` → POST `/api/company/send-verification`
  - `verifyEmail(email, code)` → POST `/api/company/verify-email`
  - [logout()](file:///c:/Users/abdellah/Desktop/Hawiya/hawiya_plus_web/src/redux/slices/authSlice.js#22-31)
  - `checkAuthStatus()` - Load saved session

#### Screens

##### [NEW] [landing_screen.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/screens/landing_screen.dart)
- Hero section with app logo
- Welcome message
- "Sign In" button → Navigate to Sign In
- "Sign Up" button → Navigate to Sign Up
- Simple, clean design

##### [NEW] [sign_in_screen.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/screens/sign_in_screen.dart)
- Email text field
- Password text field
- "Sign In" button with loading state
- Error message display
- "Don't have an account? Sign Up" link
- On success: Navigate to Dashboard (placeholder)

##### [NEW] [sign_up_screen.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/screens/sign_up_screen.dart)
**Multi-step form:**
- Step 1: Email verification (send code + verify)
- Step 2: Registration form (all company/admin details)
- Step 3: Pending approval success screen
- Form validation
- Loading states
- Error handling

#### Shared Widgets

##### [NEW] [custom_text_field.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/features/auth/widgets/custom_text_field.dart)
- Reusable text field with Arabic RTL support
- Password visibility toggle
- Validation support

##### [NEW] [loading_button.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/shared/widgets/loading_button.dart)
- Button with loading indicator
- Disabled state while loading

---

### Main Application

#### [MODIFY] [main.dart](file:///c:/Users/abdellah/Desktop/Hawiya/hawia_app/lib/main.dart)
- Wrap app in `ProviderScope`
- Use `MaterialApp.router` with `GoRouter`
- Set up Arabic locale and RTL support
- Theme configuration

---

## Verification Plan

### Manual Testing

Since this is the initial setup, verification will be done through manual testing:

1. **Run the App:**
   ```bash
   flutter pub get
   flutter run
   ```

2. **Test Landing Screen:**
   - App opens to Landing screen
   - Verify hero section displays
   - Tap "Sign In" → navigates to Sign In screen
   - Tap "Sign Up" → navigates to Sign Up screen

3. **Test Sign In Screen:**
   - Enter invalid credentials
   - Verify error message displays
   - Enter valid credentials (if test account available)
   - Verify loading indicator shows
   - Check successful login (token saved, navigation works)

4. **Test Sign Up Screen:**
   - Step 1: Enter email, verify code sending works
   - Step 2: Fill registration form, test required field validation
   - Step 3: Verify success screen shows
   - Check API error handling

5. **Test State Persistence:**
   - Login successfully
   - Close and reopen app
   - Verify user remains logged in
   - Test logout clears storage

6. **Test RTL Support:**
   - Verify Arabic text displays correctly
   - Check text fields align right-to-left
   - Ensure buttons and layouts respect RTL

### API Integration Test

If backend is available:
- Test with real API endpoints
- Verify token is saved to secure storage
- Check interceptor adds token to requests
- Verify 401 responses trigger logout

---

## Notes

- **API Base URL:** Will need to be configured in environment or config file
- **Arabic Support:** Using system fonts, may add custom Arabic font later
- **Error Messages:** Currently in English, can be localized later
- **Dashboard Screen:** Placeholder route for now, will be implemented in next phase
