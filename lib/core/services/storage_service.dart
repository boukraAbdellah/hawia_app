import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

class StorageService {
  static const _storage = FlutterSecureStorage();
  
  // Keys
  static const String _tokenKey = 'auth_token';
  static const String _userKey = 'auth_user';
  static const String _companyKey = 'auth_company';
  
  // Save auth token
  static Future<void> saveToken(String token) async {
    await _storage.write(key: _tokenKey, value: token);
  }
  
  // Get auth token
  static Future<String?> getToken() async {
    return await _storage.read(key: _tokenKey);
  }
  
  // Save user data
  static Future<void> saveUser(Map<String, dynamic> user) async {
    await _storage.write(key: _userKey, value: jsonEncode(user));
  }
  
  // Get user data
  static Future<Map<String, dynamic>?> getUser() async {
    final userJson = await _storage.read(key: _userKey);
    if (userJson != null) {
      return jsonDecode(userJson);
    }
    return null;
  }
  
  // Save company data
  static Future<void> saveCompany(Map<String, dynamic> company) async {
    await _storage.write(key: _companyKey, value: jsonEncode(company));
  }
  
  // Get company data
  static Future<Map<String, dynamic>?> getCompany() async {
    final companyJson = await _storage.read(key: _companyKey);
    if (companyJson != null) {
      return jsonDecode(companyJson);
    }
    return null;
  }
  
  // Clear all auth data
  static Future<void> clearAll() async {
    await _storage.delete(key: _tokenKey);
    await _storage.delete(key: _userKey);
    await _storage.delete(key: _companyKey);
  }
  
  // Check if user is logged in
  static Future<bool> isLoggedIn() async {
    final token = await getToken();
    return token != null && token.isNotEmpty;
  }

  // Generic save data
  static Future<void> saveData(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  // Generic get data
  static Future<String?> getData(String key) async {
    return await _storage.read(key: key);
  }

  // Generic delete data
  static Future<void> deleteData(String key) async {
    await _storage.delete(key: key);
  }
}
