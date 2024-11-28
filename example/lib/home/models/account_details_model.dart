// To parse this JSON data, do
// final accountDetailsModel = accountDetailsModelFromJson(jsonString);

import 'dart:convert';

AccountDetailsModel accountDetailsModelFromJson(String str) => AccountDetailsModel.fromJson(json.decode(str));

String accountDetailsModelToJson(AccountDetailsModel data) => json.encode(data.toJson());

class AccountDetailsModel {
  List<KycCustomerData> kycCustomerData;
  List<KYcFormNominee> kYcFormNominees;

  AccountDetailsModel({
    required this.kycCustomerData,
    required this.kYcFormNominees,
  });

  factory AccountDetailsModel.empty() => AccountDetailsModel(
    kycCustomerData:[],
    kYcFormNominees:[],
  );

  factory AccountDetailsModel.fromJson(Map<String, dynamic> json) => AccountDetailsModel(
    kycCustomerData: json["kycData"]!=null?List<KycCustomerData>.from(json["kycData"].map((x) => KycCustomerData.fromJson(x))):[],
    kYcFormNominees:json["kYCFormNominees"]!=null? List<KYcFormNominee>.from(json["kYCFormNominees"].map((x) => KYcFormNominee.fromJson(x))):[],
  );

  Map<String, dynamic> toJson() => {
    "kycData": List<dynamic>.from(kycCustomerData.map((x) => x.toJson())),
    "kYCFormNominees": List<dynamic>.from(kYcFormNominees.map((x) => x.toJson())),
  };
}

class KycCustomerData {
  int customeRAccountId;
  int customerSId;
  String accounTNo;
  String accounTTitle;
  String currency;
  String reason;
  String customeRNameBan;
  String customeRNameEng;
  double openinGBalance;

  KycCustomerData({
    required this.customeRAccountId,
    required this.customerSId,
    required this.accounTNo,
    required this.accounTTitle,
    required this.currency,
    required this.reason,
    required this.customeRNameBan,
    required this.customeRNameEng,
    required this.openinGBalance,
  });

  factory KycCustomerData.fromJson(Map<String, dynamic> json) => KycCustomerData(
    customeRAccountId: json["customeR_ACCOUNT_ID"]??0,
    customerSId: json["customerS_ID"]??0,
    accounTNo: json["accounT_NO"]??"",
    accounTTitle: json["accounT_TITLE"]??"",
    currency: json["currency"]??"",
    reason: json["reason"]??"",
    customeRNameBan: json["customeR_NAME_BAN"]??"",
    customeRNameEng: json["customeR_NAME_ENG"]??"",
    openinGBalance: json["openinG_BALANCE"]??"",
  );

  Map<String, dynamic> toJson() => {
    "customeR_ACCOUNT_ID": customeRAccountId,
    "customerS_ID": customerSId,
    "accounT_NO": accounTNo,
    "accounT_TITLE": accounTTitle,
    "currency": currency,
    "reason": reason,
    "customeR_NAME_BAN": customeRNameBan,
    "customeR_NAME_ENG": customeRNameEng,
    "openinG_BALANCE": openinGBalance,
  };
}

class KYcFormNominee {
  int customerSId;
  String name;
  String fatheRName;
  String motheRName;
  String spousEName;
  String datEOfBirth;
  String presenTAddress;
  String permanenTAddress;
  String nid;
  String birtHCertificateNo;
  String passport;
  String etin;
  String drivinGLisence;
  String photOPath;
  String signaturEPath;
  double sharinGRate;

  KYcFormNominee({
    required this.customerSId,
    required this.name,
    required this.fatheRName,
    required this.motheRName,
    required this.spousEName,
    required this.datEOfBirth,
    required this.presenTAddress,
    required this.permanenTAddress,
    required this.nid,
    required this.birtHCertificateNo,
    required this.passport,
    required this.etin,
    required this.drivinGLisence,
    required this.photOPath,
    required this.signaturEPath,
    required this.sharinGRate,
  });

  factory KYcFormNominee.fromJson(Map<String, dynamic> json) => KYcFormNominee(
    customerSId: json["customerS_ID"]??0,
    name: json["name"]??"",
    fatheRName: json["fatheR_NAME"]??"",
    motheRName: json["motheR_NAME"]??"",
    spousEName: json["spousE_NAME"]??"",
    datEOfBirth: json["datE_OF_BIRTH"]??"",
    presenTAddress: json["presenT_ADDRESS"]??"",
    permanenTAddress: json["permanenT_ADDRESS"]??"",
    nid: json["nid"]??"",
    birtHCertificateNo: json["birtH_CERTIFICATE_NO"]??"",
    passport: json["passport"]??"",
    etin: json["etin"]??"",
    drivinGLisence: json["drivinG_LISENCE"]??"",
    photOPath: json["photO_PATH"]??"",
    signaturEPath: json["signaturE_PATH"]??"",
    sharinGRate: json["sharinG_RATE"]??0.0,
  );

  Map<String, dynamic> toJson() => {
    "customerS_ID": customerSId,
    "name": name,
    "fatheR_NAME": fatheRName,
    "motheR_NAME": motheRName,
    "spousE_NAME": spousEName,
    "datE_OF_BIRTH": datEOfBirth,
    "presenT_ADDRESS": presenTAddress,
    "permanenT_ADDRESS": permanenTAddress,
    "nid": nid,
    "birtH_CERTIFICATE_NO": birtHCertificateNo,
    "passport": passport,
    "etin": etin,
    "drivinG_LISENCE": drivinGLisence,
    "photO_PATH": photOPath,
    "signaturE_PATH": signaturEPath,
    "sharinG_RATE": sharinGRate,
  };
}


