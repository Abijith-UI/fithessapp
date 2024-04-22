import 'dart:convert';

import 'package:hive/hive.dart';
part 'login_model.g.dart';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

@HiveType(typeId: 1)
class LoginModel extends HiveObject {
  @HiveField(1)
  int? status;
  @HiveField(2)
  String? message;
  @HiveField(3)
  Data? data;

  LoginModel({
    this.status,
    this.message,
    this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data?.toJson(),
      };
}

// hive object
@HiveType(typeId: 2)
class Data {
  @HiveField(1)
  String? UdId;
  @HiveField(2)
  String? UdName;
  @HiveField(3)
  String? UdAge;
  @HiveField(4)
  String? UdWeight;
  @HiveField(5)
  String? UdHeight;
  @HiveField(6)
  String? Udgmail;
  @HiveField(7)
  String? UdPassword;

  Data({
    this.UdId,
    this.UdName,
    this.UdAge,
    this.UdWeight,
    this.UdHeight,
    this.Udgmail,
    this.UdPassword,
  });
  factory Data.fromJson(Map<String, dynamic> json) => Data(
        UdId: json["FT_UdId"],
        UdName: json["FT_UdName"],
        UdAge: json["FT_UdAge"],
        UdWeight: json["FT_UdWeight"],
        UdHeight: json["FT_UdHeight"],
        Udgmail: json["FT_Udgmail"],
        UdPassword: json["FT_UdPassword"],
      );

  Map<String, dynamic> toJson() => {
        "ftUdId": UdId,
        "ftUdName": UdName,
        "ftUdAge": UdAge,
        "ftUdWeight": UdWeight,
        "ftUdHeight": UdHeight,
        "ftUdgmail": Udgmail,
        "ftUdPassword": UdPassword,
      };
}
