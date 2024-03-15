import 'dart:convert';
import 'dart:developer';

import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/api/handler_helper.dart';
import 'package:dio/dio.dart';

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

  static Future<Response> getRegion() async {
    final response = await MethodHandler.helperhandler(
      url: DigiCoopAPI.regions,
      type: RequestType.get,
    );

    return response;
  }
}
