import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class cashinctmScreen extends StatefulWidget {
  const cashinctmScreen({super.key});

  @override
  State<cashinctmScreen> createState() => _cashinctmScreenState();
}

class _cashinctmScreenState extends State<cashinctmScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // step2aboutyourselfBvX (75:116)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  // autogroupqjsbK19 (Ga7kW1LnPD874LtBUYQJSb)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  padding: EdgeInsets.fromLTRB(
                      33.22 * fem, 25 * fem, 20 * fem, 23 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3fb0b0b0),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(cashinMain);
                        },
                        child: Container(
                          // arrow1y5h (75:714)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 73.22 * fem, 4.22 * fem),
                          width: 29.57 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/arrow-left.png',
                            width: 29.57 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ),
                      Container(
                        // createaccountUHM (75:716)
                        margin: EdgeInsets.fromLTRB(
                            30 * fem, 0 * fem, 84 * fem, 0 * fem),
                        child: Text(
                          'Cash In',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Personal Information
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Positioned(
                          // group4882hV (85:4325)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                27 * fem, 0 * fem, 16 * fem, 160 * fem),
                            width: 414 * fem,
                            height: 757.5 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupkcnkuFV (LJcDLNY25zhqpcz3KukCNK)
                                  margin: EdgeInsets.fromLTRB(
                                      3.5 * fem, 0 * fem, 33 * fem, 6 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // atm1pdM (85:4478)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 7.5 * fem, 1 * fem),
                                        width: 25 * fem,
                                        height: 25 * fem,
                                        child: Image.asset(
                                          'assets/images/atm.png',
                                          width: 25 * fem,
                                          height: 25 * fem,
                                        ),
                                      ),
                                      Text(
                                        // authenticationL5u (85:4329)
                                        'Cooperative Teller Machine',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 22 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff262626),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // stepstocashinviactmmachineFif (85:4330)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 131 * fem, 19 * fem),
                                  child: Text(
                                    'Steps to Cash-In via CTM machine',
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
                                  // autogroup1zjbZUT (LJcDfwojmqHGFe8DGn1zJB)
                                  padding: EdgeInsets.fromLTRB(
                                      22 * fem, 27 * fem, 17 * fem, 30 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xfff5f5f5)),
                                    color: Color(0xffffffff),
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xffcbd2df),
                                        offset: Offset(0 * fem, 4 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // group965dUK (85:4492)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 31 * fem),
                                        width: double.infinity,
                                        height: 76 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // ctm2Ldd (85:4489)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  16 * fem,
                                                  0 * fem),
                                              width: 60 * fem,
                                              height: 60 * fem,
                                              child: Image.asset(
                                                'assets/images/ctm.png',
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Container(
                                              // autogrouptthzfR1 (LJcDswTkdusZh6FCD8TThZ)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step1c5M (85:4491)
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    child: Text(
                                                      'Step 1',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff185cbd),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    // visitanycoopnettellermachinect (85:4490)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 256 * fem,
                                                    ),
                                                    child: Text(
                                                      'Visit any CoopNET Teller Machine\n(CTM), that you would like to cash in\nto your coopNET wallet.',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group966cDm (85:4493)
                                        margin: EdgeInsets.fromLTRB(6 * fem,
                                            0 * fem, 9 * fem, 30 * fem),
                                        padding: EdgeInsets.fromLTRB(9.33 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 60 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // qrcode2WK9 (85:4497)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  4.69 * fem,
                                                  19.32 * fem,
                                                  0 * fem),
                                              width: 41.35 * fem,
                                              height: 50.62 * fem,
                                              child: Image.asset(
                                                'assets/images/qr-code.png',
                                                width: 41.35 * fem,
                                                height: 50.62 * fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroup7njjCxf (LJcE2giBS6UEzSVx9G7NJj)
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step2MKm (85:4494)
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    child: Text(
                                                      'Step 2',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff185cbd),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // loginviaqrcodeonthemachinefrF (85:4495)
                                                    'Login via QR Code on the machine.',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.3318751199 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff828282),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group969Q39 (85:4553)
                                        margin: EdgeInsets.fromLTRB(11 * fem,
                                            0 * fem, 16 * fem, 30 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // ewallet1XNf (85:4536)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  18 * fem,
                                                  0 * fem),
                                              width: 48 * fem,
                                              height: 48 * fem,
                                              child: Image.asset(
                                                'assets/images/e-wallet-1.png',
                                                width: 48 * fem,
                                                height: 48 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group967EXy (85:4504)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  4 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step3a63 (85:4505)
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    child: Text(
                                                      'Step 3',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff185cbd),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // clickcashinandselectcoopnetewa (85:4506)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 239 * fem,
                                                    ),
                                                    child: RichText(
                                                      text: TextSpan(
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.3318751199 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff828282),
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: 'Click “',
                                                          ),
                                                          TextSpan(
                                                            text: 'Cash In',
                                                            style:
                                                                SafeGoogleFont(
                                                              'Montserrat',
                                                              fontSize:
                                                                  14 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height:
                                                                  1.3318751199 *
                                                                      ffem /
                                                                      fem,
                                                              color: Color(
                                                                  0xff828282),
                                                            ),
                                                          ),
                                                          TextSpan(
                                                            text:
                                                                '” and select coopnet\nE-wallet.',
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
                                      Container(
                                        // group970xVu (85:4554)
                                        margin: EdgeInsets.fromLTRB(8 * fem,
                                            0 * fem, 3 * fem, 31 * fem),
                                        padding: EdgeInsets.fromLTRB(1.29 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 76 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // withdrawal1scs (85:4527)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  5.38 * fem,
                                                  26.29 * fem,
                                                  0 * fem),
                                              width: 41.42 * fem,
                                              height: 37.55 * fem,
                                              child: Image.asset(
                                                'assets/images/withdrawal.png',
                                                width: 41.42 * fem,
                                                height: 37.55 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group968yA7 (85:4544)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step4KUs (85:4545)
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    child: Text(
                                                      'Step 4',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff185cbd),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // depositcashintothemachinemakes (85:4546)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 252 * fem,
                                                    ),
                                                    child: Text(
                                                      'Deposit cash into the machine.\nMake sure all the details are correct\nbefore proceeding.',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        // group971WJT (85:4561)
                                        margin: EdgeInsets.fromLTRB(
                                            5 * fem, 0 * fem, 3 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(5.72 * fem,
                                            6 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 82 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // freemium1RRR (85:4547)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0.46 * fem,
                                                  28.72 * fem,
                                                  0 * fem),
                                              width: 37.57 * fem,
                                              height: 36.08 * fem,
                                              child: Image.asset(
                                                'assets/images/freemium.png',
                                                width: 37.57 * fem,
                                                height: 36.08 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group969jS7 (85:4558)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step5tZu (85:4559)
                                                    margin: EdgeInsets.fromLTRB(
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        1 * fem),
                                                    child: Text(
                                                      'Step 5',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff185cbd),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // pleasewaitforthereceiptandconf (85:4560)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 252 * fem,
                                                    ),
                                                    child: Text(
                                                      'Please wait for the receipt and\nconfirmation sent via SMS once the\ncash-in is successful.',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3318751199 *
                                                            ffem /
                                                            fem,
                                                        color:
                                                            Color(0xff828282),
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
                              ],
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
        ),
      ),
    );
  }
}
