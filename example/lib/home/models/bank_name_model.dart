// To parse this JSON data, do
//
//     final bankNameModel = bankNameModelFromJson(jsonString);

import 'dart:convert';

List<BankNameModel> bankNameModelFromJson(String str) => List<BankNameModel>.from(json.decode(str).map((x) => BankNameModel.fromJson(x)));

String bankNameModelToJson(List<BankNameModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BankNameModel {
  String bankName;
  int id;

  BankNameModel({
    required this.bankName,
    required this.id,
  });

  factory BankNameModel.fromJson(Map<String, dynamic> json) => BankNameModel(
    bankName: json["bankName"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "bankName": bankName,
    "id": id,
  };
}
