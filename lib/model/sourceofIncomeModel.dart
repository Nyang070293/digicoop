import 'dart:convert';

sourceofIncomeModel backpackingFromJson(String str) =>
    sourceofIncomeModel.fromJson(json.decode(str));

String backpackingToJson(sourceofIncomeModel data) =>
    json.encode(data.toJson());

class sourceofIncomeModel {
  int? statusCode;
  Data? data;

  sourceofIncomeModel({this.statusCode, this.data});

  sourceofIncomeModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<SourceOfIncome>? sourceOfIncome;

  Data({this.sourceOfIncome});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sourceOfIncome'] != null) {
      sourceOfIncome = <SourceOfIncome>[];
      json['sourceOfIncome'].forEach((v) {
        sourceOfIncome!.add(SourceOfIncome.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sourceOfIncome != null) {
      data['sourceOfIncome'] = sourceOfIncome!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SourceOfIncome {
  int? sourceOfIncomeID;
  String? name;

  SourceOfIncome({this.sourceOfIncomeID, this.name});

  SourceOfIncome.fromJson(Map<String, dynamic> json) {
    sourceOfIncomeID = json['sourceOfIncomeID'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['sourceOfIncomeID'] = sourceOfIncomeID;
    data['name'] = name;
    return data;
  }
}
