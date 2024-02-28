import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class myCooperativesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cooperativesdKD (114:14709)
        width: double.infinity,
        height: 963 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Container(
          // group4889HZ (114:14710)
          padding: EdgeInsets.fromLTRB(0 * fem, 64 * fem, 0 * fem, 0 * fem),
          width: double.infinity,
          height: 896 * fem,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/page-1/images/rectangle-6-3QT.png',
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group9583Nw (114:14736)
                padding: EdgeInsets.fromLTRB(
                    33.22 * fem, 25 * fem, 130 * fem, 23 * fem),
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
                      // arrow1ijy (114:14738)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 67.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-1Qj.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Text(
                      // createaccount1j5 (114:14740)
                      'My Cooperatives',
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
                // autogroupx7e7Wvj (PpUpjwMZCL8T9mJeK4x7E7)
                padding:
                    EdgeInsets.fromLTRB(21 * fem, 58 * fem, 21 * fem, 45 * fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group984R27 (114:14743)
                      margin: EdgeInsets.fromLTRB(
                          11 * fem, 0 * fem, 126 * fem, 4 * fem),
                      padding: EdgeInsets.fromLTRB(
                          2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // solarhandmoneylinearLPy (114:14745)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                            width: 22.5 * fem,
                            height: 21.38 * fem,
                            child: Image.asset(
                              'assets/page-1/images/solar-hand-money-linear-ZiP.png',
                              width: 22.5 * fem,
                              height: 21.38 * fem,
                            ),
                          ),
                          Text(
                            // authentication33V (114:14744)
                            'My Cooperatives',
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
                      // listofcooperativesthatyoujoine (114:14750)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 99 * fem, 22 * fem),
                      child: Text(
                        'List of cooperatives that you joined.',
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
                      // group98261m (114:14751)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 16 * fem),
                      width: double.infinity,
                      height: 160 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame283pyM (114:14752)
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
                              // frame1632005PV (114:14806)
                              width: 50 * fem,
                              height: 14 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff259ded)),
                                color: Color(0x3fbfe5ff),
                                borderRadius: BorderRadius.circular(5 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Primary',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 9 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff259ded),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10 * fem,
                            ),
                            Container(
                              // group470wgb (114:14757)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 0 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group4693zX (114:14760)
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
                                      // group468yNP (114:14762)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-JKy.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroup9lo1Wt7 (PpUqyz7qfGHwNsyMrj9Lo1)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14759)
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
                                          // autogroupyvr1L6T (PpUr4pK87syXnpoHQHYVR1)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame163144UCf (114:14765)
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
                                                      // peopleteamprimarynz3 (114:14766)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary-sD1.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // membersWv3 (114:14768)
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
                                                // frame163143rj1 (114:14769)
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
                                                      // icbaselineemailnMm (114:14770)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-JF1.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechnetGGw (114:14772)
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
                              // frame284mjV (114:14774)
                              width: 154 * fem,
                              height: 33 * fem,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff259ded)),
                                borderRadius: BorderRadius.circular(100 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Cancel Membership',
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
                      // group982NUP (114:14714)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 173 * fem),
                      width: double.infinity,
                      height: 180 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5 * fem),
                      ),
                      child: Container(
                        // frame283ujD (114:14715)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 10 * fem, 6 * fem, 11 * fem),
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
                              // frame163199nY7 (114:14717)
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
                                  'Primary',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 9 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff259ded),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              // group470e4X (114:14720)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90 * fem, 32 * fem),
                              width: double.infinity,
                              height: 70 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // group469aD5 (114:14723)
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
                                      // group468uFM (114:14725)
                                      child: SizedBox(
                                        width: 24 * fem,
                                        height: 24 * fem,
                                        child: Image.asset(
                                          'assets/page-1/images/group-468-LWB.png',
                                          width: 24 * fem,
                                          height: 24 * fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // autogroupkhy1F4K (PpUq4qyicVnQqUtCsakhy1)
                                    width: 184 * fem,
                                    height: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // binalbaganmultipurposecooperat (114:14722)
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
                                          // autogroupptbvTAP (PpUqA1VnCwvjd5VS7KPTBV)
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              3 * fem, 0 * fem, 0 * fem),
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame163144YxX (114:14728)
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
                                                      // peopleteamprimaryH9R (114:14729)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10 * fem,
                                                              0 * fem),
                                                      width: 14 * fem,
                                                      height: 12 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/peopleteamprimary-Ws1.png',
                                                        width: 14 * fem,
                                                        height: 12 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // members1LK (114:14731)
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
                                                // frame163143wzf (114:14732)
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
                                                      // icbaselineemailUjh (114:14733)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              10.33 * fem,
                                                              0 * fem),
                                                      width: 13.33 * fem,
                                                      height: 10.67 * fem,
                                                      child: Image.asset(
                                                        'assets/page-1/images/ic-baseline-email-C2T.png',
                                                        width: 13.33 * fem,
                                                        height: 10.67 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // jasantostraxiontechnetCfh (114:14735)
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
                            Container(
                              // frame2879L3 (114:14798)
                              margin: EdgeInsets.fromLTRB(
                                  111 * fem, 0 * fem, 2 * fem, 0 * fem),
                              width: double.infinity,
                              height: 33 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // frame2844hu (114:14800)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                    width: 111 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff259ded)),
                                      borderRadius:
                                          BorderRadius.circular(100 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'View Details',
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
                                  Container(
                                    // frame284uiX (114:14803)
                                    width: 122 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff259ded)),
                                      color: Color(0xff259ded),
                                      borderRadius:
                                          BorderRadius.circular(100 * fem),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Set as Primary',
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
                          ],
                        ),
                      ),
                    ),
                    Container(
                      // group410zzs (114:14809)
                      margin: EdgeInsets.fromLTRB(
                          10 * fem, 0 * fem, 9 * fem, 0 * fem),
                      child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(
                              44.5 * fem, 13 * fem, 23.67 * fem, 12 * fem),
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
                                // explorecooperativeeZd (114:14811)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 14.17 * fem, 0 * fem),
                                child: Text(
                                  'Explore Cooperative',
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
                                // solararrowrightbrokenA2B (114:14812)
                                width: 26.67 * fem,
                                height: 20 * fem,
                                child: Image.asset(
                                  'assets/page-1/images/solar-arrow-right-broken-cBy.png',
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
            ],
          ),
        ),
      ),
    );
  }
}
