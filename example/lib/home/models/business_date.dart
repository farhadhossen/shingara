// To parse this JSON data, do
//
//     final businessDate = businessDateFromJson(jsonString);

import 'dart:convert';

BusinessDate businessDateFromJson(String str) => BusinessDate.fromJson(json.decode(str));

String businessDateToJson(BusinessDate data) => json.encode(data.toJson());

class BusinessDate {
  String businessDate;
  String businessClosingDate;
  int statusId;
  int activeStatus;
  int id;

  BusinessDate({
    required this.businessDate,
    required this.businessClosingDate,
    required this.statusId,
    required this.activeStatus,
    required this.id,
  });

  factory BusinessDate.empty() => BusinessDate(
      businessDate: "${DateTime.now()}",
      businessClosingDate: "${DateTime.now()}",
      statusId: 0,
      activeStatus: 0,
      id: 0);

  factory BusinessDate.fromJson(Map<String, dynamic> json) => BusinessDate(
    businessDate: json["business_Date"]??"${DateTime.now()}",
    businessClosingDate: json["businessClosingDate"]??"${DateTime.now()}",
    statusId: json["statusId"]??0,
    activeStatus: json["activeStatus"]??0,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "business_Date": businessDate,
    "businessClosingDate": businessClosingDate,
    "statusId": statusId,
    "activeStatus": activeStatus,
    "id": id,
  };
}
