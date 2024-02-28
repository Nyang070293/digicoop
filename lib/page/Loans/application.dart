import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class applicationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loansapplyhhy (113:12528)
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // autogroupoqb9nzK (PpUJk8fqjBTPnAHh3coQb9)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
              padding: EdgeInsets.fromLTRB(
                  33.22 * fem, 25 * fem, 180 * fem, 23 * fem),
              width: double.infinity,
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // arrow1qxb (113:13126)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 116.22 * fem, 4.22 * fem),
                    width: 29.57 * fem,
                    height: 17 * fem,
                    child: Image.asset(
                      'assets/page-1/images/arrow-1-QpF.png',
                      width: 29.57 * fem,
                      height: 17 * fem,
                    ),
                  ),
                  Text(
                    // createaccountLeT (113:13128)
                    'Loans',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 18 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: Color(0xff231f20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // authenticationUEs (113:12535)
              margin: EdgeInsets.fromLTRB(31 * fem, 0 * fem, 0 * fem, 7 * fem),
              child: Text(
                'Apply for a Loan',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 24 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2175 * ffem / fem,
                  color: Color(0xff262626),
                ),
              ),
            ),
            Container(
              // fillouttherequiredfieldszU7 (113:12536)
              margin: EdgeInsets.fromLTRB(33 * fem, 0 * fem, 0 * fem, 0 * fem),
              child: Text(
                'Fill out the required fields.',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 14 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.3318751199 * ffem / fem,
                  color: Color(0xff828282),
                ),
              ),
            ),
            Container(
              // autogroupahyz5kT (PpUKENMnvk1ov7jo15AhyZ)
              padding:
                  EdgeInsets.fromLTRB(29 * fem, 41 * fem, 30 * fem, 124 * fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group939Qnj (113:12812)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 5 * fem, 19 * fem),
                    width: double.infinity,
                    height: 65 * fem,
                    child: Text(
                      'Loan Amount',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.2175 * ffem / fem,
                        color: Color(0xff828282),
                      ),
                    ),
                  ),
                  Container(
                    // group940Jt7 (113:12815)
                    margin: EdgeInsets.fromLTRB(
                        2 * fem, 0 * fem, 5 * fem, 19 * fem),
                    width: double.infinity,
                    height: 65 * fem,
                    child: Container(
                      // autogroupqexrprT (PpUKempo5CGpm5htVVqeXR)
                      padding: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 7.31 * fem),
                      width: double.infinity,
                      height: 64 * fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // paymenttermsmonthstopayYGf (113:12817)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 139 * fem, 32 * fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff828282),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Payment Terms',
                                  ),
                                  TextSpan(
                                    text: ' (months to pay)',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w400,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // vector4eK (114:13130)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0.36 * fem, 0 * fem),
                            width: 15.64 * fem,
                            height: 6.69 * fem,
                            child: Image.asset(
                              'assets/page-1/images/vector-ZzP.png',
                              width: 15.64 * fem,
                              height: 6.69 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogrouplwu5NQ7 (PpUJtiFsxSphtgeo8fLWu5)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 5 * fem, 47 * fem),
                    padding:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: 350 * fem,
                    height: 65 * fem,
                    child: Container(
                      // group9414Gw (113:12818)
                      width: double.infinity,
                      height: double.infinity,
                      child: Text(
                        'Purpose of Loan',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xff828282),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // autogroupbzpfnij (PpUK5sbwywGBQ1KWqaBzpF)
                    margin: EdgeInsets.fromLTRB(
                        6 * fem, 0 * fem, 8 * fem, 163 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // carboncheckboxuYT (114:13133)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 13 * fem, 0 * fem),
                          width: 24 * fem,
                          height: 24 * fem,
                          child: Image.asset(
                            'assets/page-1/images/carbon-checkbox-guu.png',
                            width: 24 * fem,
                            height: 24 * fem,
                          ),
                        ),
                        Container(
                          // bycheckingthisboxiacknowledget (114:13132)
                          constraints: BoxConstraints(
                            maxWidth: 304 * fem,
                          ),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff231f20),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'By checking this box, I acknowledge that I have read and understood the provided ',
                                ),
                                TextSpan(
                                  text: 'Terms and Conditions',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff188ad6),
                                  ),
                                ),
                                TextSpan(
                                  text: '.',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group410FPM (113:13120)
                    margin:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            126 * fem, 15 * fem, 23.67 * fem, 10 * fem),
                        width: double.infinity,
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
                              // proceedthD (113:13122)
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
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            Container(
                              // solararrowrightbroken1mq (113:13123)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 4 * fem),
                              width: 26.67 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/page-1/images/solar-arrow-right-broken-HQT.png',
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
          ],
        ),
      ),
    );
  }
}
