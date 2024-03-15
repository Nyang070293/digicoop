import 'dart:convert';

provinceModel backpackingFromJson(String str) =>
    provinceModel.fromJson(json.decode(str));

String backpackingToJson(provinceModel data) => json.encode(data.toJson());

class provinceModel {
  int? statusCode;
  Data? data;

  provinceModel({this.statusCode, this.data});

  provinceModel.fromJson(Map<String, dynamic> json) {
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
  List<Provinces>? provinces;

  Data({this.provinces});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['provinces'] != null) {
      provinces = <Provinces>[];
      json['provinces'].forEach((v) {
        provinces!.add(Provinces.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (provinces != null) {
      data['provinces'] = provinces!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Provinces {
  int? provinceID;
  String? province;
  int? regionID;

  Provinces({this.provinceID, this.province, this.regionID});

  Provinces.fromJson(Map<String, dynamic> json) {
    provinceID = json['ProvinceID'];
    province = json['Province'];
    regionID = json['RegionID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ProvinceID'] = provinceID;
    data['Province'] = province;
    data['RegionID'] = regionID;
    return data;
  }
}
