import 'dart:async';
import 'dart:developer';
import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/widgets/text.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum RequestType { post, get, delete }

class MethodHandler {
  static final d = dio.Dio();
  static Future<dio.Response> helperhandler(
      {String? url, dynamic data, bool? haveToken, RequestType? type}) async {
    log("url - $url", name: "helperhandler");
    log("data - $data", name: "helperhandler");
    log("haveToken - $haveToken", name: "helperhandler");
    log("RequestType - ${type?.name}", name: "helperhandler");
    //tokenuser
    //log("tokenuser - ${SharedPrefs.read(tokenuser)}", name: "helperhandler");
    //log("Authorization Bearer ${SharedPrefs.read(tokenuser)}",
    //name: "helperhandler");
    KnowIfHaveInternet(url: url!);
    if (type == RequestType.post) {
      /// POST
      try {
        final response = await d.post(
          url,
          data: data,
          options: dio.Options(
            headers: haveToken == true
                ? {
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                    "Authorization": "Bearer "//${SharedPrefs.read(tokenuser)}"
                  }
                : {},
          ),
        );

        return response;
      } on dio.DioException catch (e) {
        return e.response!;
      }
    } else if (type == RequestType.delete) {
      try {
        final response = await d.delete(
          url,
          options: dio.Options(
            headers: haveToken == true
                ? {
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                    "Authorization": "Bearer"// ${SharedPrefs.read(tokenuser)}"
                  }
                : {},
          ),
        );
        return response;
      } on dio.DioException catch (e) {
        return e.response!;
      }
    } else {
      /// GET
      try {
        final response = await d.get(
          url,
          options: dio.Options(
            headers: haveToken == true
                ? {
                    "Content-Type": "application/json",
                    "Accept": "application/json",
                    "Authorization": "Bearer "//${SharedPrefs.read(tokenuser)}"
                  }
                : {},
          ),
        );
        log(response.toString(), name: "handler_helper.dart");
        return response;
      } on dio.DioException catch (e) {
        log(e.response?.toString() ?? "", name: "handler_helper.dart");
        return e.response!;
      }
    }
  }

  static Future<void> KnowIfHaveInternet({String? url}) async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {}
    } on SocketException catch (_) {
      Flushbar(
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(8),
        borderRadius: BorderRadius.circular(10),
        backgroundColor: dashText,
        icon: Icon(
          Icons.signal_wifi_connected_no_internet_4_outlined,
          color: primaryColor,
          size: 17.sp,
        ),
        titleText: TextPoppins(
          label: "No Internet Connection",
          fontSize: 12.sp,
          align: TextAlign.left,
          bold: true,
          textColor: primaryColor,
        ),
        messageText: TextPoppins(
          label:
              "Something went wrong. Please check your internet connection. ${_.osError ?? ""}",
          fontSize: 12.sp,
          align: TextAlign.left,
          textColor: white,
          bold: true,
          maxLenght: 20,
        ),
        leftBarIndicatorColor: primaryColor,
      ).show(parentKey.currentContext!);
    } on TimeoutException catch (_) {
      Flushbar(
        duration: const Duration(seconds: 3),
        margin: const EdgeInsets.all(8),
        borderRadius: BorderRadius.circular(10),
        backgroundColor: dashText,
        icon: Icon(
          Icons.timer_outlined,
          color: primaryColor,
          size: 17.sp,
        ),
        titleText: TextPoppins(
          label: "Request Timeout",
          fontSize: 12.sp,
          align: TextAlign.left,
          bold: true,
          textColor: primaryColor,
        ),
        messageText: TextPoppins(
          label: "Please check your internet connection.}",
          fontSize: 12.sp,
          align: TextAlign.left,
          textColor: white,
          bold: true,
          maxLenght: 20,
        ),
        leftBarIndicatorColor: primaryColor,
      ).show(parentKey.currentContext!);
    }
  }
}
