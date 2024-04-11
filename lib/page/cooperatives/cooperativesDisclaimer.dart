import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class cooperativesDisclaimerScreen extends StatefulWidget {
  const cooperativesDisclaimerScreen({super.key});

  @override
  State<cooperativesDisclaimerScreen> createState() =>
      _cooperativesDisclaimerScreenState();
}

class _cooperativesDisclaimerScreenState
    extends State<cooperativesDisclaimerScreen> {
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
                          'Cooperatives',
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
                          // group488trB (114:14194)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 0 * fem),
                          width: double.infinity,
                          height: 1050 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // byclickingtheapplymemberbutton (114:14282)
                                left: 34 * fem,
                                top: 70 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 336 * fem,
                                    height: 940 * fem,
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.3318751199 * ffem / fem,
                                          color: Color(0xff231f20),
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                                'By clicking the "Apply Member" button, you acknowledge and agree to the following:\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '1. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'You are applying to become a member of the chosen cooperative and understand that in order to process your application, we require certain personal information.\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '2. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'You grant the cooperative view access only to the following personal information: your name, sex, birth date, email address, mobile number and address. This access is necessary for the cooperative to verify your identity and eligibility for membership.\n \n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '3. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'The cooperative is committed to protecting your personal information and will only use it for the purposes of processing your application and maintaining accurate membership records. We will not disclose or sell your personal information to any third parties without your explicit consent, unless required by law.\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '4. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'While DigiCOOP takes reasonable measures to safeguard your personal information, you understand and accept the inherent risks associated with transmitting personal information online.\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '5. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'DigiCOOP and the cooperative will retain your personal information for as long as necessary to fulfill the purposes outlined in our privacy policy or as required by applicable laws and regulations.\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '6. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'You have the right to access, correct, or update your personal information held by DigiCOOP. If you wish to exercise this right or have any concerns about the handling of your personal information, please contact us through the designated channels provided.\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '7. ',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'DigiCOOP reserves the right to amend or update this disclaimer at any time. Any changes will be communicated to you through appropriate channels or by posting an updated version on our website.\n\n\n',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'By clicking the "Apply as Member" button, you indicate that you have read, understood, and agree to the terms and conditions outlined in this disclaimer regarding the use and protection of your personal information by the cooperative.',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: Color(0xff231f20),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                // group984zgo (114:14227)
                                left: 32 * fem,
                                top: 0 * fem,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(
                                      2.25 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 285 * fem,
                                  height: 30 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // solarhandmoneylinearVtT (114:14229)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 9.25 * fem, 0 * fem),
                                        width: 22.5 * fem,
                                        height: 21.38 * fem,
                                        child: Image.asset(
                                          'assets/images/cooperatives.png',
                                          width: 22.5 * fem,
                                          height: 21.38 * fem,
                                        ),
                                      ),
                                      Text(
                                        // authenticationoeF (114:14228)
                                        'Member Application',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 24 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff262626),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                // carefullyreadthedisclaimerwVZ (114:14234)
                                left: 34 * fem,
                                top: 30 * fem,
                                child: Align(
                                  child: SizedBox(
                                    width: 205 * fem,
                                    height: 19 * fem,
                                    child: Text(
                                      'Carefully read the Disclaimer.',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3318751199 * ffem / fem,
                                        color: Color(0xff828282),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            context.pushReplacementNamed(coopMember);
                          },
                          child: Container(
                            // group410pJT (114:14312)
                            margin: EdgeInsets.fromLTRB(
                                30 * fem, 0 * fem, 41 * fem, 60 * fem),
                            child: TextButton(
                              onPressed: () {},
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(
                                    69 * fem, 12 * fem, 23.67 * fem, 13 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xff259ded),
                                  borderRadius:
                                      BorderRadius.circular(100 * fem),
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
                                      // applyasmemberFuZ (114:14314)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 19.67 * fem, 0 * fem),
                                      child: Text(
                                        'Apply as Member',
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
                                      // solararrowrightbrokenB2X (114:14315)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 2 * fem, 0 * fem, 0 * fem),
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
