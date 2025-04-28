import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:training/data/model/response/auth_response_model.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_data', jsonEncode(authResponseModel.toJson()));
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<AuthResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authDataUser = prefs.getString('auth_data');
    if (authDataUser == null) {
      throw Exception('No auth data found');
    }
    return AuthResponseModel.fromJson(jsonDecode(authDataUser));
  }
}
