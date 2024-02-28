import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // otherewalletHZ1 (109:12470)
        width: double.infinity,
        height: 896 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group488Cvs (109:12471)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 414 * fem,
                height: 896 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/page-1/images/rectangle-6-MMy.png',
                    ),
                  ),
                ),
                child: Center(
                  // rectangle7sXD (109:12474)
                  child: SizedBox(
                    width: double.infinity,
                    height: 896 * fem,
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // categoriesE6s (109:12475)
              left: 34 * fem,
              top: 162 * fem,
              child: Align(
                child: SizedBox(
                  width: 76 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Categories',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3318751199 * ffem / fem,
                      color: Color(0xff828282),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group9765tB (109:12476)
              left: 27 * fem,
              top: 201 * fem,
              child: Container(
                width: 473.25 * fem,
                height: 244 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle8c7R (109:12477)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 362 * fem,
                          height: 244 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                              border: Border.all(color: Color(0xfff5f5f5)),
                              color: Color(0xffffffff),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xffcbd2df),
                                  offset: Offset(0 * fem, 4 * fem),
                                  blurRadius: 2 * fem,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group258Ss9 (109:12478)
                      left: 37.5272865295 * fem,
                      top: 171.01171875 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 12.74 * fem, 0 * fem, 0 * fem),
                        width: 435.72 * fem,
                        height: 32.45 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group255Xdh (109:12501)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 17.71 * fem),
                              width: 435.72 * fem,
                              height: 1 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group-255.png',
                                width: 435.72 * fem,
                                height: 1 * fem,
                              ),
                            ),
                            Container(
                              // group253eiK (109:12487)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 435.72 * fem,
                              height: 1 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group-253-JdM.png',
                                width: 435.72 * fem,
                                height: 1 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // sorrynoavailableloanstoshowund (109:12527)
                      left: 44 * fem,
                      top: 103 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 278 * fem,
                          height: 38 * fem,
                          child: Text(
                            'Sorry, No available Loans to show under this Cooperative',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3318751199 * ffem / fem,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group958ebq (109:12507)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    33.22 * fem, 23.25 * fem, 25.25 * fem, 21.25 * fem),
                width: 414 * fem,
                height: 70 * fem,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3fb0b0b0),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // arrow16ij (109:12509)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 117.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-s6P.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Container(
                      // createaccountDoM (109:12511)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 128.25 * fem, 0 * fem),
                      child: Text(
                        'Loans',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xff231f20),
                        ),
                      ),
                    ),
                    Container(
                      // materialsymbolssearchY4w (109:12512)
                      width: 25.5 * fem,
                      height: 25.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/material-symbols-search-MCB.png',
                        width: 25.5 * fem,
                        height: 25.5 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group9843nP (109:12514)
              left: 32 * fem,
              top: 128 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 106 * fem,
                height: 30 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // solarhandmoneylinearJiK (109:12516)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                      width: 22.5 * fem,
                      height: 21.38 * fem,
                      child: Image.asset(
                        'assets/page-1/images/solar-hand-money-linear-5Xu.png',
                        width: 22.5 * fem,
                        height: 21.38 * fem,
                      ),
                    ),
                    Text(
                      // authenticationcyu (109:12515)
                      'Loans',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff262626),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group410mM1 (109:12522)
              left: 10 * fem,
              top: 532 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      150 * fem, 12 * fem, 23.67 * fem, 13 * fem),
                  width: 353 * fem,
                  height: 55 * fem,
                  decoration: BoxDecoration(
                    color: Color(0xff259ded),
                    borderRadius: BorderRadius.circular(100 * fem),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x3f000000),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // nexto2o (109:12524)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 95.67 * fem, 0 * fem),
                        child: Text(
                          'Next',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                      Container(
                        // solararrowrightbrokent4F (109:12525)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        width: 26.67 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/solar-arrow-right-broken-9xb.png',
                          width: 26.67 * fem,
                          height: 20 * fem,
                        ),
                      ),
                    ],
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
