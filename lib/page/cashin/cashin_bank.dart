import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class cashinBankScreen extends StatefulWidget {
  const cashinBankScreen({super.key});

  @override
  State<cashinBankScreen> createState() => _cashinBankScreenState();
}

class _cashinBankScreenState extends State<cashinBankScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Container(
            // cashiniZM (82:2934)
            width: double.infinity,
            height: 896 * fem,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // authenticationfsu (82:2939)
                  left: 66 * fem,
                  top: 128 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 76 * fem,
                      height: 30 * fem,
                      child: Text(
                        'Banks',
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
                  // selectabank9HH (82:2940)
                  left: 34 * fem,
                  top: 162 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 95 * fem,
                      height: 19 * fem,
                      child: Text(
                        'Select a bank',
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
                  // group976cwZ (87:4764)
                  left: 27 * fem,
                  top: 200.845703125 * fem,
                  child: Container(
                    width: 362 * fem,
                    height: 535.15 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle8jWP (82:2941)
                          left: 0 * fem,
                          top: 0.154296875 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 362 * fem,
                              height: 535 * fem,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                  border: Border.all(color: Color(0xfff5f5f5)),
                                  color: Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xffcbd2df),
                                      offset: Offset(0 * fem, 4 * fem),
                                      blurRadius: 2 * fem,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group258zSK (82:3053)
                          left: 0 * fem,
                          top: 0 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                0 * fem, 13.46 * fem, 0 * fem, 0 * fem),
                            width: 362 * fem,
                            height: 522.4 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // group2494h5 (82:3055)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 12.46 * fem),
                                  padding: EdgeInsets.fromLTRB(18.67 * fem,
                                      0 * fem, 27.91 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 74.16 * fem,
                                  child: Container(
                                    // autogroupgz7qmLb (LJbbgPwnYr5AkPZckegz7q)
                                    width: double.infinity,
                                    height: 58.03 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group259hk3 (82:3060)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 52.73 * fem, 0 * fem),
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 36.07 * fem, 0 * fem),
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // rectangle8yxT (82:3062)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    23.83 * fem,
                                                    0 * fem),
                                                width: 60.19 * fem,
                                                height: 58.03 * fem,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffe7e7e7)),
                                                  color: Color(0xffffffff),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/bdo.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // bdounibankincf4b (82:3061)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0.63 * fem),
                                                child: Text(
                                                  'BDO Unibank, Inc.',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 14 * ffem,
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
                                          // group2489Ef (82:3057)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0.84 * fem),
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
                                  // group250F2o (82:3086)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 12.45 * fem),
                                  padding: EdgeInsets.fromLTRB(18.67 * fem,
                                      0 * fem, 27.91 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 74.16 * fem,
                                  child: Container(
                                    // group248M5q (82:3088)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 58.03 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group1334W3 (82:3092)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 23.83 * fem, 0 * fem),
                                          width: 60.19 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                          ),
                                          child: Center(
                                            // rectangle8ngw (82:3093)
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 58.03 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffe7e7e7)),
                                                  color: Color(0xffffffff),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/ub.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // unionbankHdh (82:3091)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.13 * fem, 141.8 * fem, 0 * fem),
                                          child: Text(
                                            'Unionbank',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff262626),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // arrow21Pgj (82:3089)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0.84 * fem),
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
                                      0 * fem, 0 * fem, 0 * fem, 12.46 * fem),
                                  padding: EdgeInsets.fromLTRB(18.67 * fem,
                                      0 * fem, 27.91 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 75.01 * fem,
                                  child: Container(
                                    // group248p1M (82:3072)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 58.03 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group226Kio (82:3076)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 37.31 * fem, 0 * fem),
                                          width: 60.19 * fem,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5 * fem),
                                          ),
                                          child: Center(
                                            // rectangle8TKD (82:3077)
                                            child: SizedBox(
                                              width: double.infinity,
                                              height: 58.03 * fem,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5 * fem),
                                                  border: Border.all(
                                                      color: Color(0xffe7e7e7)),
                                                  color: Color(0xffffffff),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'assets/images/bpi.png',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // bpiZNF (82:3075)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              2.9 * fem, 182.32 * fem, 0 * fem),
                                          child: Text(
                                            'BPI',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // arrow21rcF (82:3073)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.84 * fem, 0 * fem, 0 * fem),
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
                Positioned(
                  // group95833m (82:2942)
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
                          // arrow1gsR (I82:2942;75:2018)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 110.22 * fem, 4.22 * fem),
                          width: 29.57 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/arrow-1-dHH.png',
                            width: 29.57 * fem,
                            height: 17 * fem,
                          ),
                        ),
                        Container(
                          // createaccountD6f (I82:2942;75:2020)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 121.25 * fem, 0 * fem),
                          child: Text(
                            'Cash In',
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
                          // materialsymbolssearchvFy (85:4642)
                          width: 25.5 * fem,
                          height: 25.5 * fem,
                          child: Image.asset(
                            'assets/images/material-symbols-search.png',
                            width: 25.5 * fem,
                            height: 25.5 * fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // vectordw5 (82:3003)
                  left: 34 * fem,
                  top: 132 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 22.13 * fem,
                      height: 22.13 * fem,
                      child: Image.asset(
                        'assets/images/vector-27H.png',
                        width: 22.13 * fem,
                        height: 22.13 * fem,
                      ),
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
