import 'dart:convert';

RegistrationResponseModel registrationResponseModelFromJson(String str) =>
    RegistrationResponseModel.fromJson(json.decode(str));

String registrationResponseModelToJson(RegistrationResponseModel data) =>
    json.encode(data.toJson());

class RegistrationResponseModel {
  int status;
  String message;

  RegistrationResponseModel({
    required this.status,
    required this.message,
  });

  factory RegistrationResponseModel.fromJson(Map<String, dynamic> json) =>
      RegistrationResponseModel(
        status: json["status"],
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
      };
}
