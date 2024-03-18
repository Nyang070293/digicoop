import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/widgets/button_with_label.dart';
import 'package:digicoop/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DialogCustom {
  static Future<void> dialog(
      {BuildContext? context,
      String? title,
      String? message,
      String? titleButton,
      Function()? press,
      double? textTitleSize,
      TextAlign? alignment}) {
    return showGeneralDialog(
        context: context!,
        barrierColor: const Color(0xFF1A1919).withOpacity(0.3),
        barrierDismissible: true,
        barrierLabel: '',
        transitionDuration: const Duration(milliseconds: 360),
        transitionBuilder: (c, a, s, ch) {
          return Transform.scale(
            scale: a.value,
            child: Opacity(
              opacity: a.value,
              child: Dialog(
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                        width: 299.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextPoppins(
                                label: title ?? "",
                                fontSize: textTitleSize ?? 25.sp,
                                textColor: fontColor,
                                bold: true,
                                align: TextAlign.center,
                                maxLenght: 5,
                              ),
                              15.verticalSpace,
                              TextPoppins(
                                label: message ?? "",
                                fontSize: 15.sp,
                                textColor: fontColor,
                                maxLenght: 3,
                                align: alignment ?? TextAlign.left,
                              ),
                              25.verticalSpace,
                              MyButtonwithborder(
                                label: titleButton ?? "",
                                press: press,
                                textColor: white,
                                textSize: 16.sp,
                                backColor: Colors.red.shade400,
                                round: 90,
                                height: 36.h,
                                width: 217.w,
                              ),
                              30.verticalSpace,
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        },
        pageBuilder: (c, r, x0) {
          return const SizedBox.shrink();
        });
  }
}
