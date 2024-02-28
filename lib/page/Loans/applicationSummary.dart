import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class applicationSummaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loansapplykPh (114:13692)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // autogroupq5pbH8j (PpUXGXJVX6mjAd5X3qQ5pB)
              padding: EdgeInsets.fromLTRB(
                  33.22 * fem, 25 * fem, 180 * fem, 23 * fem),
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
                    // arrow18v3 (114:13708)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 116.22 * fem, 4.22 * fem),
                    width: 29.57 * fem,
                    height: 17 * fem,
                    child: Image.asset(
                      'assets/page-1/images/arrow-1-kJB.png',
                      width: 29.57 * fem,
                      height: 17 * fem,
                    ),
                  ),
                  Text(
                    // createaccountrb9 (114:13710)
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
            Container(
              // autogroupe2s9zST (PpUZwnB8UTYB8B5fr4e2s9)
              padding:
                  EdgeInsets.fromLTRB(14.5 * fem, 55 * fem, 0 * fem, 79 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouptzw9XSP (PpUXQSEyUhDaXqt1kXTzw9)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 89 * fem),
                    width: 429.08 * fem,
                    height: 751 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // authenticationFNP (114:13699)
                          left: 16.5031738281 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 187 * fem,
                              height: 30 * fem,
                              child: Text(
                                'Loan Summary',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // pleaseconfirmalldetailsVnX (114:13700)
                          left: 18.5031738281 * fem,
                          top: 37 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 177 * fem,
                              height: 19 * fem,
                              child: Text(
                                'Please confirm all details.',
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
                          // group155VR9 (114:13711)
                          left: 0 * fem,
                          top: 17 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 68 * fem, 0 * fem, 0 * fem),
                            width: 429.08 * fem,
                            height: 734 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupz7uhn9M (PpUXrkpT9hdJ2Jb7UTz7uH)
                                  padding: EdgeInsets.fromLTRB(12.5 * fem,
                                      0 * fem, 12.5 * fem, 16 * fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // group259uDy (114:13745)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 7 * fem),
                                        padding: EdgeInsets.fromLTRB(4.15 * fem,
                                            0 * fem, 4.15 * fem, 0 * fem),
                                        width: 361 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Application Details',
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
                                        // group160yjd (114:13717)
                                        margin: EdgeInsets.fromLTRB(5 * fem,
                                            0 * fem, 179.86 * fem, 23 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // applicationtypehfd (114:13718)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  1 * fem,
                                                  83.22 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Application Type',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // newcXh (114:13719)
                                              'New',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group153N15 (114:13714)
                                        margin: EdgeInsets.fromLTRB(5.18 * fem,
                                            0 * fem, 150.08 * fem, 23 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // loancategoryUpo (114:13715)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  96.82 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Loan Category',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // carloanZrF (114:13716)
                                              'Car Loan',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group156X2P (114:13724)
                                        margin: EdgeInsets.fromLTRB(5.18 * fem,
                                            0 * fem, 193.08 * fem, 19 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // interestrateFyy (114:13725)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  106.82 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Interest Rate',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // nj1 (114:13726)
                                              '5%',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group152YTH (114:13720)
                                        margin: EdgeInsets.fromLTRB(5 * fem,
                                            0 * fem, 0 * fem, 31 * fem),
                                        width: 259 * fem,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // autogroup76frris (PpUYEFCeN6MR6pUHer76FR)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  16 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // paymentterms15y (114:13721)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        90 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Payment Terms',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // monthsjXm (114:13722)
                                                    '12 months',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff262626),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              // purposeofloanHZH (114:13723)
                                              'Purpose of Loan',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff828282),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group949crT (114:13748)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 13 * fem),
                                        width: 361 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Principal (P)',
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
                                        // group159sXV (114:13736)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 107.08 * fem, 0 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // principalamount1tb (114:13737)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  83 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Principal Amount',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php6000000YNj (114:13738)
                                              'PHP 60,000.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // autogroupkgzd57m (PpUYb9mUbGmm2SjgNRKGZD)
                                  padding: EdgeInsets.fromLTRB(12.5 * fem,
                                      16 * fem, 12.5 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // group950CTH (114:13757)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 18 * fem),
                                        width: 361 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Deductions (P)',
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
                                        // group1587KM (114:13727)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 117.08 * fem, 19 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // taxFwM (114:13728)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  170 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Tax',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php300000NWB (114:13729)
                                              'PHP 3,000.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group161vXh (114:13730)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 138.08 * fem, 20 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // digicoopapplicationprocessingf (114:13731)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  62 * fem,
                                                  0 * fem),
                                              constraints: BoxConstraints(
                                                maxWidth: 129 * fem,
                                              ),
                                              child: Text(
                                                'DigiCoop application\nprocessing fee',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php5000Vz7 (114:13732)
                                              'PHP 50.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group16241d (114:13733)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 138.08 * fem, 33 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // digicooploanprocessingfeeoV1 (114:13734)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  102 * fem,
                                                  0 * fem),
                                              constraints: BoxConstraints(
                                                maxWidth: 89 * fem,
                                              ),
                                              child: Text(
                                                'DigiCoop loan\nprocessing fee',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php50006DD (114:13735)
                                              'PHP 50.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group95126s (114:13751)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 13 * fem),
                                        width: 361 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Net Take Home Pay ((P+R) - D)',
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
                                        // group1637e7 (114:13739)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 108.08 * fem, 32 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // netproceeds7V (114:13740)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  111 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Net PRoceed',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php5690000bJP (114:13741)
                                              'PHP 56,900.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group952uK5 (114:13754)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 13 * fem),
                                        width: 361 * fem,
                                        height: 27 * fem,
                                        child: Text(
                                          'Monthly Principal Ammortization',
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
                                        // group164AF1 (114:13742)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 118.08 * fem, 0 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // monthlyfeeJs1 (114:13743)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  115 * fem,
                                                  0 * fem),
                                              child: Text(
                                                'Monthly Fee',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2175 * ffem / fem,
                                                  color: Color(0xff828282),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              // php9950003Jo (114:13744)
                                              'PHP 9,950.00',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 14 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff262626),
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
                    // group410nnB (114:13702)
                    margin: EdgeInsets.fromLTRB(
                        16.5 * fem, 0 * fem, 30 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            141 * fem, 15 * fem, 23.67 * fem, 10 * fem),
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
                              // apply1uq (114:13704)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 90.67 * fem, 0 * fem),
                              child: Text(
                                'Apply',
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
                              // solararrowrightbrokenLx7 (114:13705)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 4 * fem),
                              width: 26.67 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/page-1/images/solar-arrow-right-broken-8tX.png',
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
    );
  }
}
