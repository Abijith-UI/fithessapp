import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_fitness_1/model/response/registration_response_model.dart';
import 'package:flutter_fitness_1/model/user_model.dart';
import 'package:retrofit/http.dart';
import 'package:flutter_fitness_1/core/constants.dart';
import 'package:dio/dio.dart';
import 'package:flutter_fitness_1/model/login_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class AuthRepository {
  Future<LoginModel> login(String gmail, String password) async {
    final endPint = baseUrl + '/userlogin';
    debugPrint(endPint);
    final apiUrl = Uri.parse(endPint);
    try {
      final response = await http.post(
        apiUrl,
        body: {'cgmail': gmail, 'cpassword': password},
      );
      final loginResponse = loginModelFromJson(response.body);
      debugPrint(loginResponse.toJson().toString());
      return loginResponse;
    } on HttpException catch (e) {
      throw Exception(e.message);
      // debugPrint(e.message.toString());
    }
  }

  Future<UserModel> getProfile(
    String id,
  ) async {
    final endPint = baseUrl + '/getUserDetails';
    debugPrint(endPint);
    final apiUrl = Uri.parse(endPint);
    try {
      final response = await http.post(
        apiUrl,
        body: {'id': id},
      );
      final ProfileResponse = userModelFromJson(response.body);
      debugPrint(ProfileResponse.toJson().toString());
      return ProfileResponse;
    } on HttpException catch (e) {
      throw Exception(e.message);
      // debugPrint(e.message.toString());
    }
  }

  static Future<RegistrationResponseModel> registraion(
      {required String uname,
      required String ugmail,
      required String unage,
      required String uheight,
      required String uweight,
      required String upassword}) async {
    final endPint = baseUrl + '/userregister';
    debugPrint(endPint);
    final apiUrl = Uri.parse(endPint);

    try {
      final response = await http.post(
        apiUrl,
        body: {
          'uname': uname,
          'ugmail': ugmail,
          'unage': unage,
          'uheight': uheight,
          'uweight': uweight,
          'upasswaord': upassword,
        },
      );
      final ProfileResponse = registrationResponseModelFromJson(response.body);
      return ProfileResponse;
    } on HttpException catch (e) {
      throw HttpException(e.message);
      debugPrint(e.message.toString());
    }
  }
}
