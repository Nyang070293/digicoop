import 'package:digicoop/global/bankGlobal.dart';
import 'package:digicoop/global/bankUserGlobal.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:digicoop/widgets/bankWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class bankTransferScreen extends ConsumerStatefulWidget {
  const bankTransferScreen({super.key});

  @override
  ConsumerState<bankTransferScreen> createState() => _bankTransferScreenState();
}

class _bankTransferScreenState extends ConsumerState<bankTransferScreen> {
  @override
  void initState() {
    //set the initial value of text field
    ref.read(bankGlobal.notifier).getBank();
    ref.read(bankUserGlobal.notifier).getUserBank();
    // Timer.periodic(const Duration(seconds: 30), (timer) {
    //   ref
    //       .read(paymentMethodGlobal.notifier)
    //       .getPaymentMethod(widget.categoryId);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bank = ref.watch(bankGlobal).data;
    final bankUser = ref.watch(bankUserGlobal).data;

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
                                  decoration: const BoxDecoration(
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
                                            color: const Color(0xff333333),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // autogroupxk3vYLF (LJcLcARD7nAkRHtEHJXK3V)
                                        width: double.infinity,
                                        height: 746 * fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // autogroupdol3Ujh (LJcLTv9x2MGAgRJRtSDoL3)
                                              left: 34 * fem,
                                              top: 191 * fem,
                                              child: SizedBox(
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
                                                        color: const Color(
                                                            0xff262626),
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
                                                      color: const Color(
                                                          0xff828282),
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
                                                    decoration:
                                                        const BoxDecoration(
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
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: bankUser.banks
                                                          ?.map(
                                                            (e) => Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child:
                                                                  bankWidgets(
                                                                name: e.bankName
                                                                    .toString(),
                                                                image: e
                                                                    .primaryLogo
                                                                    .toString(),
                                                              ),
                                                            ),
                                                          )
                                                          .toList(),
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
                              Positioned(
                                // group976RvP (87:5338)
                                left: 27 * fem,
                                top: 300 * fem,
                                child: SizedBox(
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
                                                    color: const Color(
                                                        0xfff5f5f5)),
                                                color: const Color(0xffffffff),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color:
                                                        const Color(0xffcbd2df),
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
                                      bank == null
                                          ? const Center(
                                              child: SizedBox(
                                                  width: 30,
                                                  height: 30,
                                                  child:
                                                      CircularProgressIndicator(
                                                          color: Colors.green)),
                                            )
                                          : Positioned(
                                              // group258dWf (87:5340)
                                              left: 0 * fem,
                                              top: 0 * fem,
                                              child: Container(
                                                padding: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    13.46 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 362 * fem,
                                                height: 522.4 * fem,
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: bank.banks!
                                                        .map(
                                                          (e) => Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: bankWidgets(
                                                              name: e.bankName
                                                                  .toString(),
                                                              image: e
                                                                  .primaryLogo
                                                                  .toString(),
                                                            ),
                                                          ),
                                                        )
                                                        .toList(),
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
                        Text(
                          // viewallbanksh7m (87:5442)
                          'View All Banks',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff8fd4ff),
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
