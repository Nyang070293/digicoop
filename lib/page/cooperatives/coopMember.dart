import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class coopMemberScreen extends StatefulWidget {
  const coopMemberScreen({super.key});

  @override
  State<coopMemberScreen> createState() => _coopMemberScreenState();
}

class _coopMemberScreenState extends State<coopMemberScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                          context.pushReplacementNamed(cooperatives);
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
                            0 * fem, 0 * fem, 84 * fem, 0 * fem),
                        child: Text(
                          'Loans',
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
                          // applicationsubmittedhbm (114:14389)
                          left: 112 * fem,
                          top: 117 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 190 * fem,
                              height: 78 * fem,
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 32 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff3f3f3f),
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Application\n',
                                    ),
                                    TextSpan(
                                      text: 'Submitted',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff3f3f3f),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // onboardingcashin2Gf (114:14390)
                          left: 53 * fem,
                          top: 248 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 328 * fem,
                              height: 247 * fem,
                              child: Image.asset(
                                'assets/images/onboardingcashin.png',
                                width: 328 * fem,
                                height: 247 * fem,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // yourmembershipapplicationhasbe (114:14395)
                          left: 38 * fem,
                          top: 577 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 336 * fem,
                              height: 75 * fem,
                              child: Text(
                                'Your membership application has been successfully submitted. Please kindly wait while the cooperative is verifying your account details.\n\n',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3318751199 * ffem / fem,
                                  color: Color(0xff231f20),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // group410vum (114:14397)
                          left: 31 * fem,
                          top: 732 * fem,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  151.5 * fem, 13 * fem, 23.67 * fem, 12 * fem),
                              width: 353 * fem,
                              height: 55 * fem,
                              decoration: BoxDecoration(
                                color: Color(0xff259ded),
                                borderRadius: BorderRadius.circular(100 * fem),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0 * fem, 4 * fem),
                                    blurRadius: 2 * fem,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // doneYgF (114:14399)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 84.17 * fem, 0 * fem),
                                    child: Text(
                                      'Done',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 24 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // solararrowrightbrokenrB9 (114:14400)
                                    width: 26.67 * fem,
                                    height: 20 * fem,
                                    child: Image.asset(
                                      'assets/page-1/images/solar-arrow-right-broken.png',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
