import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class categoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // otherewallet2Cf (109:12379)
        width: double.infinity,
        height: 896 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group488keT (109:12380)
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
                      'assets/page-1/images/rectangle-6-uVR.png',
                    ),
                  ),
                ),
                child: Center(
                  // rectangle7REo (109:12383)
                  child: SizedBox(
                    width: double.infinity,
                    height: 896 * fem,
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // categories9wV (109:12385)
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
              // group976rb1 (109:12386)
              left: 26.9999389648 * fem,
              top: 200.845703125 * fem,
              child: Container(
                width: 362 * fem,
                height: 522.4 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle8ZEX (109:12387)
                      left: 0.0000610352 * fem,
                      top: 0.154296875 * fem,
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
                      // group2581sD (109:12388)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            0 * fem, 33.15 * fem, 0 * fem, 0 * fem),
                        width: 362 * fem,
                        height: 522.4 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group249tw1 (109:12390)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 21 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  26 * fem, 0 * fem, 27.91 * fem, 0 * fem),
                              width: double.infinity,
                              height: 26 * fem,
                              child: Container(
                                // autogroups1pdQ8f (PpTzFzoczSNQVxe3wnS1Pd)
                                width: double.infinity,
                                height: 18 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // carloankCX (109:12396)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 234.49 * fem, 0 * fem),
                                      child: Text(
                                        'Car Loan',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff3f3f3f),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group248Sb9 (109:12392)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 0.21 * fem),
                                      width: 9.6 * fem,
                                      height: 16.82 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-248-8w1.png',
                                        width: 9.6 * fem,
                                        height: 16.82 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // group250My1 (109:12418)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 21 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  27 * fem, 0 * fem, 27.91 * fem, 0 * fem),
                              width: double.infinity,
                              height: 30 * fem,
                              child: Container(
                                // group248GKH (109:12420)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: 18 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // regularagriculturalloanAQf (109:12423)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 111.49 * fem, 0 * fem),
                                      child: Text(
                                        'Regular Agricultural Loan',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff262626),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrow21RrP (109:12421)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 0.08 * fem),
                                      width: 9.6 * fem,
                                      height: 16.82 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/arrow-2-1-Bfu.png',
                                        width: 9.6 * fem,
                                        height: 16.82 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // group254H7u (109:12451)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 21 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  27 * fem, 0 * fem, 27.91 * fem, 0 * fem),
                              width: double.infinity,
                              height: 30 * fem,
                              child: Container(
                                // group248orw (109:12453)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: 18 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // housingloanYpX (109:12456)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 197.49 * fem, 0 * fem),
                                      child: Text(
                                        'Housing Loan',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff262626),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrow2153m (109:12454)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 0.08 * fem),
                                      width: 9.6 * fem,
                                      height: 16.82 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/arrow-2-1-THZ.png',
                                        width: 9.6 * fem,
                                        height: 16.82 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // group255bXu (109:12457)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 309.24 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  27 * fem, 0 * fem, 27.91 * fem, 0 * fem),
                              width: double.infinity,
                              height: 30 * fem,
                              child: Container(
                                // group248isR (109:12459)
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                height: 18 * fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // othersRWw (109:12462)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 247.49 * fem, 0 * fem),
                                      child: Text(
                                        'Others',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff262626),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrow21LP1 (109:12460)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0 * fem, 0.08 * fem),
                                      width: 9.6 * fem,
                                      height: 16.82 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/arrow-2-1-1r7.png',
                                        width: 9.6 * fem,
                                        height: 16.82 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              // group2532Fq (109:12416)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: 362 * fem,
                              height: 1 * fem,
                              child: Image.asset(
                                'assets/page-1/images/group-253-J2s.png',
                                width: 362 * fem,
                                height: 1 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group958kSj (109:12436)
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
                      // arrow1cE3 (109:12438)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 117.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-CEB.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Container(
                      // createaccount6f1 (109:12440)
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
                      // materialsymbolssearchBRZ (109:12441)
                      width: 25.5 * fem,
                      height: 25.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/material-symbols-search-tWj.png',
                        width: 25.5 * fem,
                        height: 25.5 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group984WTq (109:12444)
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
                      // solarhandmoneylinearBK5 (109:12446)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                      width: 22.5 * fem,
                      height: 21.38 * fem,
                      child: Image.asset(
                        'assets/page-1/images/solar-hand-money-linear.png',
                        width: 22.5 * fem,
                        height: 21.38 * fem,
                      ),
                    ),
                    Text(
                      // authenticationJ8o (109:12445)
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
              // group410whZ (109:12464)
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
                        // nextBbu (109:12466)
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
                        // solararrowrightbrokenuno (109:12467)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        width: 26.67 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/solar-arrow-right-broken-u27.png',
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
