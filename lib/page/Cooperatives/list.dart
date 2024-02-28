import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class listScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cooperativesYnB (114:13933)
        width: double.infinity,
        height: 963 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Container(
          // group4885n7 (114:13934)
          padding: EdgeInsets.fromLTRB(0 * fem, 64 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          height: 896 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/rectangle-6-Z43.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group958BKM (114:13938)
                padding: EdgeInsets.fromLTRB(
                    33.22 * fem, 23.25 * fem, 25.25 * fem, 21.25 * fem),
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
                      // arrow1RUb (114:13940)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 83.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-8qu.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Container(
                      // createaccountLbZ (114:13942)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 96.25 * fem, 0 * fem),
                      child: Text(
                        'Cooperatives',
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
                      // materialsymbolssearchSuV (114:14017)
                      width: 25.5 * fem,
                      height: 25.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/material-symbols-search-d8b.png',
                        width: 25.5 * fem,
                        height: 25.5 * fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupu7d1yeX (PpUeN4ykeSZfnWi5TJU7D1)
                padding: EdgeInsets.fromLTRB(
                    21 * fem, 58 * fem, 21 * fem, 162 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // group984WPZ (114:13943)
                      margin: EdgeInsets.fromLTRB(
                          11 * fem, 0 * fem, 169 * fem, 4 * fem),
                      padding: EdgeInsets.fromLTRB(
                          2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // solarhandmoneylinearbvo (114:13945)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                            width: 22.5 * fem,
                            height: 21.38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/solar-hand-money-linear-xwR.png',
                              width: 22.5 * fem,
                              height: 21.38 * fem,
                            ),
                          ),
                          Text(
                            // authenticationhU3 (114:13944)
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
                      // applyasmember3H1 (114:13950)
                      margin: EdgeInsets.fromLTRB(
                          13 * fem, 0 * fem, 0 * fem, 22 * fem),
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
                      // group982LG7 (114:13951)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 21 * fem),
                      width: double.infinity,
                      height: 160 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame283UNK (114:14035)
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
                              // frame163199wmh (114:14164)
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
                              // group470nGX (114:14051)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 0 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group4697Jo (114:14054)
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
                                      // group468E8X (114:14056)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-dDZ.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroup4cqumeF (PpUfUsT7RTCmPi8ugd4cqu)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14053)
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
                                          // autogroupqkkkAgP (PpUfdnMvnZ2ostHKTqqKkK)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame1631447Lj (114:14059)
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
                                                      // peopleteamprimaryS87 (114:14060)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary-n9u.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // membersmAP (114:14062)
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
                                                // frame1631437EF (114:14063)
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
                                                      // icbaselineemailqR9 (114:14064)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-1d1.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechnet9Rq (114:14066)
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
                              // frame284QsZ (114:14131)
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
                    Container(
                      // frame283h5y (114:14134)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 22 * fem),
                      padding: EdgeInsets.fromLTRB(
                          10 * fem, 10 * fem, 6 * fem, 13 * fem),
                      width: double.infinity,
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
                            // group470Lej (114:14136)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 90 * fem, 13 * fem),
                            width: double.infinity,
                            height: 70 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group4695MR (114:14139)
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
                                    // group468zzB (114:14141)
                                    child: SizedBox(
                                      width: 24 * fem,
                                      height: 24 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/group-468-REf.png',
                                        width: 24 * fem,
                                        height: 24 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupizzs7ou (PpUgABewN3aySaJuRSizzs)
                                  width: 184 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // binalbaganmultipurposecooperat (114:14138)
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
                                        // autogroupmkdmaxP (PpUgFMAzxVjJEAv8fBMkDM)
                                        padding: EdgeInsets.fromLTRB(
                                            0 * fem, 3 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // frame163144W5M (114:14144)
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
                                                    // peopleteamprimaryCym (114:14145)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10 * fem,
                                                        0 * fem),
                                                    width: 14 * fem,
                                                    height: 12 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/peopleteamprimary-6ZM.png',
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // members8Md (114:14147)
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
                                              // frame163143e55 (114:14148)
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
                                                    // icbaselineemailXuZ (114:14149)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        10.33 * fem,
                                                        0 * fem),
                                                    width: 13.33 * fem,
                                                    height: 10.67 * fem,
                                                    child: Image.asset(
                                                      'assets/page-1/images/ic-baseline-email-Z1R.png',
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                    ),
                                                  ),
                                                  Text(
                                                    // jasantostraxiontechnetezB (114:14151)
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
                            // frame284zo9 (114:14153)
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
                    Container(
                      // group982ttX (114:14166)
                      width: double.infinity,
                      height: 125 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame2832zj (114:14167)
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
                              // frame163199Tq9 (114:14169)
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
                              // group470M9q (114:14172)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 0 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group469s8B (114:14175)
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
                                      // group468a2b (114:14177)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-EcF.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupijohv6T (PpUegtmin9bwspLp6GiJoH)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14174)
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
                                          // autogroup93ksLAB (PpUenUSkntpgdUgAwj93ks)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame163144GZd (114:14180)
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
                                                      // peopleteamprimarybbu (114:14181)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary-8FR.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // membersuMh (114:14183)
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
                                                // frame163143FRZ (114:14184)
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
                                                      // icbaselineemailycT (114:14185)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-bPu.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechnetfkB (114:14187)
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
