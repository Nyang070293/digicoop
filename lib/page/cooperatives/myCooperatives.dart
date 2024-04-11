import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class myCooperativesScreen extends StatefulWidget {
  const myCooperativesScreen({super.key});

  @override
  State<myCooperativesScreen> createState() => _myCooperativesScreenState();
}

class _myCooperativesScreenState extends State<myCooperativesScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                            0 * fem, 0 * fem, 84 * fem, 0 * fem),
                        child: Text(
                          'My Cooperatives',
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
                        SizedBox(
                          height: 800,
                          child: Container(
                            // autogroupbmdqubm (LJeg6GfdUeJ55BR4FBbMdq)
                            padding: EdgeInsets.fromLTRB(
                                21 * fem, 0 * fem, 21 * fem, 45 * fem),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group9842gP (114:14743)
                                  margin: EdgeInsets.fromLTRB(
                                      11 * fem, 0 * fem, 126 * fem, 4 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // solarhandmoneylinearLSB (114:14745)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            1.38 * fem, 9.25 * fem, 0 * fem),
                                        width: 22.5 * fem,
                                        height: 21.38 * fem,
                                        child: Image.asset(
                                          'assets/images/cooperatives.png',
                                          width: 22.5 * fem,
                                          height: 21.38 * fem,
                                        ),
                                      ),
                                      Text(
                                        // authenticationdgB (114:14744)
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
                                  // group982FxT (114:14751)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 16 * fem),
                                  width: double.infinity,
                                  height: 160 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Container(
                                    // frame283PYs (114:14752)
                                    padding: EdgeInsets.fromLTRB(
                                        10 * fem, 10 * fem, 6 * fem, 13 * fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x26000000),
                                          offset: Offset(0 * fem, 0 * fem),
                                          blurRadius: 2.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // frame163200H8T (114:14806)
                                          width: 50 * fem,
                                          height: 14 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff259ded)),
                                            color: Color(0x3fbfe5ff),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
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
                                          // group470jFM (114:14757)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 90 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 70 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // group469ras (114:14760)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    23 * fem,
                                                    11 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    17 * fem,
                                                    17 * fem,
                                                    18 * fem,
                                                    18 * fem),
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff1f6ff),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          29.5 * fem),
                                                ),
                                                child: Center(
                                                  // group468xP1 (114:14762)
                                                  child: SizedBox(
                                                    width: 24 * fem,
                                                    height: 24 * fem,
                                                    child: Image.asset(
                                                      'assets/images/coopBuilding.png',
                                                      width: 24 * fem,
                                                      height: 24 * fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // autogrouplzmmGuV (LJehLQG7E35Eti2biPLzMM)
                                                width: 184 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // binalbaganmultipurposecooperat (114:14759)
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 184 * fem,
                                                      ),
                                                      child: Text(
                                                        'Binalbagan Multipurpose Cooperative',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff259ded),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogrouprlrdX4j (LJehRUwyY2bt5th12aRLRD)
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              3 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // frame163144FWX (114:14765)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    81 * fem,
                                                                    0 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    1 * fem,
                                                                    0.5 * fem,
                                                                    0 * fem,
                                                                    0.5 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // peopleteamprimaryxfq (114:14766)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          10 *
                                                                              fem,
                                                                          0 * fem),
                                                                  width:
                                                                      14 * fem,
                                                                  height:
                                                                      12 * fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/peopleteam.png',
                                                                    width: 14 *
                                                                        fem,
                                                                    height: 12 *
                                                                        fem,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // membersUPH (114:14768)
                                                                  '114 Members',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0x7f000000),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // frame1631431e7 (114:14769)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    6 * fem,
                                                                    0 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    1.33 * fem,
                                                                    0.5 * fem,
                                                                    0 * fem,
                                                                    0.5 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // icbaselineemailiHd (114:14770)
                                                                  margin: EdgeInsets.fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      10.33 *
                                                                          fem,
                                                                      0 * fem),
                                                                  width: 13.33 *
                                                                      fem,
                                                                  height:
                                                                      10.67 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/ic-baseline-email.png',
                                                                    width:
                                                                        13.33 *
                                                                            fem,
                                                                    height:
                                                                        10.67 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // jasantostraxiontechnet2JK (114:14772)
                                                                  'jasantos@traxiontech.net',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0x7f000000),
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
                                          // frame284XVy (114:14774)
                                          width: 154 * fem,
                                          height: 33 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff259ded)),
                                            borderRadius: BorderRadius.circular(
                                                100 * fem),
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
                                  // group982bEw (114:14714)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 173 * fem),
                                  width: double.infinity,
                                  height: 180 * fem,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                  ),
                                  child: Container(
                                    // frame283XPV (114:14715)
                                    padding: EdgeInsets.fromLTRB(
                                        10 * fem, 10 * fem, 6 * fem, 11 * fem),
                                    width: double.infinity,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xffffffff),
                                      borderRadius:
                                          BorderRadius.circular(5 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x26000000),
                                          offset: Offset(0 * fem, 0 * fem),
                                          blurRadius: 2.5 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Container(
                                          // frame163199PwV (114:14717)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 10 * fem),
                                          width: 50 * fem,
                                          height: 14 * fem,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xff259ded)),
                                            color: Color(0x3fbfe5ff),
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
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
                                          // group470423 (114:14720)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 90 * fem, 32 * fem),
                                          width: double.infinity,
                                          height: 70 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // group469BcT (114:14723)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    23 * fem,
                                                    11 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    17 * fem,
                                                    17 * fem,
                                                    18 * fem,
                                                    18 * fem),
                                                decoration: BoxDecoration(
                                                  color: Color(0xfff1f6ff),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          29.5 * fem),
                                                ),
                                                child: Center(
                                                  // group468HvP (114:14725)
                                                  child: SizedBox(
                                                    width: 24 * fem,
                                                    height: 24 * fem,
                                                    child: Image.asset(
                                                      'assets/images/coopBuilding.png',
                                                      width: 24 * fem,
                                                      height: 24 * fem,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // autogrouptjuhdDZ (LJegSbR6icQdqv4fVwtjuH)
                                                width: 184 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // binalbaganmultipurposecooperat (114:14722)
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 184 * fem,
                                                      ),
                                                      child: Text(
                                                        'Binalbagan Multipurpose Cooperative',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 14 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color:
                                                              Color(0xff259ded),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // autogroupx4asUEB (LJegabBmxfUAoYoz8BX4As)
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              3 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            // frame163144onF (114:14728)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    81 * fem,
                                                                    0 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    1 * fem,
                                                                    0.5 * fem,
                                                                    0 * fem,
                                                                    0.5 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // peopleteamprimaryjA7 (114:14729)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          0 *
                                                                              fem,
                                                                          0 *
                                                                              fem,
                                                                          10 *
                                                                              fem,
                                                                          0 * fem),
                                                                  width:
                                                                      14 * fem,
                                                                  height:
                                                                      12 * fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/peopleteam.png',
                                                                    width: 14 *
                                                                        fem,
                                                                    height: 12 *
                                                                        fem,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // membersqD9 (114:14731)
                                                                  '114 Members',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0x7f000000),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // frame163143y4T (114:14732)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    6 * fem,
                                                                    0 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    1.33 * fem,
                                                                    0.5 * fem,
                                                                    0 * fem,
                                                                    0.5 * fem),
                                                            width:
                                                                double.infinity,
                                                            child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Container(
                                                                  // icbaselineemailH59 (114:14733)
                                                                  margin: EdgeInsets.fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      10.33 *
                                                                          fem,
                                                                      0 * fem),
                                                                  width: 13.33 *
                                                                      fem,
                                                                  height:
                                                                      10.67 *
                                                                          fem,
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/ic-baseline-email.png',
                                                                    width:
                                                                        13.33 *
                                                                            fem,
                                                                    height:
                                                                        10.67 *
                                                                            fem,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  // jasantostraxiontechnetnXh (114:14735)
                                                                  'jasantos@traxiontech.net',
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        12 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0x7f000000),
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
                                          // frame287WyV (114:14798)
                                          margin: EdgeInsets.fromLTRB(111 * fem,
                                              0 * fem, 2 * fem, 0 * fem),
                                          width: double.infinity,
                                          height: 33 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame2843iX (114:14800)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    10 * fem,
                                                    0 * fem),
                                                width: 111 * fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff259ded)),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100 * fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'View Details',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 11 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color(0xff259ded),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // frame284ukj (114:14803)
                                                width: 122 * fem,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color(0xff259ded)),
                                                  color: Color(0xff259ded),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100 * fem),
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Set as Primary',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 11 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
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
                                  // group410Cjq (114:14809)
                                  margin: EdgeInsets.fromLTRB(
                                      10 * fem, 0 * fem, 9 * fem, 0 * fem),
                                  child: TextButton(
                                    onPressed: () {},
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(44.5 * fem,
                                          13 * fem, 23.67 * fem, 12 * fem),
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Color(0xff259ded),
                                        borderRadius:
                                            BorderRadius.circular(100 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x3f000000),
                                            offset: Offset(0 * fem, 4 * fem),
                                            blurRadius: 2 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // explorecooperativeEgX (114:14811)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 14.17 * fem, 0 * fem),
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
                                          GestureDetector(
                                            onTap: () {
                                              context.pushReplacementNamed(
                                                  cooperatives);
                                            },
                                            child: Container(
                                              // solararrowrightbrokenYhD (114:14812)
                                              width: 26.67 * fem,
                                              height: 20 * fem,
                                              child: Image.asset(
                                                'assets/images/solar-arrow-right-broken.png',
                                                width: 26.67 * fem,
                                                height: 20 * fem,
                                              ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
