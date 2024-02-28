import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class emptySearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cooperativesemptysearchks1 (114:14610)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group958GaT (114:14611)
              padding: EdgeInsets.fromLTRB(
                  33.22 * fem, 25 * fem, 147 * fem, 23 * fem),
              width: double.infinity,
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
                    // arrow18sZ (114:14613)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 83.22 * fem, 4.22 * fem),
                    width: 29.57 * fem,
                    height: 17 * fem,
                    child: Image.asset(
                      'assets/page-1/images/arrow-1-Mzf.png',
                      width: 29.57 * fem,
                      height: 17 * fem,
                    ),
                  ),
                  Text(
                    // createaccountTQ3 (114:14615)
                    'Cooperatives',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xff231f20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroupey3hmQj (PpUn6r5ycuMkcwsyWzEY3H)
              padding:
                  EdgeInsets.fromLTRB(27 * fem, 56 * fem, 0 * fem, 457 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupqpnbg1u (PpUmyBe5Wgkx2xuxavqpNB)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 27 * fem),
                    width: 362 * fem,
                    height: 34 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // searchforcooperativesBzF (114:14624)
                          left: 46 * fem,
                          top: 4 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 165 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Search for Cooperatives',
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
                          // group846GF1 (114:14694)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                3.9 * fem, 3.75 * fem, 3.9 * fem, 3.75 * fem),
                            width: 362 * fem,
                            height: 34 * fem,
                            child: Align(
                              // materialsymbolssearchArB (114:14696)
                              alignment: Alignment.centerLeft,
                              child: SizedBox(
                                width: 23.41 * fem,
                                height: 22.5 * fem,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 330.79 * fem, 4 * fem),
                                  child: Image.asset(
                                    'assets/page-1/images/material-symbols-search-YUP.png',
                                    width: 23.41 * fem,
                                    height: 22.5 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group984fnw (114:14616)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 0 * fem, 190 * fem, 4 * fem),
                    padding: EdgeInsets.fromLTRB(
                        2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // solarhandmoneylinearmqy (114:14618)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                          width: 22.5 * fem,
                          height: 21.38 * fem,
                          child: Image.asset(
                            'assets/page-1/images/solar-hand-money-linear-PLB.png',
                            width: 22.5 * fem,
                            height: 21.38 * fem,
                          ),
                        ),
                        Text(
                          // authenticationgxw (114:14617)
                          'Cooperatives',
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
                  Container(
                    // applyasmembercbh (114:14623)
                    margin: EdgeInsets.fromLTRB(
                        7 * fem, 0 * fem, 0 * fem, 22 * fem),
                    child: Text(
                      'Apply as member',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3318751199 * ffem / fem,
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  Container(
                    // group9768a3 (114:14698)
                    width: 473.25 * fem,
                    height: 244 * fem,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5 * fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle8U87 (114:14699)
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
                          // group258WKh (114:14700)
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
                                  // group255Qfy (114:14704)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 17.71 * fem),
                                  width: 435.72 * fem,
                                  height: 1 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-255-7yh.png',
                                    width: 435.72 * fem,
                                    height: 1 * fem,
                                  ),
                                ),
                                Container(
                                  // group253iRm (114:14702)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 435.72 * fem,
                                  height: 1 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/group-253-sLb.png',
                                    width: 435.72 * fem,
                                    height: 1 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          // sorrynoavailablecooperative9GB (114:14706)
                          left: 74 * fem,
                          top: 103 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 218 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Sorry, No available Cooperative.',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
