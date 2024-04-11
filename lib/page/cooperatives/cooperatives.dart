import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class cooperativesScreen extends StatefulWidget {
  const cooperativesScreen({super.key});

  @override
  State<cooperativesScreen> createState() => _cooperativesScreenState();
}

class _cooperativesScreenState extends State<cooperativesScreen> {
  bool isSearchShow = false;
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
                          'Cooperatives',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          // materialsymbolssearchvFy (85:4642)
                          width: 25.5 * fem,
                          height: 25.5 * fem,
                          child: const Icon(
                            Icons.search_sharp,
                            size: 32,
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
                        Container(
                          // autogroupu8rtKyR (LJeV6fpNBtoSApJ2LzU8rT)
                          padding: EdgeInsets.fromLTRB(
                              21 * fem, 58 * fem, 21 * fem, 162 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group984qRy (114:13943)
                                margin: EdgeInsets.fromLTRB(
                                    11 * fem, 0 * fem, 169 * fem, 4 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Positioned(
                                      // autogrouprgpzTR9 (LJeZ6yJxdieKxFgU5XRGPZ)
                                      left: 27 * fem,
                                      top: 56 * fem,
                                      child: Container(
                                        width: 362 * fem,
                                        height: 34 * fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // searchforcooperativesBc3 (114:14607)
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
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.3318751199 *
                                                          ffem /
                                                          fem,
                                                      color: Color(0xff828282),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // group8464Qw (114:14603)
                                              left: 0 * fem,
                                              top: 0 * fem,
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    3.9 * fem,
                                                    3.75 * fem,
                                                    3.9 * fem,
                                                    3.75 * fem),
                                                width: 362 * fem,
                                                height: 34 * fem,
                                                child: Align(
                                                  // materialsymbolssearchNAj (114:14605)
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    width: 23.41 * fem,
                                                    height: 22.5 * fem,
                                                    child: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              330.79 * fem,
                                                              4 * fem),
                                                      child: Image.asset(
                                                        'assets/images/material-symbols-search.png',
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
                                  ],
                                ),
                              ),
                              Container(
                                // group984qRy (114:13943)
                                margin: EdgeInsets.fromLTRB(
                                    11 * fem, 0 * fem, 169 * fem, 4 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // solarhandmoneylinear9Bm (114:13945)
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
                                      // authenticationePR (114:13944)
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
                                // applyasmemberygb (114:13950)
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
                                // group9826WK (114:13951)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 21 * fem),
                                width: double.infinity,
                                height: 160 * fem,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Container(
                                  // frame283dWF (114:14035)
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // frame163199JMV (114:14164)
                                        width: 50 * fem,
                                        height: 14 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xffffa412)),
                                          color: Color(0xfffff1dc),
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
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
                                        // group470wvF (114:14051)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 90 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 70 * fem,
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // group469UfH (114:14054)
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
                                                // group468aiK (114:14056)
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
                                              // autogroupvppqJeK (LJeWGDi9L3k4Mdv83GVpPq)
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
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0xff259ded),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    // autogroupj7dq999 (LJeWRt6iFH7FBXZy8PJ7dq)
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
                                                          // frame163144USK (114:14059)
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
                                                                // peopleteamprimaryzQf (114:14060)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        10 *
                                                                            fem,
                                                                        0 * fem),
                                                                width: 14 * fem,
                                                                height:
                                                                    12 * fem,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/peopleteam.png',
                                                                  width:
                                                                      14 * fem,
                                                                  height:
                                                                      12 * fem,
                                                                ),
                                                              ),
                                                              Text(
                                                                // membersuGj (114:14062)
                                                                '114 Members',
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      12 * ffem,
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
                                                          // frame163143383 (114:14063)
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
                                                                // icbaselineemailMeX (114:14064)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        10.33 *
                                                                            fem,
                                                                        0 * fem),
                                                                width:
                                                                    13.33 * fem,
                                                                height:
                                                                    10.67 * fem,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/ic-baseline-email.png',
                                                                  width: 13.33 *
                                                                      fem,
                                                                  height:
                                                                      10.67 *
                                                                          fem,
                                                                ),
                                                              ),
                                                              Text(
                                                                // jasantostraxiontechnetThZ (114:14066)
                                                                'jasantos@traxiontech.net',
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      12 * ffem,
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
                                        // frame284ZEo (114:14131)
                                        width: 147 * fem,
                                        height: 33 * fem,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Color(0xff259ded)),
                                          borderRadius:
                                              BorderRadius.circular(100 * fem),
                                        ),
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () {
                                              context.pushReplacementNamed(
                                                  cooperativesDisclaimer);
                                            },
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
