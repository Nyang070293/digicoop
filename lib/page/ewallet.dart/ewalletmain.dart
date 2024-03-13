import 'package:digicoop/page/cashin_bank/cashin_main.dart';
import 'package:digicoop/page/ewallet.dart/ewalletselect.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class ewalletmainScreen extends StatefulWidget {
  const ewalletmainScreen({super.key});

  @override
  State<ewalletmainScreen> createState() => _ewalletmainScreenState();
}

class _ewalletmainScreenState extends State<ewalletmainScreen> {
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
                      27 * fem, 25 * fem, 20 * fem, 23 * fem),
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const cashinMainScreen(),
                            ),
                          );
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
                            10 * fem, 0 * fem, 100 * fem, 0 * fem),
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
                      Container(
                        // materialsymbolssearchvFy (85:4642)
                        width: 25.5 * fem,
                        height: 25.5 * fem,
                        child: const Icon(
                          Icons.search_sharp,
                          size: 32,
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
                          margin: EdgeInsets.fromLTRB(
                              27 * fem, 0 * fem, 38 * fem, 0 * fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // bank31Khh (75:2077)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: 32.13 * fem,
                                height: 32.13 * fem,
                                child: Image.asset(
                                  'assets/images/e-wallet.png',
                                  width: 22.13 * fem,
                                  height: 22.13 * fem,
                                ),
                              ),
                              Text(
                                // bankscgo (75:2076)
                                'E-Wallet',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.bold,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // addmoneytoyouraccountBJf (63:8344)
                          margin: EdgeInsets.fromLTRB(
                              27 * fem, 10 * fem, 0 * fem, 20 * fem),
                          child: Text(
                            'Select E-Wallet',
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
                          // group976cwZ (87:4764)
                          left: 27 * fem,
                          top: 200.845703125 * fem,
                          child: SizedBox(
                            width: 362 * fem,
                            height: 550 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle8jWP (82:2941)
                                  left: 27 * fem,
                                  top: 0.154296875 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 362 * fem,
                                      height: 535 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                          border: Border.all(
                                              color: const Color(0xfff5f5f5)),
                                          color: const Color(0xffffffff),
                                          boxShadow: [
                                            BoxShadow(
                                              color: const Color(0xffcbd2df),
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
                                    padding: EdgeInsets.fromLTRB(27 * fem,
                                        13.46 * fem, 0 * fem, 0 * fem),
                                    width: 390 * fem,
                                    height: 522.4 * fem,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group2494h5 (82:3055)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 12.46 * fem),
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
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group259hk3 (82:3060)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      52.73 * fem,
                                                      0 * fem),
                                                  padding: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      36.07 * fem,
                                                      0 * fem),
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5 * fem),
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        // rectangle8yxT (82:3062)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                23.83 * fem,
                                                                0 * fem),
                                                        width: 60.19 * fem,
                                                        height: 58.03 * fem,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xffe7e7e7)),
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                        child: const Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/gcash.png'),
                                                            width:
                                                                40, // Optional: Set image width
                                                            height:
                                                                40, // Optional: Set image height
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // bdounibankincf4b (82:3061)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                95 * fem,
                                                                0 * fem),
                                                        child: Text(
                                                          'GCash',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 14 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
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
                                                    Navigator.pushReplacement(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (_) =>
                                                            const ewalletselectScreen(),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    // group2489Ef (82:3057)

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
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 12.45 * fem),
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
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group1334W3 (82:3092)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      23.83 * fem,
                                                      0 * fem),
                                                  width: 60.19 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5 * fem),
                                                  ),
                                                  child: Center(
                                                    // rectangle8ngw (82:3093)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 58.03 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xffe7e7e7)),
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                        child: const Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/coinsph.png'),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      170 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Coins.ph',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff262626),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // arrow21Pgj (82:3089)
                                                  margin: EdgeInsets.fromLTRB(
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
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 12.46 * fem),
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
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group226Kio (82:3076)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      23.83 * fem,
                                                      0 * fem),
                                                  width: 60.19 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5 * fem),
                                                  ),
                                                  child: Center(
                                                    // rectangle8TKD (82:3077)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 58.03 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xffe7e7e7)),
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                        child: const Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/grabpay.png'),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      170 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'GrabPay',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // arrow21rcF (82:3073)
                                                  margin: EdgeInsets.fromLTRB(
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
                                        Container(
                                          // group251Vzf (82:3070)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 12.46 * fem),
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
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group226Kio (82:3076)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      23.83 * fem,
                                                      0 * fem),
                                                  width: 60.19 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5 * fem),
                                                  ),
                                                  child: Center(
                                                    // rectangle8TKD (82:3077)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 58.03 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xffe7e7e7)),
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                        child: const Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/shopeepay.png'),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      150 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'ShopeePay',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // arrow21rcF (82:3073)
                                                  margin: EdgeInsets.fromLTRB(
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
                                        Container(
                                          // group251Vzf (82:3070)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 12.46 * fem),
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
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // group226Kio (82:3076)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      23.83 * fem,
                                                      0 * fem),
                                                  width: 60.19 * fem,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5 * fem),
                                                  ),
                                                  child: Center(
                                                    // rectangle8TKD (82:3077)
                                                    child: SizedBox(
                                                      width: double.infinity,
                                                      height: 58.03 * fem,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      5 * fem),
                                                          border: Border.all(
                                                              color: const Color(
                                                                  0xffe7e7e7)),
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                        child: const Center(
                                                          child: Image(
                                                            image: AssetImage(
                                                                'assets/images/paypal.png'),
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
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      175 * fem,
                                                      0 * fem),
                                                  child: Text(
                                                    'Paypal',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xff000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  // arrow21rcF (82:3073)
                                                  margin: EdgeInsets.fromLTRB(
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
                        SizedBox(
                          height: 90,
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
