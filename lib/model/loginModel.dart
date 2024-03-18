import 'dart:convert';

loginModel backpackingFromJson(String str) =>
    loginModel.fromJson(json.decode(str));

String backpackingToJson(loginModel data) => json.encode(data.toJson());

class loginModel {
  int? statusCode;
  Data? data;

  loginModel({this.statusCode, this.data});

  loginModel.fromJson(Map<String, dynamic> json) {
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
  String? userCode;
  String? secretKey;
  String? personCode;
  String? walletCode;
  String? merchantCode;
  int? roleId;
  int? applicationId;
  List<RoleAccess>? roleAccess;
  int? isMigrated;
  String? accessToken;
  String? refreshToken;
  String? mobileSecretKey;

  Data(
      {this.userCode,
      this.secretKey,
      this.personCode,
      this.walletCode,
      this.merchantCode,
      this.roleId,
      this.applicationId,
      this.roleAccess,
      this.isMigrated,
      this.accessToken,
      this.refreshToken,
      this.mobileSecretKey});

  Data.fromJson(Map<String, dynamic> json) {
    userCode = json['userCode'];
    secretKey = json['secretKey'];
    personCode = json['personCode'];
    walletCode = json['walletCode'];
    merchantCode = json['merchantCode'];
    roleId = json['roleId'];
    applicationId = json['applicationId'];
    if (json['roleAccess'] != null) {
      roleAccess = <RoleAccess>[];
      json['roleAccess'].forEach((v) {
        roleAccess!.add(RoleAccess.fromJson(v));
      });
    }
    isMigrated = json['isMigrated'];
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
    mobileSecretKey = json['mobileSecretKey'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userCode'] = userCode;
    data['secretKey'] = secretKey;
    data['personCode'] = personCode;
    data['walletCode'] = walletCode;
    data['merchantCode'] = merchantCode;
    data['roleId'] = roleId;
    data['applicationId'] = applicationId;
    if (roleAccess != null) {
      data['roleAccess'] = roleAccess!.map((v) => v.toJson()).toList();
    }
    data['isMigrated'] = isMigrated;
    data['accessToken'] = accessToken;
    data['refreshToken'] = refreshToken;
    data['mobileSecretKey'] = mobileSecretKey;
    return data;
  }
}

class RoleAccess {
  int? menuID;
  String? uRL;
  int? permission;

  RoleAccess({this.menuID, this.uRL, this.permission});

  RoleAccess.fromJson(Map<String, dynamic> json) {
    menuID = json['MenuID'];
    uRL = json['URL'];
    permission = json['Permission'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['MenuID'] = menuID;
    data['URL'] = uRL;
    data['Permission'] = permission;
    return data;
  }
}
