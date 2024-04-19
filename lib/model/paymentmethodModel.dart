import 'dart:convert';

paymentmethodModel backpackingFromJson(String str) =>
    paymentmethodModel.fromJson(json.decode(str));

String backpackingToJson(paymentmethodModel data) => json.encode(data.toJson());

class paymentmethodModel {
  int? statusCode;
  Data? data;

  paymentmethodModel({this.statusCode, this.data});

  paymentmethodModel.fromJson(Map<String, dynamic> json) {
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
  List<PaymentMethod>? paymentMethod;

  Data({this.paymentMethod});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['paymentMethod'] != null) {
      paymentMethod = <PaymentMethod>[];
      json['paymentMethod'].forEach((v) {
        paymentMethod!.add(PaymentMethod.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (paymentMethod != null) {
      data['paymentMethod'] = paymentMethod!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentMethod {
  int? paymentCategoryID;
  String? paymentCategoryName;
  String? logo;
  List<PaymentMethodDetails>? paymentMethodDetails;

  PaymentMethod(
      {this.paymentCategoryID,
      this.paymentCategoryName,
      this.logo,
      this.paymentMethodDetails});

  PaymentMethod.fromJson(Map<String, dynamic> json) {
    paymentCategoryID = json['paymentCategoryID'];
    paymentCategoryName = json['paymentCategoryName'];
    logo = json['logo'];
    if (json['paymentMethod'] != null) {
      paymentMethodDetails = <PaymentMethodDetails>[];
      json['paymentMethod'].forEach((v) {
        paymentMethodDetails!.add(PaymentMethodDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paymentCategoryID'] = paymentCategoryID;
    data['paymentCategoryName'] = paymentCategoryName;
    data['logo'] = logo;
    if (paymentMethodDetails != null) {
      data['paymentMethod'] =
          paymentMethodDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PaymentMethodDetails {
  int? paymentMethodID;
  int? institutionAggregatorID;
  int? isActive;
  int? institutionID;
  String? aggregatorGivenCode;
  String? name;
  int? feeType;
  int? feeAmount;
  int? aggregatorID;
  String? aggregatorName;
  String? logo;

  PaymentMethodDetails(
      {this.paymentMethodID,
      this.institutionAggregatorID,
      this.isActive,
      this.institutionID,
      this.aggregatorGivenCode,
      this.name,
      this.feeType,
      this.feeAmount,
      this.aggregatorID,
      this.aggregatorName,
      this.logo});

  PaymentMethodDetails.fromJson(Map<String, dynamic> json) {
    paymentMethodID = json['paymentMethodID'];
    institutionAggregatorID = json['institutionAggregatorID'];
    isActive = json['isActive'];
    institutionID = json['institutionID'];
    aggregatorGivenCode = json['aggregatorGivenCode'];
    name = json['name'];
    feeType = json['feeType'];
    feeAmount = json['feeAmount'];
    aggregatorID = json['aggregatorID'];
    aggregatorName = json['aggregatorName'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['paymentMethodID'] = paymentMethodID;
    data['institutionAggregatorID'] = institutionAggregatorID;
    data['isActive'] = isActive;
    data['institutionID'] = institutionID;
    data['aggregatorGivenCode'] = aggregatorGivenCode;
    data['name'] = name;
    data['feeType'] = feeType;
    data['feeAmount'] = feeAmount;
    data['aggregatorID'] = aggregatorID;
    data['aggregatorName'] = aggregatorName;
    data['logo'] = logo;
    return data;
  }
}
