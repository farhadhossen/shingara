// To parse this JSON data, do
//
//     final dashboardLoanListModel = dashboardLoanListModelFromJson(jsonString);

import 'dart:convert';

List<dashboardLoanListModel> dashboardLoanListModelFromJson(String str) => List<dashboardLoanListModel>.from(json.decode(str).map((x) => dashboardLoanListModel.fromJson(x)));

String dashboardLoanListModelToJson(List<dashboardLoanListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class dashboardLoanListModel {
  int customersId;
  String accountTilte;
  String accountTilteBn;
  double openingBalance;
  int ledgerRelationId;
  String customerAccountNo;
  String accountType;
  int leadGenerationId;
  LeadGeneration leadGeneration;
  int accTypeId;
  int id;
  String createdAt;

  dashboardLoanListModel({
    required this.customersId,
    required this.accountTilte,
    required this.accountTilteBn,
    required this.openingBalance,
    required this.ledgerRelationId,
    required this.customerAccountNo,
    required this.accountType,
    required this.leadGenerationId,
    required this.leadGeneration,
    required this.accTypeId,
    required this.id,
    required this.createdAt,
  });

  factory dashboardLoanListModel.fromJson(Map<String, dynamic> json) => dashboardLoanListModel(
    customersId: json["customersId"]??0,
    accountTilte: json["accountTilte"]??"",
    accountTilteBn: json["accountTilteBn"]??"",
    openingBalance: json["openingBalance"]??0.0,
    ledgerRelationId: json["ledgerRelationId"]??0,
    customerAccountNo: json["customerAccountNo"]??"",
    accountType: json["accountType"]??"",
    leadGenerationId: json["leadGenerationId"]??0,
    leadGeneration: json["leadGeneration"] == null? LeadGeneration.empty() : LeadGeneration.fromJson(json["leadGeneration"]),
    accTypeId: json["accTypeId"]??0,
    id: json["id"]??0,
    createdAt: json["createdAt"]??"",
  );

  Map<String, dynamic> toJson() => {
    "customersId": customersId,
    "accountTilte": accountTilte,
    "accountTilteBn": accountTilteBn,
    "openingBalance": openingBalance,
    "ledgerRelationId": ledgerRelationId,
    "customerAccountNo": customerAccountNo,
    "accountType": accountType,
    "leadGenerationId": leadGenerationId,
    "leadGeneration": leadGeneration.toJson(),
    "accTypeId": accTypeId,
    "id": id,
  };
}

class LeadGeneration {
  String leadCode;
  int customerId;
  int loanProductId;
  LoanProduct loanProduct;
  int isComplete;
  double loanAmount;
  int statusInfoId;
  int id;

  LeadGeneration({
    required this.leadCode,
    required this.customerId,
    required this.loanProductId,
    required this.loanProduct,
    required this.isComplete,
    required this.loanAmount,
    required this.statusInfoId,
    required this.id,
  });

  factory LeadGeneration.empty() => LeadGeneration(
      leadCode: "",
      customerId: 0,
      loanProductId: 0,
      loanProduct: LoanProduct.empty(),
      isComplete: 0,
      loanAmount: 0.0,
      statusInfoId: 0,
      id: 0);

  factory LeadGeneration.fromJson(Map<String, dynamic> json) => LeadGeneration(
    leadCode: json["leadCode"]??"",
    customerId: json["customerId"]??0,
    loanProductId: json["loanProductId"]??0,
    loanProduct: json["loanProduct"] ==null? LoanProduct.empty() : LoanProduct.fromJson(json["loanProduct"]),
    isComplete: json["isComplete"]??0,
    loanAmount: json["loanAmount"]??0.0,
    statusInfoId: json["statusInfoId"]??0,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "leadCode": leadCode,
    "customerId": customerId,
    "loanProductId": loanProductId,
    "loanProduct": loanProduct.toJson(),
    "isComplete": isComplete,
    "loanAmount": loanAmount,
    "statusInfoId": statusInfoId,
    "id": id,
  };
}

class LoanProduct {
  String name;
  String code;
  int id;

  LoanProduct({
    required this.name,
    required this.code,
    required this.id,
  });

  factory LoanProduct.empty() => LoanProduct(name: "", code: "", id: 0);

  factory LoanProduct.fromJson(Map<String, dynamic> json) => LoanProduct(
    name: json["name"]??"",
    code: json["code"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "code": code,
    "id": id,
  };
}
