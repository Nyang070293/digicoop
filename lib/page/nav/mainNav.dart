import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class navBottom extends StatelessWidget {
  const navBottom({super.key});

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
            Positioned(
              // frame15d83 (2011:357)
              left: 25.5 * fem,
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
                      child: const Icon(Icons.home),
                    ),
                    Text(
                      // homednF (2011:361)
                      'Home',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff259ded),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame14ahV (2011:362)
              left: 106.125 * fem,
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
                      child: const Icon(Icons.history_rounded),
                    ),
                    Text(
                      // history2Jb (2011:366)
                      'History',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
                      child: const Icon(Icons.lock_outline_sharp),
                    ),
                    Text(
                      // otpzPq (2011:373)
                      'OTP',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame12jMR (2011:374)
              left: 331.25 * fem,
              top: 48.5 * fem,
              child: Container(
                width: 26 * fem,
                height: 23 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // moreexclamationqvF (2011:377)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 6 * fem),
                      width: 16 * fem,
                      height: 4 * fem,
                      child: const Icon(Icons.more_horiz_rounded),
                    ),
                    Text(
                      // moreknK (2011:383)
                      'More',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 10 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff8fd4ff),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // scanWFh (2011:392)
              child: InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.qr_code_scanner),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// CircleAvatar(
//   backgroundImage: AssetImage(
//       "assets/someimage.png"),
//   child: Container(
//     decoration: BoxDecoration(
//       shape: BoxShape.circle,
//       border: Border.all(
//         color: Colors.white,
//         width: 5.0,
//       ),
//     ),
//   ),
// )