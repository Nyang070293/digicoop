import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:digicoop/util/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loansapplicationsubmittedYnj (114:13228)
        width: double.infinity,
        height: 1099 * fem,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // rectangle5q19 (114:13229)
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
              // rectangle4J9d (114:13230)
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
              // applicationsubmittedMtb (114:13300)
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
              // onboardingcashinTq9 (114:13301)
              left: 53 * fem,
              top: 248 * fem,
              child: Align(
                child: SizedBox(
                  width: 328 * fem,
                  height: 247 * fem,
                  child: Image.asset(
                    'assets/page-1/images/onboardingcashin-Qy5.png',
                    width: 328 * fem,
                    height: 247 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // yourloanapplicationhasbeensucc (114:13306)
              left: 42 * fem,
              top: 577 * fem,
              child: Align(
                child: SizedBox(
                  width: 329 * fem,
                  height: 75 * fem,
                  child: Text(
                    'Your loan application has been successfully submitted. The loan amount will be credited to your DigiCoop wallet once approved.\n\n',
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
              // group410v6T (114:13308)
              left: 31 * fem,
              top: 895 * fem,
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
                        // donewnF (114:13310)
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
                        // solararrowrightbrokenrPR (114:13311)
                        width: 26.67 * fem,
                        height: 20 * fem,
                        child: Image.asset(
                          'assets/page-1/images/solar-arrow-right-broken-NXR.png',
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
              // successonlinepaymentxhM (114:13313)
              left: 69 * fem,
              top: 249.5 * fem,
              child: Container(
                width: 287 * fem,
                height: 221.88 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // pendingtb1 (114:13315)
                      left: 0 * fem,
                      top: 17.5 * fem,
                      child: Container(
                        width: 278 * fem,
                        height: 165 * fem,
                      ),
                    ),
                    Positioned(
                      // passwordflatline11vX (114:13316)
                      left: 96.6667480469 * fem,
                      top: 22.92578125 * fem,
                      child: Container(
                        width: 129.55 * fem,
                        height: 192.55 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // passwordflatlinej5q (114:13317)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 129.55 * fem,
                                  height: 192.55 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/passwordflatline.png',
                                    width: 129.55 * fem,
                                    height: 192.55 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // materialsymbolslightfactchecko (114:13395)
                              left: 22.8332519531 * fem,
                              top: 49.240234375 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 39 * fem,
                                  height: 34.67 * fem,
                                  child: Image.asset(
                                    'assets/page-1/images/material-symbols-light-fact-check-outline.png',
                                    width: 39 * fem,
                                    height: 34.67 * fem,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // group774FiP (114:13399)
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
                                      'assets/page-1/images/logo-ZXu.png',
                                    ),
                                  ),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // poweredby7kb (114:13408)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 0.46 * fem, 1.21 * fem),
                                      width: 12.47 * fem,
                                      height: 1.17 * fem,
                                      child: Image.asset(
                                        'assets/page-1/images/powered-by-QhV.png',
                                        width: 12.47 * fem,
                                        height: 1.17 * fem,
                                      ),
                                    ),
                                    Container(
                                      // group770qgb (114:13403)
                                      width: 12.8 * fem,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // autogroup1kloCGF (PoKx4HP98bEr5hbniL1kLo)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 9.25 * fem,
                                                height: 3.54 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/auto-group-1klo.png',
                                                  width: 9.25 * fem,
                                                  height: 3.54 * fem,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // autogroupddfvhD1 (PoKxF7QS2FDbDNVCj4ddfV)
                                            left: 9.1125488281 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 3.68 * fem,
                                                height: 3.54 * fem,
                                                child: Image.asset(
                                                  'assets/page-1/images/auto-group-ddfv.png',
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
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // line76AsH (114:13368)
              left: 29 * fem,
              top: 666 * fem,
              child: Align(
                child: SizedBox(
                  width: 357 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcbd2df),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // line77TrP (114:13377)
              left: 29 * fem,
              top: 778 * fem,
              child: Align(
                child: SizedBox(
                  width: 357 * fem,
                  height: 1 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffcbd2df),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group986o9Z (114:13376)
              left: 29 * fem,
              top: 687 * fem,
              child: Container(
                width: 252.82 * fem,
                height: 62 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // fluentcopy24regularL9V (114:13378)
                      left: 201.3333740234 * fem,
                      top: 1.666015625 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 13.33 * fem,
                          height: 16.67 * fem,
                          child: Image.asset(
                            'assets/page-1/images/fluent-copy-24-regular.png',
                            width: 13.33 * fem,
                            height: 16.67 * fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // referencenoRwd (114:13373)
                      left: 0 * fem,
                      top: 5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 86 * fem,
                          height: 15 * fem,
                          child: Text(
                            'Reference No.',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // group9856ns (114:13375)
                      left: 0 * fem,
                      top: 3 * fem,
                      child: Container(
                        width: 252.82 * fem,
                        height: 59 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // qEf (114:13374)
                              margin: EdgeInsets.fromLTRB(
                                  41.82 * fem, 0 * fem, 0 * fem, 23 * fem),
                              child: Text(
                                '0000012344',
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2175 * ffem / fem,
                                  color: Color(0xff262626),
                                ),
                              ),
                            ),
                            Container(
                              // group1537T5 (114:13369)
                              width: double.infinity,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    // dateandtimeeC7 (114:13370)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 13.82 * fem, 0 * fem),
                                    child: Text(
                                      'Date and Time',
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff828282),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // jan202022234pm9Pm (114:13371)
                                    'Jan 20, 2022 2:34 P.M',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff262626),
                                    ),
                                  ),
                                ],
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
              // group263HVy (114:13386)
              left: 115 * fem,
              top: 799 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(3.67 * fem, 0 * fem, 0 * fem, 0 * fem),
                width: 177 * fem,
                height: 22 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // tablerdownloadazs (114:13387)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0.92 * fem, 5.67 * fem, 0 * fem),
                      width: 14.67 * fem,
                      height: 15.58 * fem,
                      child: Image.asset(
                        'assets/page-1/images/tabler-download-1UT.png',
                        width: 14.67 * fem,
                        height: 15.58 * fem,
                      ),
                    ),
                    Container(
                      // downloadreceipt6yD (114:13389)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 2 * fem),
                      child: Text(
                        'Download Receipt',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: Color(0xff188ad6),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle192Bzf (114:13390)
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
              // arrow15q9 (114:13391)
              left: 33.2174072266 * fem,
              top: 25.390625 * fem,
              child: Align(
                child: SizedBox(
                  width: 29.57 * fem,
                  height: 17 * fem,
                  child: Image.asset(
                    'assets/page-1/images/arrow-1-Keo.png',
                    width: 29.57 * fem,
                    height: 17 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // createaccount1Tu (114:13393)
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
