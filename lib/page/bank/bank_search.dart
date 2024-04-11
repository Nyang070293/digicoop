import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bankSearchScreen extends StatefulWidget {
  const bankSearchScreen({super.key});

  @override
  State<bankSearchScreen> createState() => _bankSearchScreenState();
}

class _bankSearchScreenState extends State<bankSearchScreen> {
  final TextEditingController _search = TextEditingController();
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
                          context.pushReplacementNamed(bankTransfer);
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
                            0 * fem, 0 * fem, 120 * fem, 0 * fem),
                        child: Text(
                          'Bank Transfer',
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
                        Container(
                          // autogroupu8rtKyR (LJeV6fpNBtoSApJ2LzU8rT)
                          padding: EdgeInsets.fromLTRB(
                              21 * fem, 0 * fem, 21 * fem, 162 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group984qRy (114:13943)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 30 * fem),

                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Positioned(
                                      // autogrouprgpzTR9 (LJeZ6yJxdieKxFgU5XRGPZ)
                                      left: 27 * fem,
                                      top: 56 * fem,
                                      child: Container(
                                        width: 365 * fem,
                                        height: 34 * fem,
                                        child: Stack(
                                          children: [
                                            CommonTextField(
                                              controller: _search,
                                              labelText: 'Search Bank Name',
                                              prefixIconData: Icons.search,
                                              obscureText: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              accentColor:
                                                  const Color(0xff259ded),
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
                                        'assets/images/bank.png',
                                        width: 22.5 * fem,
                                        height: 21.38 * fem,
                                      ),
                                    ),
                                    Text(
                                      // authenticationePR (114:13944)
                                      'Banks',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff262626),
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
                                  'Select a Bank',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3318751199 * ffem / fem,
                                    color: const Color(0xff828282),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group976RvP (87:5338)
                                left: 27 * fem,
                                top: 300 * fem,
                                child: Container(
                                  width: 362 * fem,
                                  height: 535.15 * fem,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        // rectangle8MJF (87:5339)
                                        left: 0 * fem,
                                        top: 0.154296875 * fem,
                                        child: Align(
                                          child: SizedBox(
                                            width: 362 * fem,
                                            height: 535 * fem,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        5 * fem),
                                                border: Border.all(
                                                    color: Color(0xfff5f5f5)),
                                                color: Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Color(0xffcbd2df),
                                                    offset: Offset(
                                                        0 * fem, 4 * fem),
                                                    blurRadius: 2 * fem,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        // group258dWf (87:5340)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              13.46 * fem, 0 * fem, 0 * fem),
                                          width: 362 * fem,
                                          height: 522.4 * fem,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // group2494h5 (82:3055)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    12.46 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    18.67 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 900 * fem,
                                                height: 74.16 * fem,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.grey
                                                          .shade200, // You can set your desired border color here.
                                                      width:
                                                          1, // You can set the width of the border.
                                                    ),
                                                  ),
                                                ),
                                                child: Container(
                                                  // autogroupgz7qmLb (LJbbgPwnYr5AkPZckegz7q)

                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      20 * fem),
                                                  width: double.infinity,
                                                  height: 58.03 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // group259hk3 (82:3060)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                52.73 * fem,
                                                                0 * fem),
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                36.07 * fem,
                                                                0 * fem),
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                        ),
                                                        child: Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              // rectangle8yxT (82:3062)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      23.83 *
                                                                          fem,
                                                                      0 * fem),
                                                              width:
                                                                  60.19 * fem,
                                                              height:
                                                                  58.03 * fem,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffe7e7e7)),
                                                                color: const Color(
                                                                    0xffffffff),
                                                              ),
                                                              child:
                                                                  const Center(
                                                                child: Image(
                                                                  image: AssetImage(
                                                                      'assets/images/bdo.png'),
                                                                  width:
                                                                      40, // Optional: Set image width
                                                                  height:
                                                                      40, // Optional: Set image height
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // bdounibankincf4b (82:3061)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0.63 *
                                                                          fem),
                                                              child: Text(
                                                                'BDO Unibank, Inc.',
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      14 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: const Color(
                                                                      0xff3f3f3f),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          context.pushReplacementNamed(
                                                              cashinbankSelect);
                                                        },
                                                        child: Container(
                                                          // group2489Ef (82:3057)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  0.84 * fem),
                                                          width: 9.6 * fem,
                                                          height: 16.82 * fem,
                                                          child: Image.asset(
                                                            'assets/images/arrow_blue_right.png',
                                                            width: 9.6 * fem,
                                                            height: 16.82 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group250F2o (82:3086)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    12.45 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    18.67 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: double.infinity,
                                                height: 74.16 * fem,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.grey
                                                          .shade200, // You can set your desired border color here.
                                                      width:
                                                          1, // You can set the width of the border.
                                                    ),
                                                  ),
                                                ),
                                                child: Container(
                                                  // group248M5q (82:3088)
                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      20 * fem),
                                                  width: double.infinity,
                                                  height: 58.03 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // group1334W3 (82:3092)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                23.83 * fem,
                                                                0 * fem),
                                                        width: 60.19 * fem,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                        ),
                                                        child: Center(
                                                          // rectangle8ngw (82:3093)
                                                          child: SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height: 58.03 * fem,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffe7e7e7)),
                                                                color: const Color(
                                                                    0xffffffff),
                                                              ),
                                                              child:
                                                                  const Center(
                                                                child: Image(
                                                                  image: AssetImage(
                                                                      'assets/images/ub.png'),
                                                                  width:
                                                                      40, // Optional: Set image width
                                                                  height:
                                                                      40, // Optional: Set image height
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // unionbankHdh (82:3091)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0.13 * fem,
                                                                141.8 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'Unionbank',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: const Color(
                                                                0xff262626),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // arrow21Pgj (82:3089)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0.84 * fem),
                                                        width: 9.6 * fem,
                                                        height: 16.82 * fem,
                                                        child: Image.asset(
                                                          'assets/images/arrow_blue_right.png',
                                                          width: 9.6 * fem,
                                                          height: 16.82 * fem,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // group251Vzf (82:3070)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    12.46 * fem),
                                                padding: EdgeInsets.fromLTRB(
                                                    18.67 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: double.infinity,
                                                height: 75.01 * fem,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    bottom: BorderSide(
                                                      color: Colors.grey
                                                          .shade200, // You can set your desired border color here.
                                                      width:
                                                          1, // You can set the width of the border.
                                                    ),
                                                  ),
                                                ),
                                                child: Container(
                                                  // group248p1M (82:3072)
                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      20 * fem),
                                                  width: double.infinity,
                                                  height: 58.03 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // group226Kio (82:3076)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                37.31 * fem,
                                                                0 * fem),
                                                        width: 60.19 * fem,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                        ),
                                                        child: Center(
                                                          // rectangle8TKD (82:3077)
                                                          child: SizedBox(
                                                            width:
                                                                double.infinity,
                                                            height: 58.03 * fem,
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(5 *
                                                                            fem),
                                                                border: Border.all(
                                                                    color: const Color(
                                                                        0xffe7e7e7)),
                                                                color: const Color(
                                                                    0xffffffff),
                                                              ),
                                                              child:
                                                                  const Center(
                                                                child: Image(
                                                                  image: AssetImage(
                                                                      'assets/images/bpi.png'),
                                                                  width:
                                                                      40, // Optional: Set image width
                                                                  height:
                                                                      40, // Optional: Set image height
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // bpiZNF (82:3075)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                180 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'BPI',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: const Color(
                                                                0xff000000),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // arrow21rcF (82:3073)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem,
                                                                0 * fem),
                                                        width: 9.6 * fem,
                                                        height: 16.82 * fem,
                                                        child: Image.asset(
                                                          'assets/images/arrow_blue_right.png',
                                                          width: 9.6 * fem,
                                                          height: 16.82 * fem,
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
