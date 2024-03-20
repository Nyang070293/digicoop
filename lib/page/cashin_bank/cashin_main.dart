import 'package:digicoop/page/cashin_ctm/cashinctm.dart';
import 'package:digicoop/page/cashin_otc/cashinotc.dart';
import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/page/ewallet.dart/ewalletmain.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                          context.pushReplacementNamed(dashboard);
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
                            10 * fem, 0 * fem, 84 * fem, 0 * fem),
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
                              color: const Color(0xff262626),
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
                              color: const Color(0xff828282),
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
                            border: Border.all(color: const Color(0xfff5f5f5)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(5 * fem),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xffcbd2df),
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
                                padding: EdgeInsets.fromLTRB(13.94 * fem,
                                    0.94 * fem, 13.94 * fem, 0.94 * fem),
                                width: double.infinity,
                                height: 37 * fem,
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
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.pushReplacement(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //     builder: (_) =>
                                    //         const cashinBankScreen(),
                                    //   ),
                                    // );
                                  },
                                  child: SizedBox(
                                    // autogroupxmqrQ4w (LJbaQGQdzSXcgxGF8PXmqR)
                                    width: 82.06 * fem,
                                    height: 22.13 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // bank31Khh (75:2077)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 15.94 * fem, 0 * fem),
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
                                            color: const Color(0xff828282),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const cashinctmScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  // group960YKZ (75:2086)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                  padding: EdgeInsets.fromLTRB(14.84 * fem,
                                      0 * fem, 14.84 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 34 * fem,
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
                                  child: SizedBox(
                                    // autogroupkgjrqpT (LJbbCAFqMHWkcS7WoCKgjR)
                                    width: 229.16 * fem,
                                    height: 20.31 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // atm1yfm (75:2098)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 16.84 * fem, 0 * fem),
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
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.16 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            'Cooperative Teller Machine',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff828282),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
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
                                  // group961yJP (75:2105)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                  padding: EdgeInsets.fromLTRB(12.69 * fem,
                                      3.36 * fem, 12.69 * fem, 3.36 * fem),
                                  width: double.infinity,
                                  height: 38 * fem,
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
                                  child: SizedBox(
                                    // autogroupxeprUF9 (LJbacLtr8yjbipL3zHXePR)
                                    width: 162.31 * fem,
                                    height: 20.27 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // receptionnist1zjH (75:2110)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 15.69 * fem, 0 * fem),
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
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0.98 * fem),
                                          child: Text(
                                            'Over the Counter',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff828282),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => const ewalletmainScreen(),
                                    ),
                                  );
                                },
                                child: Container(
                                  // group963bUB (79:2117)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 22 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      12 * fem, 0 * fem, 12 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 39 * fem,
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
                                  child: SizedBox(
                                    // autogroupvvbq6vj (LJbaofuJjPQSQxtRYHVvbq)
                                    width: 100 * fem,
                                    height: 27 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // ewallet135H (80:2128)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 13 * fem, 0 * fem),
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
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              1 * fem, 0 * fem, 0 * fem),
                                          child: Text(
                                            'E-Wallet',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff828282),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // group964Rbd (80:2136)
                                padding: EdgeInsets.fromLTRB(
                                    14.29 * fem, 2 * fem, 14.29 * fem, 2 * fem),
                                width: double.infinity,
                                height: 36 * fem,
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
                                child: SizedBox(
                                  // autogroupuofdMEP (LJbazv5a3LTbWhVyAjuofd)
                                  width: 123.71 * fem,
                                  height: 21.63 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                          color: const Color(0xff828282),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 330,
                        )
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
