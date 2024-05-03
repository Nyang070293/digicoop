import 'dart:convert';

bankModel backpackingFromJson(String str) =>
    bankModel.fromJson(json.decode(str));

String backpackingToJson(bankModel data) => json.encode(data.toJson());

class bankModel {
  int? statusCode;
  Data? data;

  bankModel({this.statusCode, this.data});

  bankModel.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['statusCode'] = statusCode;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Banks>? banks;
  int? maxRecord;

  Data({this.banks, this.maxRecord});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['banks'] != null) {
      banks = <Banks>[];
      json['banks'].forEach((v) {
        banks!.add(Banks.fromJson(v));
      });
    }
    maxRecord = json['maxRecord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (banks != null) {
      data['banks'] = banks!.map((v) => v.toJson()).toList();
    }
    data['maxRecord'] = maxRecord;
    return data;
  }
}

class Banks {
  int? institutionID;
  String? bankName;
  String? bankCode;
  int? aggregatorID;
  String? primaryLogo;
  String? secondaryLogo;

  Banks(
      {this.institutionID,
      this.bankName,
      this.bankCode,
      this.aggregatorID,
      this.primaryLogo,
      this.secondaryLogo});

  Banks.fromJson(Map<String, dynamic> json) {
    institutionID = json['institutionID'];
    bankName = json['bankName'];
    bankCode = json['bankCode'];
    aggregatorID = json['aggregatorID'];
    primaryLogo = json['primaryLogo'];
    secondaryLogo = json['secondaryLogo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['institutionID'] = institutionID;
    data['bankName'] = bankName;
    data['bankCode'] = bankCode;
    data['aggregatorID'] = aggregatorID;
    data['primaryLogo'] = primaryLogo;
    data['secondaryLogo'] = secondaryLogo;
    return data;
  }
}
