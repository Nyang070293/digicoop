import 'package:digicoop/global/bankGlobal.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart'; 
import 'package:digicoop/widgets/bankWidgetAddAccount.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class bankSearchScreen extends ConsumerStatefulWidget {
  final String type;
  const bankSearchScreen({super.key, required this.type});

  @override
  ConsumerState<bankSearchScreen> createState() => _bankSearchScreenState();
}

class _bankSearchScreenState extends ConsumerState<bankSearchScreen> {
  final TextEditingController _search = TextEditingController();

  void initState() {
    //set the initial value of text field
    ref.read(bankGlobal.notifier).getBank();
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
                            0 * fem, 0 * fem, 120 * fem, 0 * fem),
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
                          // autogroupu8rtKyR (LJeV6fpNBtoSApJ2LzU8rT)
                          padding: EdgeInsets.fromLTRB(
                              21 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group984qRy (114:13943)
                                margin: EdgeInsets.fromLTRB(
                                    1 * fem, 0 * fem, 0 * fem, 30 * fem),

                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Positioned(
                                      // autogrouprgpzTR9 (LJeZ6yJxdieKxFgU5XRGPZ)
                                      left: 27 * fem,
                                      top: 56 * fem,
                                      child: SizedBox(
                                        width: 365 * fem,
                                        height: 34 * fem,
                                        child: Stack(
                                          children: [
                                            CommonTextField(
                                              controller: _search,
                                              labelText: 'Search Bank Name',
                                              prefixIconData: Icons.search,
                                              obscureText: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              accentColor:
                                                  const Color(0xff259ded),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group984qRy (114:13943)
                                margin: EdgeInsets.fromLTRB(
                                    11 * fem, 0 * fem, 169 * fem, 4 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // solarhandmoneylinear9Bm (114:13945)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          1.38 * fem, 9.25 * fem, 0 * fem),
                                      width: 22.5 * fem,
                                      height: 21.38 * fem,
                                      child: Image.asset(
                                        'assets/images/bank.png',
                                        width: 22.5 * fem,
                                        height: 21.38 * fem,
                                      ),
                                    ),
                                    Text(
                                      // authenticationePR (114:13944)
                                      'Banks',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175 * ffem / fem,
                                        color: const Color(0xff262626),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // applyasmemberygb (114:13950)
                                margin: EdgeInsets.fromLTRB(
                                    13 * fem, 0 * fem, 0 * fem, 22 * fem),
                                child: Text(
                                  'Select a Bank',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3318751199 * ffem / fem,
                                    color: const Color(0xff828282),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          // group976RvP (87:5338)
                          left: 20 * fem,
                          top: 200 * fem,
                          child: SizedBox(
                            width: 390 * fem,
                            height: 535.15 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle8MJF (87:5339)
                                  left: 20 * fem,
                                  top: 0.154296875 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 370 * fem,
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
                                          height: 522.4 * fem,
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
                                                      child: bankWidgetsSearch(
                                                        name: e.bankName
                                                            .toString(),
                                                        image: e.primaryLogo
                                                            .toString(),
                                                        institutionID: e
                                                            .institutionID
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
