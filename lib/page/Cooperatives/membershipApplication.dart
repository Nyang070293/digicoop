import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class membershipApplicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // cooperativesmembershipapplicat (114:14317)
        width: double.infinity,
        height: 1099 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle5qkK (114:14318)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 896 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0, -1.245),
                        end: Alignment(-0, 1),
                        colors: <Color>[Color(0xff012060), Color(0xff185cbd)],
                        stops: <double>[0, 0.635],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle4sS7 (114:14319)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 896 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // applicationsubmittedabR (114:14389)
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
              // onboardingcashinHu9 (114:14390)
              left: 53 * fem,
              top: 248 * fem,
              child: Align(
                child: SizedBox(
                  width: 328 * fem,
                  height: 247 * fem,
                  child: Image.asset(
                    'assets/page-1/images/onboardingcashin-ixo.png',
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
              // group410DRR (114:14397)
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
                        // donefoD (114:14399)
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
                        // solararrowrightbrokenK75 (114:14400)
                        width: 26.67 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/solar-arrow-right-broken-DYT.png',
                          width: 26.67 * fem,
                          height: 20 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // successonlinepayment3Ys (114:14402)
              left: 69 * fem,
              top: 249.5 * fem,
              child: Container(
                width: 287 * fem,
                height: 221.88 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // pendingmzf (114:14404)
                      left: 0 * fem,
                      top: 17.5 * fem,
                      child: Container(
                        width: 278 * fem,
                        height: 165 * fem,
                      ),
                    ),
                    Positioned(
                      // passwordflatline1i9D (114:14405)
                      left: 96.6667480469 * fem,
                      top: 22.92578125 * fem,
                      child: Container(
                        width: 129.55 * fem,
                        height: 192.55 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // passwordflatlineqUj (114:14406)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 129.55 * fem,
                                  height: 192.55 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/passwordflatline-BBu.png',
                                    width: 129.55 * fem,
                                    height: 192.55 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group774gET (114:14430)
                              left: 21.3332519531 * fem,
                              top: 20.57421875 * fem,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(12.9 * fem,
                                    13.65 * fem, 0.38 * fem, 2.96 * fem),
                                width: 39 * fem,
                                height: 20.14 * fem,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/page-1/images/logo-khd.png',
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // poweredby983 (114:14439)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0.46 * fem, 1.21 * fem),
                                      width: 12.47 * fem,
                                      height: 1.17 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/powered-by-Kjm.png',
                                        width: 12.47 * fem,
                                        height: 1.17 * fem,
                                      ),
                                    ),
                                    Container(
                                      // group7704ko (114:14434)
                                      width: 12.8 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // autogroupvdawcnK (PoKyDfcXhpx75hLEZWvdaw)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 9.25 * fem,
                                                height: 3.54 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/auto-group-vdaw.png',
                                                  width: 9.25 * fem,
                                                  height: 3.54 * fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // autogroupvvvfXuH (PoKwp3Hsc837d6xVrHVVvf)
                                            left: 9.1126098633 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 3.68 * fem,
                                                height: 3.54 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/auto-group-vvvf.png',
                                                  width: 3.68 * fem,
                                                  height: 3.54 * fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              // uiwusergroupaddcQw (114:14488)
                              left: 27.3332519531 * fem,
                              top: 48.57421875 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 35 * fem,
                                  height: 35 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/uiw-usergroup-add.png',
                                    width: 35 * fem,
                                    height: 35 * fem,
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
            Positioned(
              // rectangle192XH1 (114:14457)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 414 * fem,
                  height: 70 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3fb0b0b0),
                          offset: Offset(0 * fem, 4 * fem),
                          blurRadius: 2 * fem,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // arrow1ZjV (114:14458)
              left: 33.2174072266 * fem,
              top: 25.390625 * fem,
              child: Align(
                child: SizedBox(
                  width: 29.57 * fem,
                  height: 17 * fem,
                  child: Image.asset(
                    'assets/page-1/images/arrow-1-3xK.png',
                    width: 29.57 * fem,
                    height: 17 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // createaccountTps (114:14460)
              left: 179 * fem,
              top: 25 * fem,
              child: Align(
                child: SizedBox(
                  width: 55 * fem,
                  height: 22 * fem,
                  child: Text(
                    'Loans',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xff231f20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
