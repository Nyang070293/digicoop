import 'dart:convert';

regionModel backpackingFromJson(String str) =>
    regionModel.fromJson(json.decode(str));

String backpackingToJson(regionModel data) => json.encode(data.toJson());

class regionModel {
  int? statusCode;
  Data? data;

  regionModel({this.statusCode, this.data});

  regionModel.fromJson(Map<String, dynamic> json) {
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
  List<Regions>? regions;

  Data({this.regions});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['regions'] != null) {
      regions = <Regions>[];
      json['regions'].forEach((v) {
        regions!.add(Regions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (regions != null) {
      data['regions'] = regions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Regions {
  int? regionID;
  String? regionName;
  String? description;

  Regions({this.regionID, this.regionName, this.description});

  Regions.fromJson(Map<String, dynamic> json) {
    regionID = json['RegionID'];
    regionName = json['RegionName'];
    description = json['Description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['RegionID'] = regionID;
    data['RegionName'] = regionName;
    data['Description'] = description;
    return data;
  }
}
