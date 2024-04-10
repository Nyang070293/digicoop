import 'package:digicoop/page/ewallet.dart/ewalletselect.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ewalletconfirmScreen extends StatefulWidget {
  const ewalletconfirmScreen({super.key});

  @override
  State<ewalletconfirmScreen> createState() => _ewalletconfirmScreenState();
}

class _ewalletconfirmScreenState extends State<ewalletconfirmScreen> {
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
                          context.pushReplacementNamed(ewalletselect);
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
                          'Other E-Wallet',
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
                          // allgood24w (97:11411)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'All Good?',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        Container(
                          // pleaseconfirmalldetailsKpj (97:11412)
                          margin: EdgeInsets.fromLTRB(
                              26 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                        Container(
                          // autogroupzehdS8f (LJe7DdcEcMLgGe16rsZEHd)
                          padding: EdgeInsets.fromLTRB(
                              25 * fem, 22 * fem, 25 * fem, 262 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupsubvYxP (LJe5oknzfGae2ontP1SuBV)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 74 * fem),
                                width: double.infinity,
                                height: 343 * fem,
                                child: Container(
                                  // group155Ur3 (97:11414)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 7 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Color(0xff259ded),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x262e2e2e),
                                        offset: Offset(4 * fem, 9 * fem),
                                        blurRadius: 10 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // autogrouptwbhZcb (LJe68FGBf9ABkTeKKoTWBH)
                                        margin: EdgeInsets.fromLTRB(69 * fem,
                                            0 * fem, 68 * fem, 6 * fem),
                                        padding: EdgeInsets.fromLTRB(23 * fem,
                                            0 * fem, 25 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 92 * fem,
                                        child: Container(
                                          // digicoopwhitet95 (97:11433)
                                          padding: EdgeInsets.fromLTRB(
                                              59.2 * fem,
                                              62.32 * fem,
                                              1.73 * fem,
                                              13.5 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/logo-Jf9.png',
                                              ),
                                            ),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Container(
                                                // poweredbymif (I97:11433;831:2261)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    2.1 * fem,
                                                    5.53 * fem),
                                                width: 57.24 * fem,
                                                height: 5.36 * fem,
                                                child: Image.asset(
                                                  'assets/images/powered-by-Ywq.png',
                                                  width: 57.24 * fem,
                                                  height: 5.36 * fem,
                                                ),
                                              ),
                                              Container(
                                                // group7705UT (I97:11433;831:2256)
                                                width: 58.73 * fem,
                                                height: double.infinity,
                                                child: Stack(
                                                  children: [
                                                    Positioned(
                                                      // autogroupbjk7RHR (LHVdBAF4XMydZZb62dbJk7)
                                                      left: 0 * fem,
                                                      top: 0 * fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 42.47 * fem,
                                                          height: 16.17 * fem,
                                                          child: Image.asset(
                                                            'assets/images/auto-group-bjk7.png',
                                                            width: 42.47 * fem,
                                                            height: 16.17 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      // autogroupubwfuyH (LHVe1DhKG8xWun1qhaubWF)
                                                      left: 41.8249511719 * fem,
                                                      top: 0 * fem,
                                                      child: Align(
                                                        child: SizedBox(
                                                          width: 16.9 * fem,
                                                          height: 16.17 * fem,
                                                          child: Image.asset(
                                                            'assets/images/auto-group-ubwf.png',
                                                            width: 16.9 * fem,
                                                            height: 16.17 * fem,
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
                                        // autogrouprxjb2HD (LJe6NKh4ch8Z2EPxLkrxJB)
                                        padding: EdgeInsets.fromLTRB(14 * fem,
                                            23 * fem, 17 * fem, 30 * fem),
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // group1608b9 (97:11421)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  119 * fem,
                                                  23 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    // serviceprovidefb5 (97:11422)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        1 * fem,
                                                        75 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Service Provide',
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
                                                    // gcashaCF (97:11423)
                                                    'Gcash',
                                                    textAlign: TextAlign.right,
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
                                            Container(
                                              // group1536wH (97:11418)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  68 * fem,
                                                  18 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // mobilenumberRyZ (97:11419)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        72 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Mobile Number',
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
                                                    // wS7 (97:11420)
                                                    '0919 123 4560',
                                                    textAlign: TextAlign.right,
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
                                            Container(
                                              // line952X (97:11434)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  16 * fem),
                                              width: 333 * fem,
                                              height: 0 * fem,
                                              child: Image.asset(
                                                'assets/images/line-9-1EX.png',
                                                width: 333 * fem,
                                                height: 0 * fem,
                                              ),
                                            ),
                                            Container(
                                              // group152Pou (97:11424)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  84 * fem,
                                                  19 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // amountj75 (97:11425)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        116 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Amount',
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
                                                    // php10000FLK (97:11426)
                                                    'PHP 100.00',
                                                    textAlign: TextAlign.right,
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
                                            Container(
                                              // group159aNb (97:11430)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  98 * fem,
                                                  19 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // servicefeehy1 (97:11431)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        99 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Service Fee',
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
                                                    // php200cq5 (97:11432)
                                                    'PHP 2.00',
                                                    textAlign: TextAlign.right,
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
                                            Container(
                                              // group158ALo (97:11427)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  84 * fem,
                                                  0 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    // totalamounttnb (97:11428)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        85 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Total Amount',
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
                                                    // php12000DZy (97:11429)
                                                    'PHP 120.00',
                                                    textAlign: TextAlign.right,
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
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group4109yR (97:11406)
                                margin: EdgeInsets.fromLTRB(
                                    6 * fem, 0 * fem, 5 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(129 * fem,
                                        12 * fem, 23.67 * fem, 13 * fem),
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
                                          // confirmbqR (97:11408)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 74.67 * fem, 0 * fem),
                                          child: Text(
                                            'Confirm',
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
                                          // solararrowrightbrokenif9 (97:11409)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              2 * fem, 0 * fem, 0 * fem),
                                          width: 26.67 * fem,
                                          height: 20 * fem,
                                          child: Image.asset(
                                            'assets/images/solar-arrow-right-broken.png',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
