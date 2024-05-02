import 'package:digicoop/global/paymentMethodGlobal.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:digicoop/widgets/paymentMethodWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class cashinBankScreen extends ConsumerStatefulWidget {
  final String categoryId;
  const cashinBankScreen({super.key, required this.categoryId});

  @override
  ConsumerState<cashinBankScreen> createState() => _cashinBankScreenState();
}

class _cashinBankScreenState extends ConsumerState<cashinBankScreen> {
  // void getpaymentMethod() {
  //   ref.read(paymentMethodGlobal.notifier).getPaymentMethod(widget.categoryId);
  // }

  @override
  void initState() {
    //set the initial value of text field
    ref.read(paymentMethodGlobal.notifier).getPaymentMethod(widget.categoryId);
    // Timer.periodic(const Duration(seconds: 30), (timer) {
    //   ref
    //       .read(paymentMethodGlobal.notifier)
    //       .getPaymentMethod(widget.categoryId);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final payment_Method = ref.watch(paymentMethodGlobal).data;

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
                          context.pushReplacementNamed(cashinMain);
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
                            30 * fem, 0 * fem, 140 * fem, 0 * fem),
                        child: Text(
                          'Cash In',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                      // Container(
                      //   // materialsymbolssearchvFy (85:4642)
                      //   width: 25.5 * fem,
                      //   height: 25.5 * fem,
                      //   child: const Icon(
                      //     Icons.search_sharp,
                      //     size: 32,
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
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              27 * fem, 0 * fem, 38 * fem, 0 * fem),
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
                            'Select a bank',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                        ),
                        payment_Method == null
                            ? Center(
                                child: const SizedBox(
                                    width: 30,
                                    height: 30,
                                    child: CircularProgressIndicator(
                                        color: Colors.green)),
                              )
                            : Positioned(
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
                                      Positioned(
                                        // group258zSK (82:3053)
                                        left: 0 * fem,
                                        top: 0 * fem,
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(27 * fem,
                                              13.46 * fem, 0 * fem, 0 * fem),
                                          width: 390 * fem,
                                          height: 522.4 * fem,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: payment_Method
                                                  .paymentMethod!
                                                  .first
                                                  .paymentMethodDetails!
                                                  .map(
                                                    (e) => Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child:
                                                          paymentMethodWidgets(
                                                        name: e.name.toString(),
                                                        image:
                                                            e.logo.toString(),
                                                        aggregatorID: e
                                                            .aggregatorID
                                                            .toString(),
                                                        institutionID: e
                                                            .institutionID
                                                            .toString(),
                                                        paymentCategoryID:
                                                            payment_Method
                                                                .paymentMethod!
                                                                .first
                                                                .paymentCategoryID
                                                                .toString(),
                                                        paymentMethod:
                                                            payment_Method
                                                                .paymentMethod!
                                                                .first
                                                                .paymentCategoryName
                                                                .toString(),
                                                        aggregatorGivenCode: e
                                                            .aggregatorGivenCode
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
