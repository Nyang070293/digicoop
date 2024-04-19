import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ewalletselectScreen extends StatefulWidget {
  final String img,
      name,
      paymentMethod,
      paymentCategoryID,
      institutionID,
      aggregatorID,
      feeAmount;

  const ewalletselectScreen(
      {super.key,
      required this.img,
      required this.name,
      required this.paymentMethod,
      required this.paymentCategoryID,
      required this.institutionID,
      required this.aggregatorID,
      required this.feeAmount});

  @override
  State<ewalletselectScreen> createState() => _ewalletselectScreenState();
}

class _ewalletselectScreenState extends State<ewalletselectScreen> {
  Future<void> gotoConfrim(String number, String amount) async {
    // img,
    //   name,
    //   paymentMethod,
    //   paymentCategoryID,
    //   institutionID,
    //   aggregatorID,
    //   mobile,
    //   amount,
    //   sf,
    //   totalAmount;
    context.pushReplacementNamed(
      ewalletconfirm,
      pathParameters: {
        "img": widget.img.toString(),
        "name": widget.name.toString(),
        "paymentMethod": widget.paymentMethod.toString(),
        "paymentCategoryID": widget.paymentCategoryID.toString(),
        "institutionID": widget.institutionID.toString(),
        "aggregatorID": widget.aggregatorID.toString(),
        "mobile": number,
        "amount": amount,
        "sf": widget.feeAmount.toString()
      },
    );
  }

  final TextEditingController _number = TextEditingController();
  final TextEditingController _amount = TextEditingController();
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
                            30 * fem, 0 * fem, 84 * fem, 0 * fem),
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
                        Positioned(
                          // group259i1M (83:3167)
                          left: 31 * fem,
                          top: 130 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                30 * fem, 0 * fem, 11 * fem, 0 * fem),
                            width: 244 * fem,
                            height: 58.03 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5 * fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  widget
                                      .img, // Replace this with your image URL
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) return child;
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress
                                                    .expectedTotalBytes !=
                                                null
                                            ? loadingProgress
                                                    .cumulativeBytesLoaded /
                                                loadingProgress
                                                    .expectedTotalBytes!
                                            : null,
                                      ),
                                    );
                                  },
                                  errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) {
                                    return const Text('Error loading image');
                                  },
                                ),
                                Container(
                                  // bdounibankincHif (83:3168)
                                  margin: EdgeInsets.fromLTRB(
                                      20 * fem, 1.37 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    widget.name,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: const Color(0xff3f3f3f),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        widget.name == "GCash".toUpperCase()
                            ? SizedBox(
                                width: 348 * fem,
                                height: 80 * fem,
                                child: Container(
                                  // autogroupbsr5iZ5 (LJbctcRnmghdvRS9zLbSR5)
                                  padding: EdgeInsets.fromLTRB(
                                      30 * fem, 0 * fem, 30 * fem, 0 * fem),
                                  width: double.infinity,
                                  height: 64 * fem,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // amount35Z (83:3173)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 0 * fem, 20 * fem),
                                        child: CommonTextField(
                                          controller: _number,
                                          keyboardType: TextInputType.number,
                                          labelText: 'Mobile Number',
                                          textInputAction: TextInputAction.next,
                                          accentColor: const Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : const SizedBox(),
                        SizedBox(
                          width: 348 * fem,
                          height: 70 * fem,
                          child: Container(
                            // autogroupbsr5iZ5 (LJbctcRnmghdvRS9zLbSR5)
                            padding: EdgeInsets.fromLTRB(
                                30 * fem, 0 * fem, 30 * fem, 0 * fem),
                            width: double.infinity,
                            height: 64 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // amount35Z (83:3173)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: CommonTextField(
                                    controller: _amount,
                                    keyboardType: TextInputType.number,
                                    labelText: 'Amount',
                                    textInputAction: TextInputAction.next,
                                    accentColor: const Color(0xff259ded),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Positioned(
                          // group41042b (83:3336)
                          left: 31 * fem,
                          top: 505 * fem,
                          child: TextButton(
                            onPressed: () {
                              if (widget.name == "GCash".toUpperCase()) {
                                if (_number.text.isEmpty) {
                                  Flush.flushMessage(
                                    icons: Icons.error_outline,
                                    title: "Field Required",
                                    message: "Please Enter Mobile Number",
                                  );
                                  return;
                                }
                              }
                              if (_amount.text.isEmpty) {
                                Flush.flushMessage(
                                  icons: Icons.error_outline,
                                  title: "Field Required",
                                  message: "Please Enter Amount",
                                );
                                return;
                              }
                              gotoConfrim(_number.text, _amount.text);
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  126 * fem, 15 * fem, 23.67 * fem, 10 * fem),
                              width: 353 * fem,
                              height: 55 * fem,
                              decoration: BoxDecoration(
                                color: const Color(0xff259ded),
                                borderRadius: BorderRadius.circular(100 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // proceedskj (83:3338)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 75.67 * fem, 0 * fem),
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
                                    // solararrowrightbrokenBWX (83:3339)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 4 * fem),
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
