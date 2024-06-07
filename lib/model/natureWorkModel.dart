import 'dart:convert';

natureWorkModel natureWorkFromJson(String str) =>
    natureWorkModel.fromJson(json.decode(str));

String natureWorkToJson(natureWorkModel data) => json.encode(data.toJson());

class natureWorkModel {
  int? statusCode;
  Data? data;

  natureWorkModel({this.statusCode, this.data});

  natureWorkModel.fromJson(Map<String, dynamic> json) {
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
  List<NatureOfWork>? natureOfWork;

  Data({this.natureOfWork});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['natureOfWork'] != null) {
      natureOfWork = <NatureOfWork>[];
      json['natureOfWork'].forEach((v) {
        natureOfWork!.add(NatureOfWork.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (natureOfWork != null) {
      data['natureOfWork'] = natureOfWork!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NatureOfWork {
  int? natureOfWorkID;
  String? name;

  NatureOfWork({this.natureOfWorkID, this.name});

  NatureOfWork.fromJson(Map<String, dynamic> json) {
    natureOfWorkID = json['natureOfWorkID'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['natureOfWorkID'] = natureOfWorkID;
    data['name'] = name;
    return data;
  }
}
