// To parse this JSON data, do
//
//     final userInfoModel = userInfoModelFromJson(jsonString);

import 'dart:convert';

UserInfoModel userInfoModelFromJson(String str) => UserInfoModel.fromJson(json.decode(str));

String userInfoModelToJson(UserInfoModel data) => json.encode(data.toJson());

class UserInfoModel {
  String clientCode;
  String clientNameEg;
  String clientNameBn;
  String fatherNameEg;
  String fatherNameBn;
  String motherNameEg;
  String motherNameBn;
  String dateOfBirth;
  String mobileNo;
  String email;
  String nidNo;
  String maritalStatus;
  String spouseNameEg;
  String spouseNameBn;
  String spouseMobileNo;
  String district;
  String upazila;
  String gender;
  String photoUrl;
  String applicationUserId;
  String presentAddress;
  String permanentAddress;
  int score;
  String firstName;
  String lastName;
  int id;

  UserInfoModel({
    required this.clientCode,
    required this.clientNameEg,
    required this.clientNameBn,
    required this.fatherNameEg,
    required this.fatherNameBn,
    required this.motherNameEg,
    required this.motherNameBn,
    required this.dateOfBirth,
    required this.mobileNo,
    required this.email,
    required this.nidNo,
    required this.maritalStatus,
    required this.spouseNameEg,
    required this.spouseNameBn,
    required this.spouseMobileNo,
    required this.district,
    required this.upazila,
    required this.gender,
    required this.photoUrl,
    required this.applicationUserId,
    required this.presentAddress,
    required this.permanentAddress,
    required this.score,
    required this.firstName,
    required this.lastName,
    required this.id,
  });

  factory UserInfoModel.empty() => UserInfoModel(
      clientCode: "", clientNameEg: "", clientNameBn: "", fatherNameEg: "", fatherNameBn: "", motherNameEg: "", motherNameBn: "", dateOfBirth: "", mobileNo: "",
      email: "", nidNo: "", maritalStatus: "", spouseNameEg: "", spouseNameBn: "", spouseMobileNo: "", district: "", upazila: "", gender: "", photoUrl: "",
      applicationUserId: "", presentAddress: "", permanentAddress: "", score: 0, firstName: "", lastName: "", id: 0);

  factory UserInfoModel.fromJson(Map<String, dynamic> json) => UserInfoModel(
    clientCode: json["clientCode"]??"",
    clientNameEg: json["clientNameEg"]??"",
    clientNameBn: json["clientNameBn"]??"",
    fatherNameEg: json["fatherNameEg"]??"",
    fatherNameBn: json["fatherNameBn"]??"",
    motherNameEg: json["motherNameEg"]??"",
    motherNameBn: json["motherNameBn"]??"",
    dateOfBirth: json["dateOfBirth"]??"",
    mobileNo: json["mobileNo"]??"",
    email: json["email"]??"",
    nidNo: json["nidNo"]??"",
    maritalStatus: json["maritalStatus"]??"",
    spouseNameEg: json["spouseNameEg"]??"",
    spouseNameBn: json["spouseNameBn"]??"",
    spouseMobileNo: json["spouseMobileNo"]??"",
    district: json["district"]??"",
    upazila: json["upazila"]??"",
    gender: json["gender"]??"",
    photoUrl: json["photoUrl"]??"",
    applicationUserId: json["applicationUserId"]??"",
    presentAddress: json["presentAddress"]??"",
    permanentAddress: json["permanentAddress"]??"",
    score: json["score"]??0,
    firstName: json["firstName"]??"",
    lastName: json["lastName"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "clientCode": clientCode,
    "clientNameEg": clientNameEg,
    "clientNameBn": clientNameBn,
    "fatherNameEg": fatherNameEg,
    "fatherNameBn": fatherNameBn,
    "motherNameEg": motherNameEg,
    "motherNameBn": motherNameBn,
    "dateOfBirth": dateOfBirth,
    "mobileNo": mobileNo,
    "email": email,
    "nidNo": nidNo,
    "maritalStatus": maritalStatus,
    "spouseNameEg": spouseNameEg,
    "spouseNameBn": spouseNameBn,
    "spouseMobileNo": spouseMobileNo,
    "district": district,
    "upazila": upazila,
    "gender": gender,
    "photoUrl": photoUrl,
    "applicationUserId": applicationUserId,
    "presentAddress": presentAddress,
    "permanentAddress": permanentAddress,
    "score": score,
    "firstName": firstName,
    "lastName": lastName,
    "id": id,
  };
}
