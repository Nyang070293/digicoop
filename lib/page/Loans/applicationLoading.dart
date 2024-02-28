import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class applicationLoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // otherewalletloadingTjD (97:11091)
        width: double.infinity,
        height: 896 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle3CB1 (97:11092)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 375 * fem,
                  height: 240 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, -1.245),
                        end: Alignment(0, 1),
                        colors: <Color>[Color(0xff012060), Color(0xff185cbd)],
                        stops: <double>[0, 1],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle5Tcj (97:11093)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 896 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle4xpP (97:11094)
              left: 0 * fem,
              top: 115 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 781 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // biometricG4P (97:11176)
              left: 113.341796875 * fem,
              top: 237.3415544967 * fem,
              child: Container(
                width: 190.66 * fem,
                height: 190.66 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // ellipse3yDh (97:11177)
                      left: 14.658203125 * fem,
                      top: 14.6584455033 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 161 * fem,
                          height: 161 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-3-7jd.png',
                            width: 161 * fem,
                            height: 161 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse4TuZ (97:11178)
                      left: 14.6581878662 * fem,
                      top: 14.6584466871 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 161 * fem,
                          height: 161 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-4-n3Z.png',
                            width: 161 * fem,
                            height: 161 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse5B4s (97:11179)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 190.66 * fem,
                          height: 190.66 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-5-gZm.png',
                            width: 190.66 * fem,
                            height: 190.66 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // ellipse6H7u (97:11180)
                      left: 5.6582105157 * fem,
                      top: 5.6584376353 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 180 * fem,
                          height: 180 * fem,
                          child: Image.asset(
                            'assets/page-1/images/ellipse-6-KeF.png',
                            width: 180 * fem,
                            height: 180 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // maskgroupPgj (97:11181)
                      left: 34.1893882751 * fem,
                      top: 35.1330548783 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 124.88 * fem,
                          height: 124.88 * fem,
                          child: Image.asset(
                            'assets/page-1/images/mask-group-cgf.png',
                            width: 124.88 * fem,
                            height: 124.88 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
