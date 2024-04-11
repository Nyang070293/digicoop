import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class bankSuccessScreen extends ConsumerStatefulWidget {
  const bankSuccessScreen({super.key});

  @override
  ConsumerState<bankSuccessScreen> createState() => _successScreenState();
}

class _successScreenState extends ConsumerState<bankSuccessScreen> {
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
            // successscreenu67 (41:4117)
            padding: EdgeInsets.fromLTRB(21 * fem, 82 * fem, 30 * fem, 0 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroupp9kbipF (LJaZR3XaypT2s9sYjup9kb)
                  margin: EdgeInsets.fromLTRB(
                      30 * fem, 0 * fem, 20 * fem, 39 * fem),
                  padding:
                      EdgeInsets.fromLTRB(18 * fem, 0 * fem, 7 * fem, 0 * fem),
                  width: double.infinity,
                  height: 82 * fem,
                  child: Align(
                    // successregistrationcompletedE1 (41:4190)
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 288 * fem,
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
                                text: 'Success!\n',
                              ),
                              TextSpan(
                                text: 'Transaction Completed',
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
                  // autogroupfd9y5wd (LJaZd3Bbqu3LJbzXgGFd9y)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 3 * fem, 40 * fem),
                  padding: EdgeInsets.fromLTRB(
                      32 * fem, 10 * fem, 0 * fem, 10 * fem),
                  height: 299 * fem,
                  child: Align(
                    // onboardingcashinCWT (41:4191)
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 328 * fem,
                      height: 247 * fem,
                      child: Image.asset(
                        'assets/images/banktransferSuccess.png',
                        width: 328 * fem,
                        height: 247 * fem,
                      ),
                    ),
                  ),
                ),
                Container(
                  // youhavesuccessfullyregisteredy (41:4197)
                  margin:
                      EdgeInsets.fromLTRB(4 * fem, 0 * fem, 0 * fem, 92 * fem),
                  constraints: BoxConstraints(
                    maxWidth: 329 * fem,
                  ),
                  child: Text(
                    'Your transaction amounting to PHP 3,500 for account number 1234 5378 009 was successful. Check your email for the receipt and details.',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.3318751199 * ffem / fem,
                      color: const Color(0xff828282),
                    ),
                  ),
                ),
                Container(
                  // autogroupn37dA5u (LJaaFSJcrRteb25c73N37D)
                  margin:
                      EdgeInsets.fromLTRB(10 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 353 * fem,
                  height: 55 * fem,
                  child: TextButton(
                    // group4105yZ (41:4356)
                    onPressed: () {
                      context.pushReplacementNamed(dashboard);
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          142 * fem, 15 * fem, 23.67 * fem, 10 * fem),
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
                            // loginvjH (41:4358)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 91.67 * fem, 0 * fem),
                            child: Text(
                              'Done',
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
                            // solararrowrightbroken2nK (41:4359)
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
