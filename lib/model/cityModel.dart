import 'dart:convert';

cityModel backpackingFromJson(String str) =>
    cityModel.fromJson(json.decode(str));

String backpackingToJson(cityModel data) => json.encode(data.toJson());

class cityModel {
  int? statusCode;
  Data? data;

  cityModel({this.statusCode, this.data});

  cityModel.fromJson(Map<String, dynamic> json) {
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
  List<Cities>? cities;

  Data({this.cities});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['cities'] != null) {
      cities = <Cities>[];
      json['cities'].forEach((v) {
        cities!.add(Cities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cities != null) {
      data['cities'] = cities!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cities {
  int? cityID;
  String? city;
  int? provinceID;

  Cities({this.cityID, this.city, this.provinceID});

  Cities.fromJson(Map<String, dynamic> json) {
    cityID = json['CityID'];
    city = json['City'];
    provinceID = json['ProvinceID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CityID'] = cityID;
    data['City'] = city;
    data['ProvinceID'] = provinceID;
    return data;
  }
}
