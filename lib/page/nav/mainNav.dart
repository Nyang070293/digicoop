import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class navBottom extends StatelessWidget {
  final String pageActive;
  const navBottom({super.key, required this.pageActive});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Positioned(
      // bottommenuouh (2011:396)
      left: 0 * fem,
      top: 619 * fem,
      child: Container(
        width: 414 * fem,
        height: 89 * fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle196jHZ (2011:356)
              left: 0 * fem,
              top: 29 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 60 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xffe6e6e6)),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            //Home
            Positioned(
              // frame15d83 (2011:357)
              left: 40 * fem,
              top: 39 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 0 * fem),
                width: 32 * fem,
                height: 41 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // homeactive8Kh (2011:360)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7 * fem),
                      width: 22 * fem,
                      height: 19 * fem,
                      child: Icon(
                        Icons.home,
                        color: pageActive == "home"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                    Text(
                      // homednF (2011:361)
                      'Home',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: pageActive == "home"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //End Home

            //History
            Positioned(
              // frame14ahV (2011:362)
              left: 110 * fem,
              top: 39 * fem,
              child: Container(
                width: 36 * fem,
                height: 41 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // vectorhn7 (2011:365)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Icon(
                        Icons.history_rounded,
                        color: pageActive == "history"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                    Text(
                      // history2Jb (2011:366)
                      'History',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: pageActive == "history"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //End History

            //Otp
            Positioned(
              // frame13ZJX (2011:367)
              left: 277.875 * fem,
              top: 39 * fem,
              child: Container(
                width: 24 * fem,
                height: 41 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // otpgeneratoractivege3 (2011:370)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Icon(
                        Icons.lock_outline_sharp,
                        color: pageActive == "otp"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                    Text(
                      // otpzPq (2011:373)
                      'OTP',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: pageActive == "otp"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //end otp

            //More
            Positioned(
              // frame12jMR (2011:374)
              left: 340 * fem,
              top: 39 * fem,
              child: Container(
                width: 24 * fem,
                height: 41 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // moreexclamationqvF (2011:377)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 4 * fem),
                      width: 24 * fem,
                      height: 24 * fem,
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: pageActive == "more"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                    Text(
                      // moreknK (2011:383)
                      'More',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: pageActive == "more"
                            ? const Color(0xff259ded)
                            : const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //end more

            Positioned(
              // scanWFh (2011:392)
              left: 171 * fem,
              top: 0 * fem,
              child: InkWell(
                onTap: () {},
                child: Container(
                  width: 71 * fem,
                  height: 71 * fem,
                  decoration: const BoxDecoration(
                    color: Color(0xff8fd4ff), // border color
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2), // border width
                    child: Container(
                      // or ClipRRect if you need to clip the content
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff259ded), // inner circle color
                      ),
                      child: const Icon(
                        Icons.qr_code_scanner,
                        size: 30,
                        color: Colors.white,
                      ), // inner content
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
