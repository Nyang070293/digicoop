import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButtonwithborder extends StatelessWidget {
  final String? label;
  final Color? backColor, textColor, borderColor;
  final Function()? press;
  final bool? haveborder, textbold;
  final double? height, width, textSize, round;
  final EdgeInsetsGeometry? padding;
  final TextAlign? alignText;

  const MyButtonwithborder(
      {super.key,
      this.label,
      this.backColor,
      this.textColor,
      this.borderColor,
      this.press,
      this.haveborder,
      this.textbold,
      this.height,
      this.width,
      this.textSize,
      this.round,
      this.padding,
      this.alignText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 219.w,
      height: height ?? 40.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backColor ?? Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(round ?? 50),
            ),
            side: haveborder == true
                ? BorderSide(width: 1, color: borderColor ?? Colors.white)
                : BorderSide.none),
        onPressed: press,
        child: Padding(
          padding: padding ?? const EdgeInsets.all(1.0),
          child: Center(
            child: TextPoppins(
              label: label,
              align: alignText,
              maxLenght: 2,
              bold: textbold ?? true,
              fontSize: textSize ?? 16.sp,
              textColor: textColor ?? white,
            ),
          ),
        ),
      ),
    );
  }
}
