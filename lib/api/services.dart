import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/api/handler_helper.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:dio/dio.dart';
import 'package:encrypt/encrypt.dart';

class ServiceHost {
  /*
   *
   * Sign in 
   * 
   */
  static Future<Response> login({dynamic data}) async {
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.logIn,
      data: data,
      type: RequestType.post,
    );
    return response;
  }

  static Future<Response> regNum(String? num) async {
    // final body = {
    //   "applicationId": 0,
    //   "isTest": 0,
    //   "mobileNumber": num,
    // };
    final body = '{"applicationId": 0,  "isTest": 0,  "mobileNumber": "$num"}';

    final encryptedBody =
        '{"data": "${Aes256.encrypt(body, SharedPrefs.read(totp))}"}';
    // '{"applicationId": 0,  "isTest": 0,  "mobileNumber": "$Num"}
    final response = await MethodHandler.helperhandler(
      type: RequestType.post,
      url: DigiCoopAPI.createUser,
      data: encryptedBody,
    );
    return response;
  }

  static Future<Response> getRegion() async {
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.regions,
      type: RequestType.get,
    );
    return response;
  }

  static Future<Response> getSOI() async {
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.SOI,
      type: RequestType.get,
    );
    return response;
  }

  static Future<Response> getNOW() async {
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.NatureWork,
      type: RequestType.get,
    );
    return response;
  }

  static Future<Response> getProvince(regionId) async {
    // final body = {
    //   "id": regionId,
    // };{id}/provinces
    final newURl = "${DigiCoopAPI.province + regionId}/provinces";
    final response = await MethodHandler.helperhandler(
      url: newURl,
      type: RequestType.get,
    );
    return response;
  }

  static Future<Response> getCity(cityId) async {
    // final body = {
    //   "id": regionId,
    // };{id}/provinces
    final newURl = "${DigiCoopAPI.city + cityId}/cities";
    final response = await MethodHandler.helperhandler(
      url: newURl,
      type: RequestType.get,
    );
    return response;
  }

  static Future<Response> getBill(Id) async {
    // final body = {
    //   "id": regionId,
    // };{id}/provinces
    final newURl = "${DigiCoopAPI.bill + Id}/billers?page=1&limit=500";
    final response = await MethodHandler.helperhandler(
      url: newURl,
      type: RequestType.get,
      haveToken: true,
    );
    return response;
  }

  static Future<Response> getBillSearch() async {
    // final body = {
    //   "id": regionId,
    // };{id}/provinces
    final newURl =
        "${DigiCoopAPI.billsearch}/search?searchInput=" "&page=1&limit=500";
    final response = await MethodHandler.helperhandler(
      url: newURl,
      type: RequestType.get,
      haveToken: true,
    );
    return response;
  }

  static Future<Response> getPaymentMethod(categoryId) async {
    // final body = {
    //   "id": regionId,
    // };{id}/provinces
    final newURl = "${DigiCoopAPI.getPaymentMethod + categoryId}/methods";
    final response = await MethodHandler.helperhandler(
      url: newURl,
      type: RequestType.get,
      haveToken: true,
    );
    return response;
  }

  static Future<Response> getBankList() async {
    Map<String, dynamic> parameters = {
      'page': '1',
      'limit': '10',
      'search': '',
    };
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.bankList,
      type: RequestType.get,
      haveToken: true,
      parameters: parameters,
    );
    return response;
  }

  static Future<Response> getBankAllList() async {
    Map<String, dynamic> parameters = {
      'page': '1',
      'limit': '500',
      'search': '',
    };
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.bankList,
      type: RequestType.get,
      haveToken: true,
      parameters: parameters,
    );
    return response;
  }

  static Future<Response> getBankUser() async {
    Map<String, dynamic> parameters = {
      'page': '1',
      'limit': '10',
    };
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.bankUser,
      type: RequestType.get,
      haveToken: true,
      parameters: parameters,
    );
    return response;
  }
}
