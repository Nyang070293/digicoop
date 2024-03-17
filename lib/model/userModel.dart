import 'dart:convert';

createUserModel backpackingFromJson(String str) =>
    createUserModel.fromJson(json.decode(str));

String backpackingToJson(createUserModel data) => json.encode(data.toJson());

class createUserModel {
  int? statusCode;
  Data? data;

  createUserModel({this.statusCode, this.data});

  createUserModel.fromJson(Map<String, dynamic> json) {
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
  String? personCode;
  String? mobileNumber;
  int? applicationId;
  bool? isExisting;

  Data(
      {this.personCode,
      this.mobileNumber,
      this.applicationId,
      this.isExisting});

  Data.fromJson(Map<String, dynamic> json) {
    personCode = json['personCode'];
    mobileNumber = json['mobileNumber'];
    applicationId = json['applicationId'];
    isExisting = json['isExisting'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['personCode'] = personCode;
    data['mobileNumber'] = mobileNumber;
    data['applicationId'] = applicationId;
    data['isExisting'] = isExisting;
    return data;
  }
}
