import 'dart:convert';

bankUserModel backpackingFromJson(String str) =>
    bankUserModel.fromJson(json.decode(str));

String backpackingToJson(bankUserModel data) => json.encode(data.toJson());

class bankUserModel {
  int? statusCode;
  Data? data;

  bankUserModel({this.statusCode, this.data});

  bankUserModel.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.banks != null) {
      data['banks'] = this.banks!.map((v) => v.toJson()).toList();
    }
    data['maxRecord'] = this.maxRecord;
    return data;
  }
}

class Banks {
  String? bankCode;
  int? institutionID;
  int? aggregatorID;
  String? bankAccountName;
  String? alternateName;
  String? bankName;
  int? bankAccountType;
  String? bankAccountNumber;
  String? bankLogo;

  Banks(
      {this.bankCode,
      this.institutionID,
      this.aggregatorID,
      this.bankAccountName,
      this.alternateName,
      this.bankName,
      this.bankAccountType,
      this.bankAccountNumber,
      this.bankLogo});

  Banks.fromJson(Map<String, dynamic> json) {
    bankCode = json['bankCode'];
    institutionID = json['institutionID'];
    aggregatorID = json['aggregatorID'];
    bankAccountName = json['bankAccountName'];
    alternateName = json['alternateName'];
    bankName = json['bankName'];
    bankAccountType = json['bankAccountType'];
    bankAccountNumber = json['bankAccountNumber'];
    bankLogo = json['bankLogo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['bankCode'] = this.bankCode;
    data['institutionID'] = this.institutionID;
    data['aggregatorID'] = this.aggregatorID;
    data['bankAccountName'] = this.bankAccountName;
    data['alternateName'] = this.alternateName;
    data['bankName'] = this.bankName;
    data['bankAccountType'] = this.bankAccountType;
    data['bankAccountNumber'] = this.bankAccountNumber;
    data['bankLogo'] = this.bankLogo;
    return data;
  }
}
