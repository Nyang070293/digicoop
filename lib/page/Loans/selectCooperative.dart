import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class selectCooperativeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loansK9q (97:11836)
        width: double.infinity,
        height: 963 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group48824F (97:11837)
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
                      'assets/page-1/images/rectangle-6-hRH.png',
                    ),
                  ),
                ),
                child: Center(
                  // rectangle7ixf (97:11840)
                  child: SizedBox(
                    width: double.infinity,
                    height: 896 * fem,
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // group958Ugw (97:11841)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    33.22 * fem, 25 * fem, 179 * fem, 23 * fem),
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
                      // arrow1vJ3 (97:11843)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 117.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-MCB.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Text(
                      // createaccountadV (97:11845)
                      'Loans',
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
            ),
            Positioned(
              // group984H27 (97:11848)
              left: 32 * fem,
              top: 128 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 192 * fem,
                height: 30 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // solarhandmoneylineartXh (97:11850)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                      width: 22.5 * fem,
                      height: 21.38 * fem,
                      child: Image.asset(
                        'assets/page-1/images/solar-hand-money-linear-uDH.png',
                        width: 22.5 * fem,
                        height: 21.38 * fem,
                      ),
                    ),
                    Text(
                      // authenticationC2b (97:11849)
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
            ),
            Positioned(
              // applyforaloanselectacooperativ (97:11921)
              left: 34 * fem,
              top: 162 * fem,
              child: Align(
                child: SizedBox(
                  width: 267 * fem,
                  height: 19 * fem,
                  child: Text(
                    'Apply for a Loan (Select a cooperative)',
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
              // group982cMD (97:12020)
              left: 21 * fem,
              top: 211 * fem,
              child: Container(
                width: 363 * fem,
                height: 452 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      // autogroupcljjif9 (PpU2yRHKKj8btFDgkACLJj)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 4 * fem, 80 * fem),
                      width: 359 * fem,
                      height: 317 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // frame163310D67 (97:12101)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 359 * fem,
                              height: 145 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group470HLs (97:12102)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 27 * fem),
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group46923Z (97:12105)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group468vPq (97:12107)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupdockroH (PpU3CFFH2PsjFpnvuxDoCK)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              13 * fem, 0 * fem, 11 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // binalbaganmultipurposecooperat (97:12104)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    68 * fem,
                                                    0 * fem),
                                                constraints: BoxConstraints(
                                                  maxWidth: 183 * fem,
                                                ),
                                                child: Text(
                                                  'Binalbagan Multipurpose \nCooperative',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse725R9 (97:12110)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // group476Pwd (97:12111)
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group469vwZ (97:12114)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group468fu9 (97:12116)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468-Fo5.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupydg3DQs (PpU3VeuwLJTQG7McrfyDG3)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              13 * fem, 0 * fem, 11 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // dinglegovernmentworkersdevelop (97:12113)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    50 * fem,
                                                    0 * fem),
                                                constraints: BoxConstraints(
                                                  maxWidth: 201 * fem,
                                                ),
                                                child: Text(
                                                  'Dingle Government Workers\nDevelopment Cooperative',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse72Pif (97:12119)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
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
                          ),
                          Positioned(
                            // frame163311KcK (97:12180)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              width: 359 * fem,
                              height: 317 * fem,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group470crK (97:12181)
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group469NKh (97:12184)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group468gbH (97:12186)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468-M27.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupppmdbiF (PpU3oK5BVat83dkna2Ppmd)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              13 * fem, 0 * fem, 11 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // binalbaganmultipurposecooperat (97:12183)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    68 * fem,
                                                    0 * fem),
                                                constraints: BoxConstraints(
                                                  maxWidth: 183 * fem,
                                                ),
                                                child: Text(
                                                  'Binalbagan Multipurpose \nCooperative',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse722oZ (97:12189)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 27 * fem,
                                  ),
                                  Container(
                                    // group476Knf (97:12190)
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group469UvT (97:12193)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group4682SB (97:12195)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468-piK.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroup8wpzYfR (PpU3zJkrxA6EN8XrRr8WPZ)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              13 * fem, 0 * fem, 11 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // dinglegovernmentworkersdevelop (97:12192)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    50 * fem,
                                                    0 * fem),
                                                constraints: BoxConstraints(
                                                  maxWidth: 201 * fem,
                                                ),
                                                child: Text(
                                                  'Dingle Government Workers\nDevelopment Cooperative',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse72xDM (97:12198)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 27 * fem,
                                  ),
                                  Container(
                                    // group477535 (97:12199)
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group4692U7 (97:12202)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group4689Hq (97:12204)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468-hrX.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupxpy9f1H (PpU4AidBRWzZXjh8prxPy9)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              13 * fem, 0 * fem, 11 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // farmersalternativeforselfrelia (97:12201)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    90 * fem,
                                                    0 * fem),
                                                constraints: BoxConstraints(
                                                  maxWidth: 161 * fem,
                                                ),
                                                child: Text(
                                                  'Farmers Alternative for\nSelf-Reliance MPC',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse725Ku (97:12207)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    2 * fem),
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 27 * fem,
                                  ),
                                  Container(
                                    // group478yAP (97:12208)
                                    width: double.infinity,
                                    height: 59 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group469vbR (97:12211)
                                          padding: EdgeInsets.fromLTRB(17 * fem,
                                              17 * fem, 18 * fem, 18 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Color(0xfff1f6ff),
                                            borderRadius: BorderRadius.circular(
                                                29.5 * fem),
                                          ),
                                          child: Center(
                                            // group468RHH (97:12213)
                                            child: SizedBox(
                                              width: 24 * fem,
                                              height: 24 * fem,
                                              child: Image.asset(
                                                'assets/page-1/images/group-468-ADM.png',
                                                width: 24 * fem,
                                                height: 24 * fem,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupo1zxZPV (PpU4TYUUkDGTP8e3Jmo1zX)
                                          padding: EdgeInsets.fromLTRB(26 * fem,
                                              18 * fem, 0 * fem, 18 * fem),
                                          height: double.infinity,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // kapitbisigsapagunladmpcJby (97:12210)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    1 * fem,
                                                    41 * fem,
                                                    0 * fem),
                                                child: Text(
                                                  'Kapit Bisig Sa Pag Unlad MPC',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.2175 * ffem / fem,
                                                    color: Color(0xff231f20),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // ellipse72paK (97:12216)
                                                width: 23 * fem,
                                                height: 23 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffbdbdbd)),
                                                  color: Color(0xffffffff),
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
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group410kTy (97:12022)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 0 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              150 * fem, 12 * fem, 23.67 * fem, 13 * fem),
                          width: double.infinity,
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
                                // nextYej (97:12024)
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
                                // solararrowrightbrokenrfR (97:12025)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 2 * fem, 0 * fem, 0 * fem),
                                width: 26.67 * fem,
                                height: 20 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/solar-arrow-right-broken-G3y.png',
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
            ),
          ],
        ),
      ),
    );
  }
}
