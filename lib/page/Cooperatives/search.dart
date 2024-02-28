import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class searchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cooperativessearchhCs (114:14492)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group958Q7H (114:14519)
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
                    // arrow1GfH (114:14521)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 83.22 * fem, 4.22 * fem),
                    width: 29.57 * fem,
                    height: 17 * fem,
                    child: Image.asset(
                      'assets/page-1/images/arrow-1-EfR.png',
                      width: 29.57 * fem,
                      height: 17 * fem,
                    ),
                  ),
                  Text(
                    // createaccountz5V (114:14523)
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
              // autogroupi9tmVY3 (PpUiC8GRBpjbbAptdui9Tm)
              width: double.infinity,
              height: 893 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // group98433m (114:14526)
                    left: 32 * fem,
                    top: 117 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: 192 * fem,
                      height: 30 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // solarhandmoneylinearwuq (114:14528)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                            width: 22.5 * fem,
                            height: 21.38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/solar-hand-money-linear-1DH.png',
                              width: 22.5 * fem,
                              height: 21.38 * fem,
                            ),
                          ),
                          Text(
                            // authenticationE8F (114:14527)
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
                    // applyasmemberxpw (114:14533)
                    left: 34 * fem,
                    top: 151 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 125 * fem,
                        height: 19 * fem,
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
                    ),
                  ),
                  Positioned(
                    // autogroupjsfm3bV (PpUhzoFxbR4ku2GX5ujsFM)
                    left: 27 * fem,
                    top: 56 * fem,
                    child: Container(
                      width: 362 * fem,
                      height: 34 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // searchforcooperativesm1h (114:14607)
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
                            // group846TfD (114:14603)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  3.9 * fem, 3.75 * fem, 3.9 * fem, 3.75 * fem),
                              width: 362 * fem,
                              height: 34 * fem,
                              child: Align(
                                // materialsymbolssearchnBh (114:14605)
                                alignment: Alignment.centerLeft,
                                child: SizedBox(
                                  width: 23.41 * fem,
                                  height: 22.5 * fem,
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(0 * fem,
                                        0 * fem, 330.79 * fem, 4 * fem),
                                    child: Image.asset(
                                      'assets/page-1/images/material-symbols-search-2b1.png',
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
                  ),
                  Positioned(
                    // group982S1M (114:14534)
                    left: 21 * fem,
                    top: 192 * fem,
                    child: Container(
                      width: 372 * fem,
                      height: 160 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame283YKH (114:14535)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 6 * fem, 13 * fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(0 * fem, 0 * fem),
                              blurRadius: 2.5 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // frame163199dbd (114:14537)
                              width: 50 * fem,
                              height: 14 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffffa412)),
                                color: Color(0xfffff1dc),
                                borderRadius: BorderRadius.circular(5 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Pending',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 9 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xffffa412),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Container(
                              // group470Vdq (114:14540)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 0 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group469PjD (114:14543)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 23 * fem, 11 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        17 * fem, 17 * fem, 18 * fem, 18 * fem),
                                    decoration: BoxDecoration(
                                      color: Color(0xfff1f6ff),
                                      borderRadius:
                                          BorderRadius.circular(29.5 * fem),
                                    ),
                                    child: Center(
                                      // group468fwd (114:14545)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-4Nb.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupts2pPsd (PpUienAfzfc3THKJ42Ts2P)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14542)
                                          constraints: BoxConstraints(
                                            maxWidth: 184 * fem,
                                          ),
                                          child: Text(
                                            'Binalbagan Multipurpose Cooperative',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff259ded),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupic4fFew (PpUimXURyqSLWitDq6iC4f)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame163144CKH (114:14548)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    81 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    1 * fem,
                                                    0.5 * fem,
                                                    0 * fem,
                                                    0.5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // peopleteamprimary8Cw (114:14549)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary-LFR.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // membersRC3 (114:14551)
                                                      '114 Members',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0x7f000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame163143AQX (114:14552)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    6 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    1.33 * fem,
                                                    0.5 * fem,
                                                    0 * fem,
                                                    0.5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // icbaselineemail5Gb (114:14553)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-Pxs.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechnetycs (114:14555)
                                                      'jasantos@traxiontech.net',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0x7f000000),
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
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Container(
                              // frame284TH9 (114:14557)
                              width: 147 * fem,
                              height: 33 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff259ded)),
                                borderRadius: BorderRadius.circular(100 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel Application',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 11 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff259ded),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // frame283ZLB (114:14560)
                    left: 21 * fem,
                    top: 373 * fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 10 * fem, 6 * fem, 13 * fem),
                      width: 372 * fem,
                      height: 139 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5 * fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x26000000),
                            offset: Offset(0 * fem, 0 * fem),
                            blurRadius: 2.5 * fem,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // group470RdH (114:14562)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 90 * fem, 13 * fem),
                            width: double.infinity,
                            height: 70 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group469LkF (114:14565)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 23 * fem, 11 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      17 * fem, 17 * fem, 18 * fem, 18 * fem),
                                  decoration: BoxDecoration(
                                    color: Color(0xfff1f6ff),
                                    borderRadius:
                                        BorderRadius.circular(29.5 * fem),
                                  ),
                                  child: Center(
                                    // group468GP1 (114:14567)
                                    child: SizedBox(
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-468-Kwu.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupgdp5zK1 (PpUjP1TJsKX9GbaD6tgDP5)
                                  width: 184 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // binalbaganmultipurposecooperat (114:14564)
                                        constraints: BoxConstraints(
                                          maxWidth: 184 * fem,
                                        ),
                                        child: Text(
                                          'Binalbagan Multipurpose Cooperative',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff259ded),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroup5n15RQK (PpUjTqebKwCjgYQ8eT5N15)
                                        padding: EdgeInsets.fromLTRB(
                                            0 * fem, 3 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame163144jvo (114:14570)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  81 * fem,
                                                  0 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0.5 * fem,
                                                  0 * fem,
                                                  0.5 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // peopleteamprimaryGfq (114:14571)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10 * fem,
                                                        0 * fem),
                                                    width: 14 * fem,
                                                    height: 12 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/peopleteamprimary-WSs.png',
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // membersQ1M (114:14573)
                                                    '114 Members',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0x7f000000),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              // frame163143thD (114:14574)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  6 * fem,
                                                  0 * fem),
                                              padding: EdgeInsets.fromLTRB(
                                                  1.33 * fem,
                                                  0.5 * fem,
                                                  0 * fem,
                                                  0.5 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // icbaselineemailQvT (114:14575)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10.33 * fem,
                                                        0 * fem),
                                                    width: 13.33 * fem,
                                                    height: 10.67 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/ic-baseline-email.png',
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // jasantostraxiontechnetLJK (114:14577)
                                                    'jasantos@traxiontech.net',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0x7f000000),
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
                              ],
                            ),
                          ),
                          Container(
                            // frame2845Fu (114:14579)
                            width: 140 * fem,
                            height: 33 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff259ded)),
                              color: Color(0xff259ded),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Apply as Member',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 11 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // group986wJ7 (114:14581)
                    left: 21 * fem,
                    top: 534 * fem,
                    child: Container(
                      width: 372 * fem,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame283GbH (114:14582)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 6 * fem, 21 * fem),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5 * fem),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x26000000),
                              offset: Offset(0 * fem, 0 * fem),
                              blurRadius: 2.5 * fem,
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              // frame163199xyu (114:14584)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 10 * fem),
                              width: 50 * fem,
                              height: 14 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff259ded)),
                                color: Color(0x3fbfe5ff),
                                borderRadius: BorderRadius.circular(5 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Active',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 9 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff259ded),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group470ebq (114:14587)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 0 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group4699Yb (114:14590)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 23 * fem, 11 * fem),
                                    padding: EdgeInsets.fromLTRB(
                                        17 * fem, 17 * fem, 18 * fem, 18 * fem),
                                    decoration: BoxDecoration(
                                      color: Color(0xfff1f6ff),
                                      borderRadius:
                                          BorderRadius.circular(29.5 * fem),
                                    ),
                                    child: Center(
                                      // group468GdD (114:14592)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-KYs.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupwawt1ao (PpUk5zH2V6D1BiejJbWaWT)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14589)
                                          constraints: BoxConstraints(
                                            maxWidth: 184 * fem,
                                          ),
                                          child: Text(
                                            'Binalbagan Multipurpose Cooperative',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff259ded),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // autogroupfhb554s (PpUkDKQ9TUM5Q3qSYUfhb5)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame163144NZm (114:14595)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    81 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    1 * fem,
                                                    0.5 * fem,
                                                    0 * fem,
                                                    0.5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // peopleteamprimaryGv3 (114:14596)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // membersafq (114:14598)
                                                      '114 Members',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0x7f000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame1631437vf (114:14599)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    6 * fem,
                                                    0 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    1.33 * fem,
                                                    0.5 * fem,
                                                    0 * fem,
                                                    0.5 * fem),
                                                width: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // icbaselineemailr7Z (114:14600)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-NXh.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechneta3Z (114:14602)
                                                      'jasantos@traxiontech.net',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0x7f000000),
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
                                ],
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
          ],
        ),
      ),
    );
  }
}
