// To parse this JSON data, do
//
//     final beneficiaryListModel = beneficiaryListModelFromJson(jsonString);

import 'dart:convert';

List<BeneficiaryListModel> beneficiaryListModelFromJson(String str) => List<BeneficiaryListModel>.from(json.decode(str).map((x) => BeneficiaryListModel.fromJson(x)));

String beneficiaryListModelToJson(List<BeneficiaryListModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeneficiaryListModel {
  int masterBankId;
  MasterBank masterBank;
  int branchId;
  Branch branch;
  int customerId;
  String accountName;
  String accountNumber;
  int status;
  int ledgerRelationId;
  int id;

  BeneficiaryListModel({
    required this.masterBankId,
    required this.masterBank,
    required this.branchId,
    required this.branch,
    required this.customerId,
    required this.accountName,
    required this.accountNumber,
    required this.status,
    required this.ledgerRelationId,
    required this.id,
  });

  factory BeneficiaryListModel.fromJson(Map<String, dynamic> json) => BeneficiaryListModel(
    masterBankId: json["masterBankId"]??0,
    masterBank: json["masterBank"] != null? MasterBank.fromJson(json["masterBank"]) : MasterBank.empty(),
    branchId: json["branchId"]??0,
    branch: json["branch"] != null? Branch.fromJson(json["branch"]) : Branch.empty(),
    customerId: json["customerId"]??0,
    accountName: json["accountName"]??"",
    accountNumber: json["accountNumber"]??"",
    status: json["status"]??0,
    ledgerRelationId: json["ledgerRelationId"]??0,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "masterBankId": masterBankId,
    "masterBank": masterBank.toJson(),
    "branchId": branchId,
    "branch": branch.toJson(),
    "customerId": customerId,
    "accountName": accountName,
    "accountNumber": accountNumber,
    "status": status,
    "ledgerRelationId": ledgerRelationId,
    "id": id,
  };
}

class Branch {
  int masterBankId;
  String branchCode;
  String branchNameEn;
  String branchNameBn;
  String address;
  int id;

  Branch({
    required this.masterBankId,
    required this.branchCode,
    required this.branchNameEn,
    required this.branchNameBn,
    required this.address,
    required this.id,
  });

  factory Branch.empty() => Branch(
      masterBankId: 0, 
      branchCode: "", 
      branchNameEn: "", 
      branchNameBn: "",
      address: "",
      id: 0);


  factory Branch.fromJson(Map<String, dynamic> json) => Branch(
    masterBankId: json["masterBankId"]??0,
    branchCode: json["branchCode"]??"",
    branchNameEn: json["branchNameEn"]??"",
    branchNameBn: json["branchNameBn"]??"",
    address: json["address"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "masterBankId": masterBankId,
    "branchCode": branchCode,
    "branchNameEn": branchNameEn,
    "branchNameBn": branchNameBn,
    "address": address,
    "id": id,
  };
}

class MasterBank {
  String bankName;
  String address;
  int id;

  MasterBank({
    required this.bankName,
    required this.address,
    required this.id,
  });
  factory MasterBank.empty() => MasterBank(
      bankName: "", 
      address: "", 
      id: 0);

  factory MasterBank.fromJson(Map<String, dynamic> json) => MasterBank(
    bankName: json["bankName"]??"",
    address: json["address"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "bankName": bankName,
    "address": address,
    "id": id,
  };
}
