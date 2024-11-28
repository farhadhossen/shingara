// To parse this JSON data, do
//
//     final dashboardAccModel = dashboardAccModelFromJson(jsonString);

import 'dart:convert';

List<DashboardAccModel> dashboardAccModelFromJson(String str) => List<DashboardAccModel>.from(json.decode(str).map((x) => DashboardAccModel.fromJson(x)));

String dashboardAccModelToJson(List<DashboardAccModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DashboardAccModel {
  int accountId;
  String title;
  String titleBn;
  String accNo;
  String productType;
  double balance;
  bool show;

  DashboardAccModel({
    required this.accountId,
    required this.title,
    required this.titleBn,
    required this.accNo,
    required this.productType,
    required this.balance,
    required this.show,
  });

  factory DashboardAccModel.empty() {
    return DashboardAccModel(
        accountId: 0,
        title: "",
        titleBn: "",
        accNo: "All Account",
        productType: "",
        balance: 0.00,
        show: false);
  }

  factory DashboardAccModel.fromJson(Map<String, dynamic> json) => DashboardAccModel(
    accountId: json["accountId"]??0,
    title: json["title"]??"",
    titleBn: json["titleBn"]??"",
    accNo: json["accNo"]??"",
    productType: json["productType"]??"",
    balance: json["balance"]??0.0,
    show: json["show"]??false,
  );

  Map<String, dynamic> toJson() => {
    "accountId": accountId,
    "title": title,
    "titleBn": titleBn,
    "accNo": accNo,
    "productType": productType,
    "balance": balance,
    "show": show,
  };
}
