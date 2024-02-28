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
        // loansABR (97:11665)
        width: double.infinity,
        height: 963 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // group488hh9 (97:11666)
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
                      'assets/page-1/images/rectangle-6-qq9.png',
                    ),
                  ),
                ),
                child: Center(
                  // rectangle7Aqd (97:11669)
                  child: SizedBox(
                    width: double.infinity,
                    height: 896 * fem,
                    child: Container(),
                  ),
                ),
              ),
            ),
            Positioned(
              // group958KiX (97:11722)
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
                      // arrow1auM (97:11724)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 117.22 * fem, 4.22 * fem),
                      width: 29.57 * fem,
                      height: 17 * fem,
                      child: Image.asset(
                        'assets/page-1/images/arrow-1-KV9.png',
                        width: 29.57 * fem,
                        height: 17 * fem,
                      ),
                    ),
                    Container(
                      // createaccount78b (97:11726)
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
                      // materialsymbolssearchcLF (97:11727)
                      width: 25.5 * fem,
                      height: 25.5 * fem,
                      child: Image.asset(
                        'assets/page-1/images/material-symbols-search-quq.png',
                        width: 25.5 * fem,
                        height: 25.5 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group984YUo (97:11797)
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
                      // solarhandmoneylinearDaw (97:11730)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1.38 * fem, 9.25 * fem, 0 * fem),
                      width: 22.5 * fem,
                      height: 21.38 * fem,
                      child: Image.asset(
                        'assets/page-1/images/solar-hand-money-linear-t1M.png',
                        width: 22.5 * fem,
                        height: 21.38 * fem,
                      ),
                    ),
                    Text(
                      // authentication68w (97:11670)
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
              // frame283EF9 (97:11735)
              left: 34 * fem,
              top: 647 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
                width: 359 * fem,
                height: 170 * fem,
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
                      // frame163226743 (97:11736)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 63 * fem),
                      width: 338 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame283eJs (97:11737)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame280ayD (97:11738)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardWby (97:11739)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 144 * fem, 0 * fem),
                                        child: Text(
                                          'Other Loans',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff259ded),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardq8T (97:11740)
                                        '₱ 12,345.00',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame279n3h (97:11741)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboard87Z (97:11742)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 63 * fem, 0 * fem),
                                        child: Text(
                                          'LA-07072023-000286',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xff878787),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardERV (97:11743)
                                        'Balance as of Feb,8 2023 12:45 PM',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame163199nC7 (97:11814)
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
                        ],
                      ),
                    ),
                    Container(
                      // frame284g2b (109:12309)
                      width: 111 * fem,
                      height: 33 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff259ded)),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Loan Details',
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
            Positioned(
              // frame278xko (97:11750)
              left: 34 * fem,
              top: 185 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
                width: 359 * fem,
                height: 127 * fem,
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
                      // frame163226po1 (97:11751)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame283M2F (97:11752)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame280Gf1 (97:11753)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardPjd (97:11754)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 141 * fem, 0 * fem),
                                        child: Text(
                                          'Other Loans',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff259ded),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardTzP (97:11755)
                                        '₱ 10,000.00',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame27921u (97:11756)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardyhq (97:11757)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 62 * fem, 0 * fem),
                                        child: RichText(
                                          text: TextSpan(
                                            style: SafeGoogleFont(
                                              'Inter',
                                              fontSize: 10 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.2102272034 * ffem / fem,
                                              fontStyle: FontStyle.italic,
                                              color: Color(0xff878787),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'XXXX XXXX XXXX',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff878787),
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' 0856',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 10 * ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.2175 * ffem / fem,
                                                  fontStyle: FontStyle.italic,
                                                  color: Color(0xff878787),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardRy9 (97:11758)
                                        'Balance as of Feb,8 2023 12:45 PM',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame163198kkX (97:11759)
                            width: 56 * fem,
                            height: 14 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff27ae60)),
                              color: Color(0xffeafff3),
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Approved',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 9 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff27ae60),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame287qGB (97:11761)
                      margin: EdgeInsets.fromLTRB(
                          157 * fem, 0 * fem, 0 * fem, 0 * fem),
                      width: double.infinity,
                      height: 33 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame284ke3 (97:11763)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 10 * fem, 0 * fem),
                            width: 111 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff259ded)),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Loan Details',
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
                            // frame284zoH (109:12301)
                            width: 61 * fem,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff259ded)),
                              color: Color(0xff259ded),
                              borderRadius: BorderRadius.circular(100 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Pay',
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
            Positioned(
              // frame281JJB (97:11765)
              left: 34 * fem,
              top: 339 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
                width: 359 * fem,
                height: 127 * fem,
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
                      // frame163226jPV (97:11766)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 20 * fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame2834Rm (97:11767)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame280D3m (97:11768)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardADu (97:11769)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 166 * fem, 0 * fem),
                                        child: Text(
                                          'No Deduct',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff259ded),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardgCF (97:11770)
                                        '₱ 15,00.00',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame279cbh (97:11771)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardaYX (97:11772)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 64 * fem, 0 * fem),
                                        child: Text(
                                          'LA-07072023-000287',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xff878787),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardUdu (97:11773)
                                        'Balance as of Feb,8 2023 12:45 PM',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame163199biX (97:11810)
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
                        ],
                      ),
                    ),
                    Container(
                      // frame284UXR (109:12303)
                      width: 111 * fem,
                      height: 33 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff259ded)),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Loan Details',
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
            Positioned(
              // frame282nHD (97:11780)
              left: 34 * fem,
              top: 493 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 10 * fem, 10 * fem, 10 * fem),
                width: 359 * fem,
                height: 127 * fem,
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
                      // frame163226S6s (97:11781)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1 * fem, 20 * fem),
                      width: 338 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // frame283Mjd (97:11782)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 7 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // frame280h2o (97:11783)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 2 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardcfZ (97:11784)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 144 * fem, 0 * fem),
                                        child: Text(
                                          'Other Loans',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff259ded),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardk15 (97:11785)
                                        '₱ 12,345.00',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame279VjM (97:11786)
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // dashboardqoD (97:11787)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 63 * fem, 0 * fem),
                                        child: Text(
                                          'LA-07072023-000286',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 10 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            fontStyle: FontStyle.italic,
                                            color: Color(0xff878787),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // dashboardxsq (97:11788)
                                        'Balance as of Feb,8 2023 12:45 PM',
                                        textAlign: TextAlign.right,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 10 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          fontStyle: FontStyle.italic,
                                          color: Color(0xff878787),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame163199i6K (97:11812)
                            width: 50 * fem,
                            height: 14 * fem,
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xffeb5757)),
                              color: Color(0xfffff4f1),
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Declined',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 9 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xffeb5757),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame284NRm (109:12307)
                      width: 111 * fem,
                      height: 33 * fem,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff259ded)),
                        borderRadius: BorderRadius.circular(100 * fem),
                      ),
                      child: Center(
                        child: Text(
                          'Loan Details',
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
            Positioned(
              // group410FVZ (97:11829)
              left: 31 * fem,
              top: 841 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      59.5 * fem, 12 * fem, 23.67 * fem, 13 * fem),
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
                        // applyfornewloanVuh (97:11831)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 14.17 * fem, 0 * fem),
                        child: Text(
                          'Apply for new loan',
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
                        // solararrowrightbrokenoQb (97:11832)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 2 * fem, 0 * fem, 0 * fem),
                        width: 26.67 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/solar-arrow-right-broken-sYj.png',
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
