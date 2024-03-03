import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class cashinMainScreen extends StatefulWidget {
  const cashinMainScreen({super.key});

  @override
  State<cashinMainScreen> createState() => _cashinMainScreenState();
}

class _cashinMainScreenState extends State<cashinMainScreen> {
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
            // cashinx95 (63:8325)Fways
            width: double.infinity,
            height: 896 * fem,
            decoration: BoxDecoration(
              color: Color(0xffe1edff),
            ),
            child: Container(
              // group488Veo (63:8326)
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // group958bSw (75:2022)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 58 * fem),
                    padding: EdgeInsets.fromLTRB(
                        33.22 * fem, 25 * fem, 172 * fem, 23 * fem),
                    width: double.infinity,
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
                          // arrow1qs5 (75:2018)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 110.22 * fem, 4.22 * fem),
                          width: 29.57 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/arrow-left.png',
                            width: 29.57 * fem,
                            height: 17 * fem,
                          ),
                        ),
                        Text(
                          // createaccount975 (75:2020)
                          'Cash In',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff231f20),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // authenticationGhV (63:8343)
                    margin: EdgeInsets.fromLTRB(
                        31 * fem, 0 * fem, 0 * fem, 4 * fem),
                    child: Text(
                      'Ways to Cash-In',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff262626),
                      ),
                    ),
                  ),
                  Container(
                    // addmoneytoyouraccountBJf (63:8344)
                    margin: EdgeInsets.fromLTRB(
                        34 * fem, 0 * fem, 0 * fem, 20 * fem),
                    child: Text(
                      'Add money to your account.',
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
                    // group977fjd (87:4765)
                    margin: EdgeInsets.fromLTRB(
                        27 * fem, 0 * fem, 38 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        10 * fem, 23 * fem, 11 * fem, 37 * fem),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff5f5f5)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(5 * fem),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xffcbd2df),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group959J1u (75:2085)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          padding: EdgeInsets.fromLTRB(
                              13.94 * fem, 0.94 * fem, 13.94 * fem, 0.94 * fem),
                          width: double.infinity,
                          height: 37 * fem,
                          child: SizedBox(
                            // autogroupxmqrQ4w (LJbaQGQdzSXcgxGF8PXmqR)
                            width: 82.06 * fem,
                            height: 22.13 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // bank31Khh (75:2077)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 15.94 * fem, 0 * fem),
                                  width: 22.13 * fem,
                                  height: 22.13 * fem,
                                  child: Image.asset(
                                    'assets/images/bank.png',
                                    width: 22.13 * fem,
                                    height: 22.13 * fem,
                                  ),
                                ),
                                Text(
                                  // bankscgo (75:2076)
                                  'Banks',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff828282),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // group960YKZ (75:2086)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 19 * fem),
                          padding: EdgeInsets.fromLTRB(
                              14.84 * fem, 0 * fem, 14.84 * fem, 0 * fem),
                          width: double.infinity,
                          height: 34 * fem,
                          child: SizedBox(
                            // autogroupkgjrqpT (LJbbCAFqMHWkcS7WoCKgjR)
                            width: 229.16 * fem,
                            height: 20.31 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // atm1yfm (75:2098)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 16.84 * fem, 0 * fem),
                                  width: 20.31 * fem,
                                  height: 20.31 * fem,
                                  child: Image.asset(
                                    'assets/images/atm.png',
                                    width: 20.31 * fem,
                                    height: 20.31 * fem,
                                  ),
                                ),
                                Container(
                                  // cooperativetellermachinesWF (75:2089)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0.16 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Cooperative Teller Machine',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // group961yJP (75:2105)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 19 * fem),
                          padding: EdgeInsets.fromLTRB(
                              12.69 * fem, 3.36 * fem, 12.69 * fem, 3.36 * fem),
                          width: double.infinity,
                          height: 38 * fem,
                          child: SizedBox(
                            // autogroupxeprUF9 (LJbacLtr8yjbipL3zHXePR)
                            width: 162.31 * fem,
                            height: 20.27 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // receptionnist1zjH (75:2110)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 15.69 * fem, 0 * fem),
                                  width: 23.63 * fem,
                                  height: 20.27 * fem,
                                  child: Image.asset(
                                    'assets/images/receptionnist.png',
                                    width: 23.63 * fem,
                                    height: 20.27 * fem,
                                  ),
                                ),
                                Container(
                                  // overthecounterh7u (75:2108)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0.98 * fem),
                                  child: Text(
                                    'Over the Counter',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // group963bUB (79:2117)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 22 * fem),
                          padding: EdgeInsets.fromLTRB(
                              12 * fem, 0 * fem, 12 * fem, 0 * fem),
                          width: double.infinity,
                          height: 39 * fem,
                          child: SizedBox(
                            // autogroupvvbq6vj (LJbaofuJjPQSQxtRYHVvbq)
                            width: 100 * fem,
                            height: 27 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // ewallet135H (80:2128)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 13 * fem, 0 * fem),
                                  width: 27 * fem,
                                  height: 27 * fem,
                                  child: Image.asset(
                                    'assets/images/e-wallet.png',
                                    width: 27 * fem,
                                    height: 27 * fem,
                                  ),
                                ),
                                Container(
                                  // ewallet8cX (79:2120)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'E-Wallet',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // group964Rbd (80:2136)
                          padding: EdgeInsets.fromLTRB(
                              14.29 * fem, 2 * fem, 14.29 * fem, 2 * fem),
                          width: double.infinity,
                          height: 36 * fem,
                          child: SizedBox(
                            // autogroupuofdMEP (LJbazv5a3LTbWhVyAjuofd)
                            width: 123.71 * fem,
                            height: 21.63 * fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // phhandshakefillG6T (80:2153)
                                  margin: EdgeInsets.fromLTRB(0 * fem,
                                      3.06 * fem, 11.29 * fem, 0 * fem),
                                  width: 26.42 * fem,
                                  height: 18.57 * fem,
                                  child: Image.asset(
                                    'assets/images/ph-handshake.png',
                                    width: 26.42 * fem,
                                    height: 18.57 * fem,
                                  ),
                                ),
                                Text(
                                  // cooperativexEB (80:2139)
                                  'Cooperative',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff828282),
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
        ),
      ),
    );
  }
}
