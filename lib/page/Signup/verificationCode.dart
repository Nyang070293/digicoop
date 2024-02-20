import 'package:digicoop/page/Signup/signup.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class verificationCodeScreen extends StatefulWidget {
  const verificationCodeScreen({super.key});

  @override
  State<verificationCodeScreen> createState() => _verificationCodeScreenState();
}

class _verificationCodeScreenState extends State<verificationCodeScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.green.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // authenticationscreen2eK (27:1119)
            padding:
                EdgeInsets.fromLTRB(29 * fem, 54.3 * fem, 30 * fem, 100 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => signupScreen(),
                      ),
                    );
                  },
                  child: Container(
                    // arrow1qLs (33:2006)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 299 * fem, 47.7 * fem),
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
                  // authenticationg6b (33:2008)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 143 * fem, 15 * fem),
                  child: Text(
                    'Verification Code',
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
                  // wevesenta6digitauthenticationc (33:2012)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 42 * fem, 152 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 303 * fem,
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3318751199 * ffem / fem,
                        color: const Color(0xff828282),
                      ),
                      children: [
                        const TextSpan(
                          text:
                              'We’ve sent a 6-digit authentication code to your mobile number ',
                        ),
                        TextSpan(
                          text: '09xxxxxxx',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff828282),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // autogroupy6zd1Cj (Ga6Q2bRur19jQaywXyy6Zd)
                  margin:
                      EdgeInsets.fromLTRB(5 * fem, 0 * fem, 9 * fem, 66 * fem),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Pinput(
                        length: 6,
                        defaultPinTheme: defaultPinTheme,
                        focusedPinTheme: defaultPinTheme.copyWith(
                          decoration: defaultPinTheme.decoration!.copyWith(
                            border: Border.all(color: Colors.green),
                          ),
                        ),
                        onCompleted: (pin) => debugPrint(pin),
                      ),
                    ],
                  ),
                ),
                Container(
                  // autogrouphnbzJuu (Ga6QDb7bJaMqj5m1PohnBZ)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 37 * fem, 90 * fem),
                  padding:
                      EdgeInsets.fromLTRB(63 * fem, 0 * fem, 27 * fem, 0 * fem),
                  width: 318 * fem,
                  height: 76 * fem,
                  child: Container(
                    // group187sM (35:2019)
                    width: double.infinity,
                    height: 20 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // resendcodein2UX (35:2020)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 9 * fem, 0 * fem),
                          child: Text(
                            'Resend Code in',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffbdbdbd),
                            ),
                          ),
                        ),
                        Text(
                          // seconds4RD (35:2021)
                          '53 seconds',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff259ded),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // group410nEj (35:2022)
                  margin:
                      EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          142 * fem, 15 * fem, 23.67 * fem, 10 * fem),
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
                            // verify68w (35:2024)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 91.67 * fem, 0 * fem),
                            child: Text(
                              'Verify',
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
                            // solararrowrightbrokenjSo (41:2275)
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
