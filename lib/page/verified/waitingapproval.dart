import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class waitingapprovalScreen extends StatefulWidget {
  const waitingapprovalScreen({super.key});

  @override
  State<waitingapprovalScreen> createState() => _waitingapprovalScreenState();
}

class _waitingapprovalScreenState extends State<waitingapprovalScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Container(
            // getverifiedwaitingforapprovalj (2025:4691)
            padding: EdgeInsets.fromLTRB(17 * fem, 82 * fem, 30 * fem, 0 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupqdptAKR (LJftgaNpfVx6ZDcmoeQDpT)
                  margin: EdgeInsets.fromLTRB(
                      34 * fem, 0 * fem, 20 * fem, 39 * fem),
                  padding:
                      EdgeInsets.fromLTRB(61 * fem, 0 * fem, 62 * fem, 0 * fem),
                  width: double.infinity,
                  height: 82 * fem,
                  child: Align(
                    // applicationcompletedGtF (2025:4763)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 190 * fem,
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
                                text: 'Application\n',
                              ),
                              TextSpan(
                                text: 'Completed',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 32 * ffem,
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
                  // autogroupyxqfC9d (LJfu7ZfBoAWtZ5CeksyxQf)
                  margin:
                      EdgeInsets.fromLTRB(4 * fem, 0 * fem, 3 * fem, 40 * fem),
                  width: double.infinity,
                  height: 299 * fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // onboardingcashiniNs (2025:4764)
                        left: 32 * fem,
                        top: 10 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 328 * fem,
                            height: 247 * fem,
                            child: Image.asset(
                              'assets/images/applicationcompl.png',
                              width: 328 * fem,
                              height: 247 * fem,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // youraccountverificationrequest (2025:4769)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 74 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 364 * fem,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3318751199 * ffem / fem,
                        color: const Color(0xff231f20),
                      ),
                      children: [
                        const TextSpan(
                          text:
                              'Your account verification request is being reviewed, and it is currently in process. Please wait ',
                        ),
                        TextSpan(
                          text: '3-7 working days',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                        const TextSpan(
                          text: ' for the process to be completed. \n',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  // autogroupffvri6b (LJfvEcd8RZ12wWTxkqFfVR)
                  margin:
                      EdgeInsets.fromLTRB(14 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 353 * fem,
                  height: 55 * fem,
                  child: TextButton(
                    // group410SHV (2025:4771)
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => dashboardScreen(),
                        ),
                      );
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          144.5 * fem, 13 * fem, 23.67 * fem, 12 * fem),
                      width: double.infinity,
                      height: double.infinity,
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
                            // okaybpb (2025:4773)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 95.17 * fem, 0 * fem),
                            child: Text(
                              'Okay',
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
                            // solararrowrightbrokenuqH (2025:4774)
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
