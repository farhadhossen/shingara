// To parse this JSON data, do
//
//     final userSmsModel = userSmsModelFromJson(jsonString);

import 'dart:convert';

List<UserSmsModel> userSmsModelFromJson(String str) => List<UserSmsModel>.from(json.decode(str).map((x) => UserSmsModel.fromJson(x)));

String userSmsModelToJson(List<UserSmsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserSmsModel {
  int clientId;
  String smsType;
  String sms;
  String smsSender;
  DateTime smsDate;
  int id;

  UserSmsModel({
    required this.clientId,
    required this.smsType,
    required this.sms,
    required this.smsSender,
    required this.smsDate,
    required this.id,
  });

  factory UserSmsModel.fromJson(Map<String, dynamic> json) => UserSmsModel(
    clientId: json["clientId"],
    smsType: json["smsType"],
    sms: json["sms"],
    smsSender: json["smsSender"],
    smsDate: DateTime.parse(json["smsDate"]),
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "clientId": clientId,
    "smsType": smsType,
    "sms": sms,
    "smsSender": smsSender,
    "smsDate": smsDate.toIso8601String(),
    "id": id,
  };
}
