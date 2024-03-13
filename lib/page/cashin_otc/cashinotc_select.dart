import 'package:digicoop/page/cashin_otc/cashinotc.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class cashinotcselectScreen extends StatefulWidget {
  const cashinotcselectScreen({super.key});

  @override
  State<cashinotcselectScreen> createState() => _cashinotcselectScreenState();
}

class _cashinotcselectScreenState extends State<cashinotcselectScreen> {
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const cashinotcScreen(),
                            ),
                          );
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
                          // group488NXZ (85:4647)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                27 * fem, 0 * fem, 16 * fem, 186 * fem),
                            width: 414 * fem,
                            height: 764.9 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffffffff),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // group259SGX (85:4715)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 127 * fem, 12.97 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 136 * fem, 0 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // rectangle8L71 (85:4717)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 22.97 * fem, 0 * fem),
                                        width: 58.03 * fem,
                                        height: 58.03 * fem,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                          border: Border.all(
                                              color: Color(0xffe7e7e7)),
                                          color: Color(0xffffffff),
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/7eleven.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // p2B (85:4716)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            1.37 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          '7-11',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff3f3f3f),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // stepstocashinatanybranchof711j (85:4718)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 20 * fem),
                                  child: Text(
                                    'Steps to Cash-In at any branch of 7-11',
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
                                  // group975Rnf (87:4763)
                                  padding: EdgeInsets.fromLTRB(
                                      20 * fem, 27 * fem, 20 * fem, 37 * fem),
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
                                        // group965687 (85:4654)
                                        margin: EdgeInsets.fromLTRB(3 * fem,
                                            0 * fem, 22 * fem, 31 * fem),
                                        padding: EdgeInsets.fromLTRB(2.81 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 95 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // shopcounterwoman1zDV (85:4719)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  3.75 * fem,
                                                  17.81 * fem,
                                                  0 * fem),
                                              width: 54.38 * fem,
                                              height: 53.44 * fem,
                                              child: Image.asset(
                                                'assets/images/shop-counter-woman.png',
                                                width: 54.38 * fem,
                                                height: 53.44 * fem,
                                              ),
                                            ),
                                            Container(
                                              // autogroupdprs6GX (LJcFEV3DEe2JCQeMmEDprs)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step1qV1 (85:4655)
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
                                                    // visitanoverthecounterpartneran (85:4656)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 231 * fem,
                                                    ),
                                                    child: Text(
                                                      'Visit an over-the-counter partner\nand inform the cashier that you\nwould like to cash in to your\ncoopNET wallet.',
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
                                        // group972d9y (87:4760)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 37 * fem, 30 * fem),
                                        width: double.infinity,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // mobile2kVV (87:4733)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  18 * fem,
                                                  0 * fem),
                                              width: 60 * fem,
                                              height: 60 * fem,
                                              child: Image.asset(
                                                'assets/images/mobile.png',
                                                width: 60 * fem,
                                                height: 60 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group9664FH (85:4658)
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step21wD (85:4659)
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
                                                  Container(
                                                    // provideyourmobileregisterednum (85:4660)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 216 * fem,
                                                    ),
                                                    child: Text(
                                                      'Provide your mobile registered\nnumber and cash in amount.',
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
                                        // group973dBu (87:4761)
                                        margin: EdgeInsets.fromLTRB(7 * fem,
                                            0 * fem, 24 * fem, 31 * fem),
                                        padding: EdgeInsets.fromLTRB(7.01 * fem,
                                            6 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 82 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              // moneyinvestment1Lc7 (87:4745)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  19 * fem,
                                                  27.15 * fem),
                                              width: 45.99 * fem,
                                              height: 38.85 * fem,
                                              child: Image.asset(
                                                'assets/images/money-investment.png',
                                                width: 45.99 * fem,
                                                height: 38.85 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group967esh (85:4677)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step31TM (85:4678)
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
                                                    // paytheamountandwaitforthecashi (85:4679)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 228 * fem,
                                                    ),
                                                    child: Text(
                                                      'Pay the amount and wait for the\ncashier to confirm and print the\nreceipt.',
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
                                        // group9742NT (87:4762)
                                        margin: EdgeInsets.fromLTRB(7 * fem,
                                            0 * fem, 32 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(5.72 * fem,
                                            1 * fem, 0 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 77 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // freemium1YLo (87:4754)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  5.46 * fem,
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
                                              // group968TCs (85:4690)
                                              height: double.infinity,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // step41VH (85:4691)
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
                                                    // youwillreceiveansmsconfirmatio (85:4692)
                                                    constraints: BoxConstraints(
                                                      maxWidth: 250 * fem,
                                                    ),
                                                    child: Text(
                                                      'You will receive an SMS\nconfirmation for the successful \ncash in.',
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
