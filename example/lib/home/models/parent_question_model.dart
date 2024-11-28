// To parse this JSON data, do
//
//     final parentQuestionModel = parentQuestionModelFromJson(jsonString);

import 'dart:convert';

List<ParentQuestionModel> parentQuestionModelFromJson(String str) => List<ParentQuestionModel>.from(json.decode(str).map((x) => ParentQuestionModel.fromJson(x)));

String parentQuestionModelToJson(List<ParentQuestionModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ParentQuestionModel {
  int questionId;
  String question;
  int qType;
  int answerOptionId;
  String inputAnswer;
  List<ParentOption> options;

  ParentQuestionModel({
    required this.questionId,
    required this.question,
    required this.qType,
    required this.answerOptionId,
    required this.inputAnswer,
    required this.options,
  });

  factory ParentQuestionModel.fromJson(Map<String, dynamic> json) => ParentQuestionModel(
    questionId: json["questionId"]??0,
    question: json["question"]??"",
    qType: json["qType"]??0,
    answerOptionId: json["answerOptionId"]??0,
    inputAnswer: json["inputAnswer"]??"",
    options: json["options"] == null? [] : List<ParentOption>.from(json["options"].map((x) => ParentOption.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "questionId": questionId,
    "question": question,
    "qType": qType,
    "answerOptionId": answerOptionId,
    "inputAnswer": inputAnswer,
    "options": List<dynamic>.from(options.map((x) => x.toJson())),
  };
}

class ParentOption {
  int questionId;
  String answer;
  int answerScoreId;
  int id;

  ParentOption({
    required this.questionId,
    required this.answer,
    required this.answerScoreId,
    required this.id,
  });

  factory ParentOption.fromJson(Map<String, dynamic> json) => ParentOption(
    questionId: json["questionId"]??0,
    answer: json["answer"]??"",
    answerScoreId: json["answerScoreId"]??0,
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "questionId": questionId,
    "answer": answer,
    "answerScoreId": answerScoreId,
    "id": id,
  };
}
