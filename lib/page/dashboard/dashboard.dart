import 'package:digicoop/page/nav/mainNav.dart';
import 'package:digicoop/page/verified/getVerified.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({super.key});

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  bool visibility = false;

  void _changed(bool stat) {
    setState(() {
      visibility = stat;
    });
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // dashboardP1Z (2002:139)
            width: double.infinity,
            height: 1086 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                //User Name
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 20 * fem, 0 * fem, 0 * fem),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    24 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          'assets/images/menu.png',
                                          width: 30 * fem,
                                          height: 16.66 * fem,
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(270 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/bell.png',
                                                width: 35 * fem,
                                                height: 35 * fem,
                                              ),
                                              Image.asset(
                                                'assets/images/help.png',
                                                width: 29.17 * fem,
                                                height: 29.17 * fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Hi, Juan',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 24 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xff262626),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    const getverifiedScreen(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                10 * fem,
                                                0 * fem,
                                                0 * fem,
                                                0 * fem),
                                            width: 65 * fem,
                                            height: 20 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff259ded)),
                                              color: const Color(0xff259ded),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      100 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      const Color(0xffe7eaf0),
                                                  offset:
                                                      Offset(0 * fem, 3 * fem),
                                                  blurRadius: 2.5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Verify now',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 9 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xffffffff),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //AVAILABLE BAL

                                    Container(
                                      width: 375 * fem,
                                      height: 79 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        border: Border.all(
                                            color: const Color(0xfff5f5f5)),
                                        color: const Color(0xff259ded),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xffe6eaf0),
                                            offset: Offset(0 * fem, 3 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    15 * fem,
                                                    10 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Available Balance',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3318750858 *
                                                            ffem /
                                                            fem,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    SizedBox(
                                                      child: Image.asset(
                                                        'assets/images/vector-n55.png',
                                                        width: 17 * fem,
                                                        height: 10 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              170 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 58 * fem,
                                                      height: 20 * fem,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff259ded)),
                                                        color: const Color(
                                                            0xff8fd4ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100 * fem),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Cash In +',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 10 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: const Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    15 * fem,
                                                    5 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '₱',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 24 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xffecf8ff),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    Text(
                                                      // F1h (2008:173)
                                                      '12,535.00',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 24 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xffecf8ff),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              150 * fem,
                                                              10 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 84 * fem,
                                                      height: 20 * fem,
                                                      child: Text(
                                                        'Manage Accounts',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 9 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.3318750593 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //ENd

                                    //Link Account
                                    Container(
                                      // newsandupdatesH8j (2015:403)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 20 * fem, 0 * fem, 10 * fem),
                                      child: Text(
                                        'Linked Account',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff231f20),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      // group989b9R (2015:569)
                                      padding: EdgeInsets.fromLTRB(27.5 * fem,
                                          28 * fem, 31.5 * fem, 21 * fem),
                                      width: 375 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xfff5f5f5)),
                                        color: const Color(0xfff3f3f3),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xffe6eaf0),
                                            offset: Offset(0 * fem, 3 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // dashboardscj (2015:405)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 22 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 316 * fem,
                                            ),
                                            child: Text(
                                              'Link your account now for a comprehensive view of your cooperative account balances. Click the button below to get started.',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0x7f1e1e1e),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame163412Arj (2015:406)
                                            margin: EdgeInsets.fromLTRB(
                                                85.5 * fem,
                                                0 * fem,
                                                94.5 * fem,
                                                0 * fem),
                                            width: double.infinity,
                                            height: 35 * fem,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff259ded)),
                                              color: const Color(0xff259ded),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      100 * fem),
                                              boxShadow: [
                                                BoxShadow(
                                                  color:
                                                      const Color(0xffe7eaf0),
                                                  offset:
                                                      Offset(0 * fem, 3 * fem),
                                                  blurRadius: 2.5 * fem,
                                                ),
                                              ],
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Link your account ',
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 12 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xfff3f3f3),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //end
                                    //buttons
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          24 * fem, 20 * fem, 0 * fem, 0 * fem),
                                      width: 321 * fem,
                                      height: 256 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame16339677u (2008:180)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 40 * fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // frame163134e7q (2008:181)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      30 * fem),
                                                  width: double.infinity,
                                                  height: 83 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        // frame162983xPR (2008:182)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // topupdisabled6Vd (2008:184)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      2 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      17.13 *
                                                                          fem,
                                                                      17.5 *
                                                                          fem,
                                                                      20.5 *
                                                                          fem,
                                                                      14.5 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // materialsymbolslightopeninphon (2011:250)
                                                                child: SizedBox(
                                                                  width: 19.38 *
                                                                      fem,
                                                                  height:
                                                                      25 * fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/open-in-phone.png',
                                                                    width:
                                                                        19.38 *
                                                                            fem,
                                                                    height: 25 *
                                                                        fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // dashboardgCw (2008:183)
                                                              'Cash In',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Montserrat',
                                                                fontSize:
                                                                    9 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height:
                                                                    2.6666666667 *
                                                                        ffem /
                                                                        fem,
                                                                color: const Color(
                                                                    0x7f000000),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162984Pd9 (2008:188)
                                                        width: 57 * fem,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // senddisabledKFu (2008:190)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      5 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      13 * fem,
                                                                      13.99 *
                                                                          fem,
                                                                      13.92 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // senticonPWf (2008:192)
                                                                child: SizedBox(
                                                                  width: 30.01 *
                                                                      fem,
                                                                  height:
                                                                      30.08 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/sent-icon.png',
                                                                    width:
                                                                        30.01 *
                                                                            fem,
                                                                    height:
                                                                        30.08 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dashboardhnF (2008:189)
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth:
                                                                    32 * fem,
                                                              ),
                                                              child: Text(
                                                                'Send\nMoney',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      9 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height: 1 *
                                                                      ffem /
                                                                      fem,
                                                                  color: const Color(
                                                                      0x7f000000),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162986oqH (2008:194)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // paybillsdisabled9u9 (2008:196)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      2 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      12 * fem,
                                                                      14 * fem,
                                                                      11.58 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // mobilephonebilliconRrf (2008:198)
                                                                child: SizedBox(
                                                                  width:
                                                                      30 * fem,
                                                                  height:
                                                                      33.42 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/mobile-phone-bill-icon.png',
                                                                    width: 30 *
                                                                        fem,
                                                                    height:
                                                                        33.42 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // dashboardwq1 (2008:195)
                                                              'Pay Bills',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Montserrat',
                                                                fontSize:
                                                                    9 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height:
                                                                    2.6666666667 *
                                                                        ffem /
                                                                        fem,
                                                                color: const Color(
                                                                    0x7f000000),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162982THZ (2008:201)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // eloaddisabledCF9 (2008:203)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      2 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      14 * fem,
                                                                      14 * fem,
                                                                      13 * fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // communicationsmartphonesvgrepo (2008:205)
                                                                child: SizedBox(
                                                                  width:
                                                                      30 * fem,
                                                                  height:
                                                                      30 * fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/communication-smartphone.png',
                                                                    width: 30 *
                                                                        fem,
                                                                    height: 30 *
                                                                        fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              // dashboardP4j (2008:202)
                                                              'E-Load',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Montserrat',
                                                                fontSize:
                                                                    9 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                height:
                                                                    2.6666666667 *
                                                                        ffem /
                                                                        fem,
                                                                color: const Color(
                                                                    0x7f000000),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  // frame1632747mR (2008:211)
                                                  width: double.infinity,
                                                  height: 85 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        // frame162980BWP (2008:212)
                                                        width: 57 * fem,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // loansdisabledWYf (2008:214)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      6 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      14 * fem,
                                                                      14 * fem,
                                                                      13.28 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // homeinsuranceiconaYX (2008:216)
                                                                child: SizedBox(
                                                                  width:
                                                                      30 * fem,
                                                                  height:
                                                                      29.72 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/home-insurance-icon.png',
                                                                    width: 30 *
                                                                        fem,
                                                                    height:
                                                                        29.72 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dashboard6mm (2008:213)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      1 * fem,
                                                                      0 * fem),
                                                              child: Text(
                                                                'Loans',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      9 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: const Color(
                                                                      0xff828282),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162985zs9 (2008:219)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // balancetransferdisabledwnP (2008:221)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      6 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      15 * fem,
                                                                      14 * fem,
                                                                      18.89 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // banktransfericon1d9R (2008:223)
                                                                child: SizedBox(
                                                                  width:
                                                                      30 * fem,
                                                                  height:
                                                                      23.11 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/bank-transfer-icon.png',
                                                                    width: 30 *
                                                                        fem,
                                                                    height:
                                                                        23.11 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dashboardwfu (2008:220)
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth:
                                                                    40 * fem,
                                                              ),
                                                              child: Text(
                                                                'Balance Transfer',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      9 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: const Color(
                                                                      0xff828282),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162985zs9 (2008:219)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // balancetransferdisabledwnP (2008:221)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      6 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      13 * fem,
                                                                      15 * fem,
                                                                      14 * fem,
                                                                      18.89 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // banktransfericon1d9R (2008:223)
                                                                child: SizedBox(
                                                                  width:
                                                                      30 * fem,
                                                                  height:
                                                                      23.11 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/insurance.png',
                                                                    width: 30 *
                                                                        fem,
                                                                    height:
                                                                        23.11 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dashboardwfu (2008:220)
                                                              constraints:
                                                                  BoxConstraints(
                                                                maxWidth:
                                                                    40 * fem,
                                                              ),
                                                              child: Text(
                                                                'Receive\nMoney',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      9 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: const Color(
                                                                      0xff828282),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162981znb (2008:239)
                                                        width: 57 * fem,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // remittancedisabledwxj (2008:241)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      4 * fem),
                                                              padding: EdgeInsets
                                                                  .fromLTRB(
                                                                      15 * fem,
                                                                      15 * fem,
                                                                      14.36 *
                                                                          fem,
                                                                      14.36 *
                                                                          fem),
                                                              width: double
                                                                  .infinity,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: const Color(
                                                                    0xfff0f7ff),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                boxShadow: [
                                                                  BoxShadow(
                                                                    color: const Color(
                                                                        0xffe7eaf0),
                                                                    offset: Offset(
                                                                        0 * fem,
                                                                        3 * fem),
                                                                    blurRadius:
                                                                        2.5 *
                                                                            fem,
                                                                  ),
                                                                ],
                                                              ),
                                                              child: Center(
                                                                // ctmloginqYK (2008:243)
                                                                child: SizedBox(
                                                                  width: 27.64 *
                                                                      fem,
                                                                  height:
                                                                      27.64 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/ctmlogin.png',
                                                                    width:
                                                                        27.64 *
                                                                            fem,
                                                                    height:
                                                                        27.64 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // dashboardZUK (2008:240)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      1 * fem,
                                                                      0 * fem),
                                                              child: Text(
                                                                'CTM Login',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      9 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.6666666667 *
                                                                          ffem /
                                                                          fem,
                                                                  color: const Color(
                                                                      0xff828282),
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
                                          Container(
                                            // dashboardszo (2011:255)
                                            margin: EdgeInsets.fromLTRB(1 * fem,
                                                0 * fem, 0 * fem, 0 * fem),
                                            child: InkWell(
                                              onTap: () {
                                                // Handle click action here
                                                //  _showContainerDialog(context);
                                                visibility
                                                    ? _changed(false)
                                                    : _changed(true);
                                              },
                                              child: Text(
                                                'View All Services',
                                                textAlign: TextAlign.center,
                                                style: SafeGoogleFont(
                                                  'Montserrat',
                                                  fontSize: 14 * ffem,
                                                  fontWeight: FontWeight.w600,
                                                  height: 1.2175 * ffem / fem,
                                                  color:
                                                      const Color(0xff259ded),
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
                      ),
                      const SizedBox(
                        height: 250,
                      ),
                    ],
                  ),
                ),
                //

                //botom
                const navBottom(pageActive: "home"),
                Positioned(
                  // frame163410HdR (2062:20277)
                  left: 23 * fem,
                  top: 723 * fem,
                  child: SizedBox(
                    width: 372 * fem,
                    height: 171 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // newsandupdatesoLs (2062:20278)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Text(
                            'News and Updates',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff231f20),
                            ),
                          ),
                        ),
                        SizedBox(
                          // promoadWm5 (2062:20279)
                          width: 372 * fem,
                          height: 134 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10 * fem),
                            child: Image.asset(
                              'assets/images/promoad.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //  view all
                visibility
                    ? Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 5,
                              height: 1086 * fem,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),

                          //View all

                          Positioned(
                            // group990iHu (2015:1442)
                            left: 0 * fem,
                            top: 240 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  42 * fem, 29.75 * fem, 44.5 * fem, 44 * fem),
                              width: 414 * fem,
                              height: 460 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupepttbsV (LJesNwrmwTuecBKUPvEPtT)
                                    margin: EdgeInsets.fromLTRB(
                                        7 * fem, 0 * fem, 6 * fem, 47 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // viewallXWF (2015:1437)
                                          margin: EdgeInsets.fromLTRB(
                                              0 * fem,
                                              4.25 * fem,
                                              220.25 * fem,
                                              0 * fem),
                                          child: Text(
                                            'View All',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            visibility
                                                ? _changed(false)
                                                : _changed(true);
                                          },
                                          child: SizedBox(
                                            // xblackEfZ (2015:1438)
                                            width: 21.25 * fem,
                                            height: 21.25 * fem,
                                            child: Image.asset(
                                              'assets/images/xblack.png',
                                              width: 21.25 * fem,
                                              height: 21.25 * fem,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    // frame163397y7M (2015:1351)
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame1631347UT (2015:1352)
                                          margin: EdgeInsets.fromLTRB(4 * fem,
                                              0 * fem, 2.5 * fem, 30 * fem),
                                          width: double.infinity,
                                          height: 83 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame162983q9Z (2015:1353)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    24 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // topupdisabledxjy (2015:1355)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // additioncoloroutlineiconTwd (2015:1357)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          child: Image.asset(
                                                            'assets/images/addition-color-outline-icon.png',
                                                            width: 30 * fem,
                                                            height: 30 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardsVZ (2015:1354)
                                                      'Cash In',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162984cT9 (2015:1359)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    24 * fem,
                                                    0 * fem),
                                                width: 71 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // senddisabledj1y (2015:1361)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              7 * fem,
                                                              0 * fem,
                                                              7 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              13 * fem,
                                                              13.99 * fem,
                                                              13.92 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // senticonDhq (2015:1363)
                                                        child: SizedBox(
                                                          width: 30.01 * fem,
                                                          height: 30.08 * fem,
                                                          child: Image.asset(
                                                            'assets/images/sent-icon.png',
                                                            width: 30.01 * fem,
                                                            height: 30.08 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardYVD (2015:1360)
                                                      'Send Money',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162986V9Z (2015:1365)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    31 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // paybillsdisabled1tb (2015:1367)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              12 * fem,
                                                              14 * fem,
                                                              11.58 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // mobilephonebillicon7gj (2015:1369)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 33.42 * fem,
                                                          child: Image.asset(
                                                            'assets/images/mobile-phone-bill-icon.png',
                                                            width: 30 * fem,
                                                            height: 33.42 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardpr3 (2015:1366)
                                                      'Pay Bills',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162982Af1 (2015:1372)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // eloaddisabledWis (2015:1374)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // communicationsmartphonesvgrepo (2015:1376)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          child: Image.asset(
                                                            'assets/images/communication-smartphone.png',
                                                            width: 30 * fem,
                                                            height: 30 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardj5q (2015:1373)
                                                      'E-Load',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame163274fkB (2015:1382)
                                          margin: EdgeInsets.fromLTRB(4 * fem,
                                              0 * fem, 0 * fem, 24 * fem),
                                          height: 93 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // frame162980CVD (2015:1383)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    31 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // loansdisablediyM (2015:1385)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              5 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13.28 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // homeinsuranceiconDv7 (2015:1387)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 29.72 * fem,
                                                          child: Image.asset(
                                                            'assets/images/home-insurance-icon.png',
                                                            width: 30 * fem,
                                                            height: 29.72 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardjtT (2015:1384)
                                                      'Loans',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2125 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162985gYo (2015:1390)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // balancetransferdisabledqAo (2015:1392)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              6 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              15 * fem,
                                                              14 * fem,
                                                              18.89 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // banktransfericon18fh (2015:1394)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 23.11 * fem,
                                                          child: Image.asset(
                                                            'assets/images/bank-transfer-icon.png',
                                                            width: 30 * fem,
                                                            height: 23.11 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // dashboard43Z (2015:1391)
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 48 * fem,
                                                      ),
                                                      child: Text(
                                                        'Balance Transfer',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroup9exhmyZ (LJesxvt9igvAgczb3v9EXh)
                                                padding: EdgeInsets.fromLTRB(
                                                    31 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // frame162988V8s (2015:1398)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              28.5 * fem,
                                                              0 * fem),
                                                      width: 57 * fem,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // insurancedisabled1su (2015:1400)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    16 * fem,
                                                                    15 * fem,
                                                                    13.89 * fem,
                                                                    14.81 *
                                                                        fem),
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xfff0f7ff),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5 * fem),
                                                            ),
                                                            child: Center(
                                                              // homeinsuranceiconi1d (2015:1402)
                                                              child: SizedBox(
                                                                width:
                                                                    27.11 * fem,
                                                                height:
                                                                    27.19 * fem,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/insurance.png',
                                                                  width: 27.11 *
                                                                      fem,
                                                                  height:
                                                                      27.19 *
                                                                          fem,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // dashboardpaT (2015:1399)
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth:
                                                                  45 * fem,
                                                            ),
                                                            child: Text(
                                                              'Receive\nMoney',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Inter',
                                                                fontSize:
                                                                    12 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2125 *
                                                                    ffem /
                                                                    fem,
                                                                color: Color(
                                                                    0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      // frame162981L31 (2015:1411)
                                                      width: 62 * fem,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // remittancedisableds2w (2015:1413)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    2.5 * fem,
                                                                    0 * fem,
                                                                    2.5 * fem,
                                                                    4 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    15 * fem,
                                                                    15 * fem,
                                                                    14.36 * fem,
                                                                    14.36 *
                                                                        fem),
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xfff0f7ff),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5 * fem),
                                                            ),
                                                            child: Center(
                                                              // ctmloginm8K (2015:1415)
                                                              child: SizedBox(
                                                                width:
                                                                    27.64 * fem,
                                                                height:
                                                                    27.64 * fem,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/ctmlogin.png',
                                                                  width: 27.64 *
                                                                      fem,
                                                                  height:
                                                                      27.64 *
                                                                          fem,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            // dashboard5Pu (2015:1412)
                                                            'CTM Login',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style:
                                                                SafeGoogleFont(
                                                              'Inter',
                                                              fontSize:
                                                                  12 * ffem,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              height: 2 *
                                                                  ffem /
                                                                  fem,
                                                              color: Color(
                                                                  0xff000000),
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
                                          // frame163398p6b (2015:1422)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 178.5 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 83 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame162981Fhh (2015:1423)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    27 * fem,
                                                    0 * fem),
                                                width: 65 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // remittancedisabledBLT (2015:1425)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              4 * fem,
                                                              0 * fem,
                                                              4 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              15 * fem,
                                                              14 * fem,
                                                              14.82 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // globalbanktransfericonsj5 (2015:1427)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 27.18 * fem,
                                                          child: Image.asset(
                                                            'assets/images/global-bank-transfer-icon.png',
                                                            width: 30 * fem,
                                                            height: 27.18 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardCWT (2015:1424)
                                                      'Remittance',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162987YKR (2015:1430)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // insurancedisabledUis (2015:1432)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              14 * fem,
                                                              11 * fem,
                                                              13 * fem,
                                                              11.76 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // healthmedicalinsuranceiconaG7 (2015:1434)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 34.24 * fem,
                                                          child: Image.asset(
                                                            'assets/images/health-medical-insurance-icon.png',
                                                            width: 30 * fem,
                                                            height: 34.24 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboard5if (2015:1431)
                                                      'Insurance',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color:
                                                            Color(0xff000000),
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
                      )
                    : Container(),

                // End view all
              ],
            ),
          ),
        ),
      ),
    );
  }
}
