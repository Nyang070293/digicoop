import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/constant/colors.dart';

class TextPoppins extends StatelessWidget {
  final String? label;
  final TextAlign? align;
  final double? fontSize;
  final Color? textColor;
  final int? maxLenght;
  final bool? bold, semibold, medium;
  final TextOverflow? overflow;

  const TextPoppins(
      {super.key,
      this.label,
      this.align,
      this.fontSize,
      this.textColor,
      this.maxLenght,
      this.bold,
      this.semibold,
      this.medium,
      this.overflow});

  @override
  Widget build(BuildContext context) {
    return Text(
      label!,
      textAlign: align ?? TextAlign.left,
      maxLines: maxLenght ?? 1,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: GoogleFonts.poppins(
        textBaseline: TextBaseline.alphabetic,
        color: textColor ?? black,
        fontSize: fontSize ?? 12.sp,
        fontWeight: bold == true
            ? FontWeight.w700
            : semibold == true
                ? FontWeight.w600
                : medium == true
                    ? FontWeight.w500
                    : FontWeight.normal,
      ),
    );
  }
}
