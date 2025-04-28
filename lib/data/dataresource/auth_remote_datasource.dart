import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:training/data/dataresource/auth_local_datasource.dart';
import 'package:training/data/model/response/auth_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  Future<Either<String, AuthResponseModel>> login(
      String email, String password) async {
    final response = await http.post(
      Uri.parse('http://192.168.31.89:8000/api/login'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return Right(AuthResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }

  Future<Either<String, String>> logout() async {
    AuthLocalDatasource().removeAuthData();
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.post(
      Uri.parse('http://192.168.31.89:8000/api/logout'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'bearer ${authData.accessToken}'
      },
    );

    if (response.statusCode == 200) {
      return Right(response.body);
    } else {
      return Left(response.body);
    }
  }
}
