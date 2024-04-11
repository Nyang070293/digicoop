import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bankTransferScreen extends StatefulWidget {
  const bankTransferScreen({super.key});

  @override
  State<bankTransferScreen> createState() => _bankTransferScreenState();
}

class _bankTransferScreenState extends State<bankTransferScreen> {
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
                            0 * fem, 0 * fem, 110 * fem, 0 * fem),
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
                      GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(bankSearch);
                        },
                        child: SizedBox(
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupakfmbkT (LJcLGLeuaZkHD2uaZoaKfm)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 50 * fem),
                          width: double.infinity,
                          height: 600 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // group488vGw (87:5332)
                                left: 0 * fem,
                                top: 0 * fem,
                                child: Container(
                                  width: 414 * fem,
                                  height: 896 * fem,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Container(
                                        // recentbanktransfer38b (87:5404)
                                        margin: EdgeInsets.fromLTRB(22 * fem,
                                            0 * fem, 0 * fem, 0 * fem),
                                        child: Text(
                                          'Recent bank transfer',
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
                                        // autogroupxk3vYLF (LJcLcARD7nAkRHtEHJXK3V)
                                        width: double.infinity,
                                        height: 746 * fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // autogroupdol3Ujh (LJcLTv9x2MGAgRJRtSDoL3)
                                              left: 34 * fem,
                                              top: 191 * fem,
                                              child: Container(
                                                width: 108 * fem,
                                                height: 30 * fem,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // vectoro1H (87:5392)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              9.88 * fem,
                                                              1.88 * fem),
                                                      width: 22.13 * fem,
                                                      height: 22.13 * fem,
                                                      child: Image.asset(
                                                        'assets/images/bank.png',
                                                        width: 22.13 * fem,
                                                        height: 22.13 * fem,
                                                      ),
                                                    ),
                                                    Text(
                                                      // authenticationtoR (87:5336)
                                                      'Banks',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 24 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color:
                                                            Color(0xff262626),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // selectabankdW7 (87:5337)
                                              left: 34 * fem,
                                              top: 225 * fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 95 * fem,
                                                  height: 19 * fem,
                                                  child: Text(
                                                    'Select a bank',
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
                                              // line4i1m (87:5438)
                                              left: 27 * fem,
                                              top: 172 * fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 362 * fem,
                                                  height: 1 * fem,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xffe0e0e0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            //Recent Bank
                                            Positioned(
                                              // frame12QfH (87:5405)
                                              left: 22 * fem,
                                              top: 22 * fem,
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    7 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 387 * fem,
                                                height: 115 * fem,
                                                child: SizedBox(
                                                  // group230vtX (87:5406)
                                                  width: 598 * fem,
                                                  height: double.infinity,
                                                  child: ListView(
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    children: <Widget>[
                                                      GestureDetector(
                                                        onTap: () {
                                                          context
                                                              .pushReplacementNamed(
                                                                  bankAddAcc);
                                                        },
                                                        child: Container(
                                                          // group1415WX (87:5407)
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                                  0 * fem,
                                                                  0 * fem,
                                                                  18 * fem,
                                                                  0 * fem),
                                                          width: 70 * fem,
                                                          height:
                                                              double.infinity,
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                // addaccountcFZ (87:5409)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        13 *
                                                                            fem),
                                                                padding: EdgeInsets
                                                                    .fromLTRB(
                                                                        20 *
                                                                            fem,
                                                                        20 *
                                                                            fem,
                                                                        21 *
                                                                            fem,
                                                                        21 *
                                                                            fem),
                                                                width: double
                                                                    .infinity,
                                                                height:
                                                                    70 * fem,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xffffffff),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(35 *
                                                                              fem),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Color(
                                                                          0x3f000000),
                                                                      offset: Offset(
                                                                          0 * fem,
                                                                          4 * fem),
                                                                      blurRadius:
                                                                          2 * fem,
                                                                    ),
                                                                  ],
                                                                ),
                                                                child:
                                                                    Container(
                                                                  // group218gWK (87:5411)
                                                                  width: double
                                                                      .infinity,
                                                                  height: double
                                                                      .infinity,
                                                                  child: Stack(
                                                                    children: [
                                                                      Positioned(
                                                                        // rectangle31EXq (87:5412)
                                                                        left: 13.0000001311 *
                                                                            fem,
                                                                        top: 0 *
                                                                            fem,
                                                                        child:
                                                                            Align(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                3 * fem,
                                                                            height:
                                                                                29 * fem,
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(2 * fem),
                                                                                color: Color(0xff8fd4ff),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Positioned(
                                                                        // rectangle32M6f (87:5413)
                                                                        left: 0 *
                                                                            fem,
                                                                        top: 12.9999987324 *
                                                                            fem,
                                                                        child:
                                                                            Align(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                29 * fem,
                                                                            height:
                                                                                3 * fem,
                                                                            child:
                                                                                Container(
                                                                              decoration: BoxDecoration(
                                                                                borderRadius: BorderRadius.circular(2.0000007153 * fem),
                                                                                color: Color(0xff8fd4ff),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                // addaccountrZD (87:5408)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                        1 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem),
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      55 * fem,
                                                                ),
                                                                child: Text(
                                                                  'Add\nAccount',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      SafeGoogleFont(
                                                                    'Montserrat',
                                                                    fontSize:
                                                                        13 *
                                                                            ffem,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    height:
                                                                        1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                    color: Color(
                                                                        0xff4f4f4f),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        // group135wMh (87:5426)
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0 * fem,
                                                                0 * fem,
                                                                13 * fem,
                                                                0 * fem),
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      35 * fem),
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              // group133GPy (87:5428)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      13 * fem),
                                                              width: 70 * fem,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(35 *
                                                                            fem),
                                                              ),
                                                              child: Center(
                                                                // rectangle2CoR (87:5429)
                                                                child: SizedBox(
                                                                  width: double
                                                                      .infinity,
                                                                  height:
                                                                      70 * fem,
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(35 *
                                                                              fem),
                                                                      color: Color(
                                                                          0xffffffff),
                                                                      image:
                                                                          DecorationImage(
                                                                        image:
                                                                            AssetImage(
                                                                          'assets/images/ub.png',
                                                                        ),
                                                                      ),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              Color(0x21010101),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              2 * fem),
                                                                          blurRadius:
                                                                              3 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              // unionbankJLf (87:5427)
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      2 * fem,
                                                                      0 * fem,
                                                                      0 * fem,
                                                                      0 * fem),
                                                              child: Text(
                                                                'Unionbank',
                                                                style:
                                                                    SafeGoogleFont(
                                                                  'Montserrat',
                                                                  fontSize:
                                                                      13 * ffem,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  height:
                                                                      1.2175 *
                                                                          ffem /
                                                                          fem,
                                                                  color: Color(
                                                                      0xff4f4f4f),
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
                                          ],
                                        ),
                                      ),
                                    ],
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
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            context
                                                                .pushReplacementNamed(
                                                                    bankSend);
                                                          },
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
                                                                        14 *
                                                                            ffem,
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
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          context
                                                              .pushReplacementNamed(
                                                                  bankSend);
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
                        Text(
                          // viewallbanksh7m (87:5442)
                          'View All Banks',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffem / fem,
                            color: Color(0xff8fd4ff),
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
