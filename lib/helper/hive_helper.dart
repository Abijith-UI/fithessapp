import 'package:flutter_fitness_1/core/hive_constants.dart';
import 'package:flutter_fitness_1/model/login_model.dart';
import 'package:hive/hive.dart';

class Hivehelper {
  static get userId => null;

  static Future<String> getlogginedUserId() async {
    try {
      final loginBox = await Hive.openBox<LoginModel>(HiveConstants.loginBox);
      final userId = loginBox.values.first.data?.UdId;
      return userId ?? "";
    } on HiveError catch (e) {
      throw Exception(e.message);
    }
  }

  static Future<String> getregisterUserId() async {
    try {
      final loginBox = await Hive.openBox<LoginModel>(HiveConstants.loginBox);
      final userId = loginBox.values.first.data?.UdId;
      return userId ?? "";
    } on HiveError catch (e) {
      throw Exception(e.message);
    }
  }
}
