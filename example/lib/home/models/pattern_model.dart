// To parse this JSON data, do
//
//     final patternModel = patternModelFromJson(jsonString);

import 'dart:convert';

List<PatternModel> patternModelFromJson(String str) => List<PatternModel>.from(json.decode(str).map((x) => PatternModel.fromJson(x)));

String patternModelToJson(List<PatternModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PatternModel {
  String headerName;
  String headerPattern;
  int id;

  PatternModel({
    required this.headerName,
    required this.headerPattern,
    required this.id,
  });

  factory PatternModel.fromJson(Map<String, dynamic> json) => PatternModel(
    headerName: json["headerName"]??"",
    headerPattern: json["headerPattern"]??"",
    id: json["id"]??0,
  );

  Map<String, dynamic> toJson() => {
    "headerName": headerName,
    "headerPattern": headerPattern,
    "id": id,
  };
}
