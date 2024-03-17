import 'package:another_flushbar/flushbar.dart';
import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Flush {
  static flushMessage({String? title, String? message, IconData? icons}) {
    Flushbar(
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(10),
      backgroundColor: dashText,
      icon: Icon(
        icons ?? Icons.signal_wifi_connected_no_internet_4_outlined,
        color: primaryColor,
        size: 17.sp,
      ),
      titleText: TextPoppins(
        label: title ?? "No Internet Connection",
        fontSize: 12.sp,
        align: TextAlign.left,
        bold: true,
        textColor: primaryColor,
      ),
      messageText: TextPoppins(
        label: message ??
            "Something went wrong. Please check your internet connection.",
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
