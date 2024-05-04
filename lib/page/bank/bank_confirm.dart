import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/customCheckbox.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class bankConfirmationScreen extends StatefulWidget {
  final String bankName,
      acctName,
      acctNum,
      amount,
      institutionID,
      bankCode,
      aggregatorID;
  const bankConfirmationScreen(
      {super.key,
      required this.bankName,
      required this.acctName,
      required this.acctNum,
      required this.amount,
      required this.institutionID,
      required this.bankCode,
      required this.aggregatorID});

  @override
  State<bankConfirmationScreen> createState() => _bankConfirmationScreenState();
}

class _bankConfirmationScreenState extends State<bankConfirmationScreen> {
  bool _isSaved = false;
  NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'en_US', symbol: '');

  @override
  Widget build(BuildContext context) {
    double total = double.parse(widget.amount.toString()) + double.parse("20");

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
                            0 * fem, 0 * fem, 84 * fem, 0 * fem),
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
                          // allgoodwXu (2082:799)
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
                          // pleaseconfirmalldetails46j (2082:800)
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
                          // autogroupssd19ts (LJcjP6JYVCunxg5uuQSsD1)
                          padding: EdgeInsets.fromLTRB(
                              25 * fem, 22 * fem, 25 * fem, 137 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroups3r1URM (LJchoJc9mWwX7iPNZns3R1)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 10 * fem),
                                width: double.infinity,
                                height: 401 * fem,
                                child: Container(
                                  // group1551AP (2082:802)
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
                                        // autogroupptjd5AF (LJci6J7qf8Sn9wDvtnpTjd)
                                        margin: EdgeInsets.fromLTRB(69 * fem,
                                            0 * fem, 68 * fem, 6 * fem),
                                        padding: EdgeInsets.fromLTRB(23 * fem,
                                            0 * fem, 25 * fem, 0 * fem),
                                        width: double.infinity,
                                        height: 112 * fem,
                                        child: Container(
                                          // digicoopwhitezHD (2082:824)
                                          padding: EdgeInsets.fromLTRB(
                                              59.2 * fem,
                                              100 * fem,
                                              1.73 * fem,
                                              13.5 * fem),
                                          width: double.infinity,
                                          height: double.infinity,
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.fill,
                                              image: AssetImage(
                                                'assets/images/splashscreen.png',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroupy9smj1q (LJciGTVaH7W4YJYjXAy9sM)
                                        padding: EdgeInsets.fromLTRB(14 * fem,
                                            23 * fem, 17 * fem, 33 * fem),
                                        width: double.infinity,
                                        decoration: const BoxDecoration(
                                          color: Color(0xffffffff),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              // group160d7D (2082:809)
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
                                                    width: 130 * ffem,
                                                    // banknameZFm (2082:810)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        1 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Bank Name',
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
                                                  Text(
                                                    // unionbankUNj (2082:811)
                                                    widget.bankName,
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
                                              // group153DLK (2082:806)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  23 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 130 * ffem,
                                                    // accountnumberMBd (2082:807)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Account Number',
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
                                                  Text(
                                                    // ru5 (2082:808)
                                                    widget.acctNum,
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
                                              // group156oJX (2082:815)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  19 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 130 * ffem,
                                                    // accountnamew9q (2082:816)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem),
                                                    child: Text(
                                                      'Account Name',
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
                                                  Text(
                                                    // juanchodelacruzFRR (2082:817)
                                                    widget.acctName,
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
                                              // line9aib (2082:825)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  20 * fem),
                                              width: double.infinity,
                                              height: 1 * fem,
                                              decoration: const BoxDecoration(
                                                color: Color(0xffd1d3d4),
                                              ),
                                            ),
                                            Container(
                                              // group1526gw (2082:812)
                                              margin: EdgeInsets.fromLTRB(
                                                  1 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  23 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 130 * ffem,
                                                    // amountdB5 (2082:813)

                                                    child: Text(
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
                                                  ),
                                                  Text(
                                                    // php3500008tX (2082:814)
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
                                              // group159sLK (2082:821)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  23 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 130 * ffem,
                                                    // servicefeeQb9 (2082:822)
                                                    margin: EdgeInsets.fromLTRB(
                                                        0 * fem,
                                                        0 * fem,
                                                        0 * fem,
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
                                                        color: const Color(
                                                            0xff828282),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    // php2000Ky1 (2082:823)
                                                    'PHP 20.00',
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
                                              // group158sDq (2082:818)
                                              margin: EdgeInsets.fromLTRB(
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem,
                                                  0 * fem),
                                              width: double.infinity,
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: 130 * ffem,
                                                    // totalamount1aw (2082:819)
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
                                                  Text(
                                                    // php352000KrX (2082:820)
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
                                // autogroupszi7SgF (LJcjDr4wzGd26rACS1SZi7)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // addofficeaddressYoy (2025:3567)
                                      margin: EdgeInsets.only(bottom: 95 * fem),
                                      child: Row(
                                        children: [
                                          CustomCheckBox(
                                            value: _isSaved,
                                            splashColor:
                                                const Color(0xff259ded),
                                            shouldShowBorder: true,
                                            borderColor:
                                                const Color(0xff259ded),
                                            checkedFillColor:
                                                const Color(0xff259ded),
                                            borderRadius: 8,
                                            borderWidth: 1,
                                            checkBoxSize: 22,
                                            onChanged: (val) {
                                              //do your stuff here
                                              setState(() {
                                                _isSaved = val;
                                              });
                                            },
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _isSaved = !_isSaved;
                                              });
                                            },
                                            child: Text(
                                              'Save this Transaction?',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff259ded),
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
                                // group410uTM (2082:788)
                                margin: EdgeInsets.fromLTRB(
                                    6 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(112.5 * fem,
                                        13 * fem, 0 * fem, 12 * fem),
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
                                    child: GestureDetector(
                                      onTap: () {
                                        context.pushReplacementNamed(
                                            loadingTransaction);
                                      },
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // proceedwQ3 (2082:790)
                                            margin: EdgeInsets.fromLTRB(
                                                20 * fem,
                                                0 * fem,
                                                89.17 * fem,
                                                0 * fem),
                                            child: Text(
                                              'Proceed',
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
                                            // solararrowrightbrokenf59 (2082:791)
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
