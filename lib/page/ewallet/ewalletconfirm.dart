import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ewalletconfirmScreen extends StatefulWidget {
  final String img,
      name,
      paymentMethod,
      paymentCategoryID,
      institutionID,
      aggregatorID,
      mobile,
      amount,
      sf,
      aggregatorGivenCode;

  const ewalletconfirmScreen(
      {super.key,
      required this.img,
      required this.name,
      required this.paymentMethod,
      required this.paymentCategoryID,
      required this.institutionID,
      required this.aggregatorID,
      required this.mobile,
      required this.amount,
      required this.sf,
      required this.aggregatorGivenCode});
  @override
  State<ewalletconfirmScreen> createState() => _ewalletconfirmScreenState();
}

class _ewalletconfirmScreenState extends State<ewalletconfirmScreen> {
  NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'en_US', symbol: '');

  @override
  Widget build(BuildContext context) {
    double total = double.parse(widget.amount.toString()) +
        double.parse(widget.sf.toString());
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
                          context.pushReplacementNamed(ewalletmain);
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
                              color: const Color(0xff333333),
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
                              color: const Color(0xff828282),
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
                                height: 336 * fem,
                                child: Container(
                                  // group155Ur3 (97:11414)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 7 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff259ded),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x262e2e2e),
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
                                            0 * fem, 68 * fem, 0 * fem),
                                        padding: EdgeInsets.fromLTRB(23 * fem,
                                            0 * fem, 25 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 107.6 * fem,
                                        child: Container(
                                          // digicoopwhitet95 (97:11433)
                                          padding: EdgeInsets.fromLTRB(
                                              59.2 * fem,
                                              62.32 * fem,
                                              1.73 * fem,
                                              13.5 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/splashscreen.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogrouprxjb2HD (LJe6NKh4ch8Z2EPxLkrxJB)
                                        padding: EdgeInsets.fromLTRB(14 * fem,
                                            23 * fem, 17 * fem, 30 * fem),
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
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
                                                  0 * fem,
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
                                                        0 * fem,
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
                                                        color: const Color(
                                                            0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text(
                                                    // gcashaCF (97:11423)
                                                    widget.name,
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
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
                                                  60 * fem,
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
                                                        0 * fem,
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
                                                        color: const Color(
                                                            0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text(
                                                    // wS7 (97:11420)
                                                    widget.mobile,
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
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
                                                'assets/images/line.png',
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
                                                  Text(
                                                    'Amount',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff828282),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 90,
                                                  ),
                                                  Text(
                                                    // php10000FLK (97:11426)
                                                    'PHP ${currencyFormat.format(double.parse(widget.amount))}',
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
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
                                                  Text(
                                                    'Service Fee',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 12 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff828282),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 70,
                                                  ),
                                                  Text(
                                                    // php200cq5 (97:11432)
                                                    'PHP ${currencyFormat.format(double.parse(widget.sf))}',
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
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
                                                        0 * fem,
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
                                                        color: const Color(
                                                            0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 55,
                                                  ),
                                                  Text(
                                                    // php12000DZy (97:11429)
                                                    'PHP ${currencyFormat.format(total)}',
                                                    textAlign: TextAlign.right,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
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
                                  onPressed: () {
                                    context.pushReplacementNamed(
                                      loadingEwallet,
                                      pathParameters: {
                                        "name": widget.name.toString(),
                                        "paymentMethod":
                                            widget.paymentMethod.toString(),
                                        "paymentCategoryID":
                                            widget.paymentCategoryID.toString(),
                                        "institutionID":
                                            widget.institutionID.toString(),
                                        "aggregatorID":
                                            widget.aggregatorID.toString(),
                                        "aggregatorGivenCode": widget
                                            .aggregatorGivenCode
                                            .toString(),
                                        "mobile": widget.mobile.toString(),
                                        "amount": widget.amount.toString(),
                                        "sf": widget.sf.toString()
                                      },
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(129 * fem,
                                        12 * fem, 23.67 * fem, 13 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff259ded),
                                      borderRadius:
                                          BorderRadius.circular(100 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
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
                                              color: const Color(0xffffffff),
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
