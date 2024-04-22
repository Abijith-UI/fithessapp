// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  int status;
  String message;
  List<UserInfo> data;

  UserModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        status: json["status"],
        message: json["message"],
        data:
            List<UserInfo>.from(json["data"].map((x) => UserInfo.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UserInfo {
  String ftUdId;
  String ftUdName;
  String ftUdAge;
  String ftUdWeight;
  String ftUdHeight;
  String ftUdgmail;
  String ftUdPassword;

  UserInfo({
    required this.ftUdId,
    required this.ftUdName,
    required this.ftUdAge,
    required this.ftUdWeight,
    required this.ftUdHeight,
    required this.ftUdgmail,
    required this.ftUdPassword,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        ftUdId: json["FT_UdId"],
        ftUdName: json["FT_UdName"],
        ftUdAge: json["FT_UdAge"],
        ftUdWeight: json["FT_UdWeight"],
        ftUdHeight: json["FT_UdHeight"],
        ftUdgmail: json["FT_Udgmail"],
        ftUdPassword: json["FT_UdPassword"],
      );

  UserInfo? get first => null;

  Map<String, dynamic> toJson() => {
        "FT_UdId": ftUdId,
        "FT_UdName": ftUdName,
        "FT_UdAge": ftUdAge,
        "FT_UdWeight": ftUdWeight,
        "FT_UdHeight": ftUdHeight,
        "FT_Udgmail": ftUdgmail,
        "FT_UdPassword": ftUdPassword,
      };
}
