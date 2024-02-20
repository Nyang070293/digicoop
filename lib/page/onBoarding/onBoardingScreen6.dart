import 'package:digicoop/page/Login/login.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class onBoardingScreen6 extends StatefulWidget {
  const onBoardingScreen6({super.key});

  @override
  State<onBoardingScreen6> createState() => _onBoardingScreen6State();
}

class _onBoardingScreen6State extends State<onBoardingScreen6> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // onboardingscreenp6A15 (0:714)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 32 * fem, 33 * fem, 20 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // skipnAs (4:1009)
                  margin: EdgeInsets.fromLTRB(
                      304 * fem, 0 * fem, 0 * fem, 28 * fem),
                  child: Text(
                    'Skip',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xffbdbdbd),
                    ),
                  ),
                ),
                Container(
                  // autogroupssb1jVR (Ga6JHBB8u6S7Kx2R4tsSb1)
                  margin: EdgeInsets.fromLTRB(
                      30 * fem, 0 * fem, 17 * fem, 27 * fem),
                  padding:
                      EdgeInsets.fromLTRB(53 * fem, 0 * fem, 42 * fem, 0 * fem),
                  width: double.infinity,
                  height: 82 * fem,
                  child: Align(
                    // coopnettellermachinecJK (4:1010)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 218 * fem,
                        ),
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 32 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff3f3f3f),
                            ),
                            children: [
                              const TextSpan(
                                text: 'COOPNET\n',
                              ),
                              TextSpan(
                                text: 'TELLER MACHINE',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff3f3f3f),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogroupywaswWw (Ga6JVW9vu1V993vhhRYWas)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
                  padding:
                      EdgeInsets.fromLTRB(32 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: double.infinity,
                  height: 311 * fem,
                  child: SizedBox(
                    // onboardingcashinc7H (4:1011)
                    width: double.infinity,
                    height: 276 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // vector3ig7 (4:1012)
                          left: 16.3359375 * fem,
                          top: 9.767578125 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 295.23 * fem,
                              height: 240.03 * fem,
                              child: Image.asset(
                                'assets/images/vector-3-xMd.png',
                                width: 295.23 * fem,
                                height: 240.03 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // banktransfer1ukb (4:1013)
                          left: 0 * fem,
                          top: 7 * fem,
                          child: SizedBox(
                            width: 328 * fem,
                            height: 247 * fem,
                          ),
                        ),
                        Positioned(
                          // untitled21NPH (4:1080)
                          left: 90 * fem,
                          top: 0 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 141 * fem,
                              height: 276 * fem,
                              child: Image.asset(
                                'assets/images/untitled-2-1.png',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse58FCB (4:1081)
                          left: 290.9999599457 * fem,
                          top: 35 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 18.57 * fem,
                              height: 16.14 * fem,
                              child: Image.asset(
                                'assets/images/ellipse-58-dt3.png',
                                width: 18.57 * fem,
                                height: 16.14 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // ellipse59EK1 (4:1082)
                          left: 23.000082016 * fem,
                          top: 220 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 18.57 * fem,
                              height: 16.14 * fem,
                              child: Image.asset(
                                'assets/images/ellipse-59-ndm.png',
                                width: 18.57 * fem,
                                height: 16.14 * fem,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // morethanyourconventionalatmeve (4:1066)
                  margin:
                      EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 75 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 320 * fem,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
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
                              'More than your conventional ATM. Everything your ',
                        ),
                        TextSpan(
                          text: 'CoopNET',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff259ded),
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff259ded),
                          ),
                        ),
                        TextSpan(
                          text: 'Mobile App',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff259ded),
                          ),
                        ),
                        const TextSpan(
                          text:
                              ' can do PLUS acceptance and disbursement of cash.',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // group843Axf (4:1083)
                  margin: EdgeInsets.fromLTRB(
                      128 * fem, 0 * fem, 116 * fem, 75 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50 * fem),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rectangle187Uby (4:1085)
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(
                        width: 7 * fem,
                      ),
                      Container(
                        // rectangle188MQs (4:1086)
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(
                        width: 7 * fem,
                      ),
                      Container(
                        // rectangle189qqq (4:1087)
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(
                        width: 7 * fem,
                      ),
                      Container(
                        // rectangle19072f (4:1088)
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(
                        width: 7 * fem,
                      ),
                      Container(
                        // rectangle191AWj (4:1089)
                        width: 10 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xffd9d9d9),
                        ),
                      ),
                      SizedBox(
                        width: 7 * fem,
                      ),
                      Container(
                        // rectangle186ruM (4:1084)
                        width: 31 * fem,
                        height: 10 * fem,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50 * fem),
                          color: const Color(0xff259ded),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x3f949494),
                              offset: Offset(0 * fem, 4 * fem),
                              blurRadius: 2 * fem,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const logincreen()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    // group410RLB (4:1068)
                    margin:
                        EdgeInsets.fromLTRB(7 * fem, 0 * fem, 0 * fem, 0 * fem),
                    padding: EdgeInsets.fromLTRB(
                        148 * fem, 19 * fem, 36.67 * fem, 16 * fem),
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
                          // nextBCs (4:1070)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 84.67 * fem, 0 * fem),
                          child: Text(
                            'Next',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffffffff),
                            ),
                          ),
                        ),
                        SizedBox(
                          // solararrowrightbroken2jH (4:1071)
                          width: 26.67 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/images/solar-arrow-right-broken-H8T.png',
                            width: 26.67 * fem,
                            height: 20 * fem,
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
