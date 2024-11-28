// To parse this JSON data, do
//
//     final creditScoreModel = creditScoreModelFromJson(jsonString);

import 'dart:convert';

CreditScoreModel creditScoreModelFromJson(String str) => CreditScoreModel.fromJson(json.decode(str));

String creditScoreModelToJson(CreditScoreModel data) => json.encode(data.toJson());

class CreditScoreModel {
  double score;
  String scoreRemarks;
  double totalCashInScore;
  double totalCashOutScore;
  int clientId;
  int id;

  CreditScoreModel({
    required this.score,
    required this.scoreRemarks,
    required this.totalCashInScore,
    required this.totalCashOutScore,
    required this.clientId,
    required this.id,
  });


  factory CreditScoreModel.empty() => CreditScoreModel(
      score: 0.0,
      scoreRemarks: "",
      totalCashInScore: 0.0,
      totalCashOutScore: 0.0,
      clientId: 0,
      id: 0);

  factory CreditScoreModel.fromJson(Map<String, dynamic> json) => CreditScoreModel(
    score: json["score"]??0,
    scoreRemarks: json["scoreRemarks"]??"",
    totalCashInScore: json["totalCashInScore"]??0.0,
    totalCashOutScore: json["totalCashOutScore"]??0.0,
    clientId: json["clientId"]??0,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "score": score,
    "scoreRemarks": scoreRemarks,
    "totalCashInScore": totalCashInScore,
    "totalCashOutScore": totalCashOutScore,
    "clientId": clientId,
    "id": id,
  };
}
