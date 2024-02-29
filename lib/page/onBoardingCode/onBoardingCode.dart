import 'package:digicoop/page/Login/login.dart';
import 'package:digicoop/page/Signup/loading.dart';
import 'package:digicoop/page/Signup/verificationCode.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class onBoardingCodeScreen extends StatefulWidget {
  const onBoardingCodeScreen({super.key});

  @override
  State<onBoardingCodeScreen> createState() => _onBoardingCodeScreenState();
}

class _onBoardingCodeScreenState extends State<onBoardingCodeScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

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
            // onboardingcodegDm (27:1702)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 54.3 * fem, 30 * fem, 0 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const loginScreen(),
                      ),
                    );
                  },
                  child: Container(
                    // arrow1NcP (27:1768)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 291 * fem, 47.7 * fem),
                    width: 45.22 * fem,
                    height: 26 * fem,
                    child: Image.asset(
                      'assets/images/arrow-left.png',
                      width: 45.22 * fem,
                      height: 26 * fem,
                    ),
                  ),
                ),
                Container(
                  // authentication5mh (33:1981)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 125 * fem, 52 * fem),
                  child: Text(
                    'Onboarding Code',
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
                  // group846z7y (33:2002)
                  margin:
                      EdgeInsets.fromLTRB(10 * fem, 0 * fem, 5 * fem, 30 * fem),
                  width: double.infinity,
                  height: 65 * fem,
                  child: SizedBox(
                    // autogroupmgoq7iP (LJaVdQLZfk7uGUAhL5mgoq)
                    width: double.infinity,
                    height: 64 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // entermobilenoSEs (33:1983)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: CommonTextField(
                            controller: _numberController,
                            labelText: 'Enter Mobile No.',
                            keyboardType: TextInputType.number,
                            prefixIconData: Icons.phone,
                            textInputAction: TextInputAction.next,
                            accentColor: const Color(0xff259ded),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // group845TQs (33:2001)
                  margin:
                      EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 0 * fem),
                  padding: EdgeInsets.fromLTRB(
                      3.5 * fem, 0 * fem, 3.5 * fem, 5.75 * fem),
                  width: 352 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // enteronboardingcodexcX (33:1985)
                        margin: EdgeInsets.fromLTRB(
                            0.5 * fem, 0 * fem, 0 * fem, 15.75 * fem),
                        child: CommonTextField(
                          controller: _codeController,
                          labelText: 'Enter Onboarding Code',
                          keyboardType: TextInputType.number,
                          prefixIconData: Icons.safety_check_outlined,
                          textInputAction: TextInputAction.next,
                          accentColor: const Color(0xff259ded),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group4102F1 (33:1992)
                  margin: EdgeInsets.fromLTRB(
                      10 * fem, 130 * fem, 0 * fem, 0 * fem),
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const verificationCodeScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          126 * fem, 15 * fem, 23.67 * fem, 10 * fem),
                      width: double.infinity,
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
                            // proceedEby (33:1994)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 75.67 * fem, 0 * fem),
                            child: Text(
                              'Proceed',
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
                            // solararrowrightbroken9U3 (41:2273)
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
