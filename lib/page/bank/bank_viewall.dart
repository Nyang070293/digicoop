import 'package:digicoop/global/bankGlobal.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:digicoop/widgets/bankWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class bankviewallScreen extends ConsumerStatefulWidget {
  const bankviewallScreen({super.key});

  @override
  ConsumerState<bankviewallScreen> createState() => _bankviewallScreenState();
}

class _bankviewallScreenState extends ConsumerState<bankviewallScreen> {
  Future<void> gotoBannkSearch() async {
    //int gender = 0;
    print("press done");
    context.pushReplacementNamed(
      bankSearch,
      pathParameters: {
        "type": "0",
      },
    );
  }

  @override
  void initState() {
    //set the initial value of text field
    ref.read(bankGlobal.notifier).getBankAll();
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
                            0 * fem, 0 * fem, 110 * fem, 0 * fem),
                        child: Text(
                          'Bank View All',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                      // GestureDetector(
                      //   onTap: () {
                      //     context.pushReplacementNamed(bankSearch);
                      //   },
                      //   child: SizedBox(
                      //     // materialsymbolssearchvFy (85:4642)
                      //     width: 25.5 * fem,
                      //     height: 25.5 * fem,
                      //     child: const Icon(
                      //       Icons.search_sharp,
                      //       size: 32,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),

                //Personal Information
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Positioned(
                          // group976RvP (87:5338)
                          left: 20 * fem,
                          top: 200 * fem,
                          child: SizedBox(
                            width: 390 * fem,
                            height: 1000 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle8MJF (87:5339)
                                  left: 20 * fem,
                                  top: 0.154296875 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 370 * fem,
                                      height: 1000 * fem,
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
                                bank == null
                                    ? const Center(
                                        child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: CircularProgressIndicator(
                                                color: Colors.green)),
                                      )
                                    : Positioned(
                                        // group258dWf (87:5340)
                                        left: 20 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(0 * fem,
                                              13.46 * fem, 0 * fem, 0 * fem),
                                          width: 362 * fem,
                                          height: 800 * fem,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: bank.banks!
                                                  .map(
                                                    (e) => Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: bankWidgets(
                                                        name: e.bankName
                                                            .toString(),
                                                        image: e.primaryLogo
                                                            .toString(),
                                                        institutionID: e
                                                            .institutionID
                                                            .toString(),
                                                        bankCode: e.bankCode
                                                            .toString(),
                                                        aggregatorID: e
                                                            .aggregatorID
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
                        SizedBox(
                          height: 50,
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
