import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class getverifiedScreen extends StatefulWidget {
  const getverifiedScreen({super.key});

  @override
  State<getverifiedScreen> createState() => _getverifiedScreenState();
}

class _getverifiedScreenState extends State<getverifiedScreen> {
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const dashboardScreen(),
                            ),
                          );
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
                          'Get Verified',
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
                    child: SizedBox(
                      // autogroupu7ubcym (LJf4DU8qJCLsqYQSfoU7UB)
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // youareabasicuserFWw (2023:2566)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 168 * fem, 12 * fem),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.2189999686 * ffem / fem,
                                  color: Color(0xff259ded),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'You are a',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff828282),
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff259ded),
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Basic User',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff259ded),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            // completeyourregistrationandget (2023:2602)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 7 * fem, 31 * fem),
                            constraints: BoxConstraints(
                              maxWidth: 341 * fem,
                            ),
                            child: Text(
                              'Complete your registration and get Fully Verified to ensure account security and gain access to all DigiCoop services.',
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
                            // line74De7 (2023:2603)
                            margin: EdgeInsets.fromLTRB(
                                31 * fem, 0 * fem, 33 * fem, 29 * fem),
                            width: double.infinity,
                            height: 1 * fem,
                            decoration: BoxDecoration(
                              color: Color(0xffc1c1c1),
                            ),
                          ),
                          Container(
                            // getverifiedinjustfewminutesMEX (2023:2605)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 88 * fem, 7 * fem),
                            child: Text(
                              'Get Verified in just few minutes!',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff231f20),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupk5efFKu (LJf3JfKVPGJ5fo6bNqK5Ef)
                            margin: EdgeInsets.fromLTRB(
                                29 * fem, 0 * fem, 32 * fem, 45 * fem),
                            width: double.infinity,
                            height: 182 * fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle197xVD (2023:2604)
                                  left: 3 * fem,
                                  top: 0 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 350 * fem,
                                      height: 182 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5 * fem),
                                          color: Color(0xfff2f8ff),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Color(0xffe7eaf0),
                                              offset: Offset(0 * fem, 3 * fem),
                                              blurRadius: 2.5 * fem,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // verifiedaccountpXR (2023:2637)
                                  left: 289.5 * fem,
                                  top: 82 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 39 * fem,
                                      height: 22 * fem,
                                      child: Text(
                                        'Verified\nAccount',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // scanfacetXH (2023:2635)
                                  left: 116.5 * fem,
                                  top: 82 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 23 * fem,
                                      height: 22 * fem,
                                      child: Text(
                                        'Scan\nFace',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // takeidphotoC2B (2023:2636)
                                  left: 200.5 * fem,
                                  top: 82 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 35 * fem,
                                      height: 22 * fem,
                                      child: Text(
                                        'Take ID\nPhoto',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // filloutinformationVGB (2023:2634)
                                  left: 15 * fem,
                                  top: 82 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 56 * fem,
                                      height: 22 * fem,
                                      child: Text(
                                        'Fill out Information',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 9 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // iconparkoutlinesuccessB91 (2023:2630)
                                  left: 289.9790039062 * fem,
                                  top: 33 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 38.04 * fem,
                                      height: 40 * fem,
                                      child: Image.asset(
                                        'assets/images/icon-park-outline-success.png',
                                        width: 38.04 * fem,
                                        height: 40 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // lucideclipboardpen4Co (2023:2607)
                                  left: 31 * fem,
                                  top: 38 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 24 * fem,
                                      height: 30 * fem,
                                      child: Image.asset(
                                        'assets/images/lucide-clipboard-pen.png',
                                        width: 24 * fem,
                                        height: 30 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // vector9zw (2023:2619)
                                  left: 196 * fem,
                                  top: 38 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 43 * fem,
                                      height: 31 * fem,
                                      child: Image.asset(
                                        'assets/images/idCard.png',
                                        width: 43 * fem,
                                        height: 31 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // majesticonsscanuserlineGpf (2023:2625)
                                  left: 114.625 * fem,
                                  top: 39.625 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 27.75 * fem,
                                      height: 27.75 * fem,
                                      child: Image.asset(
                                        'assets/images/majesticons-scan-user-line.png',
                                        width: 27.75 * fem,
                                        height: 27.75 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // line78nY7 (2023:2638)
                                  left: 90.9999949295 * fem,
                                  top: 15 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 0 * fem,
                                      height: 1 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xb2cbd2df),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // line79Hzf (2023:2639)
                                  left: 177.9999949295 * fem,
                                  top: 15 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 0 * fem,
                                      height: 1 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xb2cbd2df),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // line80RLB (2023:2640)
                                  left: 266.9999949295 * fem,
                                  top: 15 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 0 * fem,
                                      height: 1 * fem,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xb2cbd2df),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // solarmaparrowrightbold9X5 (2023:2641)
                                  left: 83 * fem,
                                  top: 56.9990234375 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 20 * fem,
                                      height: 18 * fem,
                                      child: Image.asset(
                                        'assets/images/solar-map-arrow-right-bold.png',
                                        width: 20 * fem,
                                        height: 18 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // solarmaparrowrightboldrAb (2023:2643)
                                  left: 169 * fem,
                                  top: 56.9990234375 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 20 * fem,
                                      height: 18 * fem,
                                      child: Image.asset(
                                        'assets/images/solar-map-arrow-right-bold.png',
                                        width: 20 * fem,
                                        height: 18 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // solarmaparrowrightboldxjR (2023:2645)
                                  left: 259 * fem,
                                  top: 56.9990234375 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 20 * fem,
                                      height: 18 * fem,
                                      child: Image.asset(
                                        'assets/images/solar-map-arrow-right-bold.png',
                                        width: 20 * fem,
                                        height: 18 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // listofvalidids41m (2023:2647)
                                  left: 131 * fem,
                                  top: 152 * fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 97 * fem,
                                      height: 16 * fem,
                                      child: Text(
                                        'List of Valid IDs',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 12 * ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.3318750858 * ffem / fem,
                                          decoration: TextDecoration.underline,
                                          color: Color(0xff259ded),
                                          decorationColor: Color(0xff259ded),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // afterverificationunlockmorefea (2023:2652)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 1 * fem, 29 * fem),
                            child: Text(
                              'After verification, unlock more features like:',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Color(0xff231f20),
                              ),
                            ),
                          ),
                          Container(
                            // autogroup9zkwSY7 (LJf3kjQPCtrkP1yDL99zkw)
                            margin: EdgeInsets.fromLTRB(
                                84 * fem, 0 * fem, 83 * fem, 11 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // kycsendmoneysmallmqH (2023:2673)
                                  width: 51 * fem,
                                  height: 51 * fem,
                                  child: Image.asset(
                                    'assets/images/kycsendmoneysmall.png',
                                    width: 51 * fem,
                                    height: 51 * fem,
                                  ),
                                ),
                                SizedBox(
                                  width: 47 * fem,
                                ),
                                Container(
                                  // kycinsurancesmallstK (2023:2654)
                                  width: 51 * fem,
                                  height: 51 * fem,
                                  child: Image.asset(
                                    'assets/images/kycinsurancesmall.png',
                                    width: 51 * fem,
                                    height: 51 * fem,
                                  ),
                                ),
                                SizedBox(
                                  width: 47 * fem,
                                ),
                                Container(
                                  // kycbanktransfersmallzi3 (2023:2680)
                                  width: 51 * fem,
                                  height: 51 * fem,
                                  child: Image.asset(
                                    'assets/images/kycbanktransfersmall.png',
                                    width: 51 * fem,
                                    height: 51 * fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroups63hvrb (LJf3vycK7LXiMoEqt4s63H)
                            margin: EdgeInsets.fromLTRB(
                                95 * fem, 0 * fem, 88.5 * fem, 55 * fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // sendmoneyQfH (2025:2692)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 58.5 * fem, 0 * fem),
                                  constraints: BoxConstraints(
                                    maxWidth: 31 * fem,
                                  ),
                                  child: Text(
                                    'Send\nMoney',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 9 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff4f4f4f),
                                    ),
                                  ),
                                ),
                                Container(
                                  // insuranceUf9 (2025:2691)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 59 * fem, 0 * fem),
                                  child: Text(
                                    'Insurance',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 9 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff4f4f4f),
                                    ),
                                  ),
                                ),
                                Container(
                                  // banktransferBZZ (2023:2679)
                                  constraints: BoxConstraints(
                                    maxWidth: 37 * fem,
                                  ),
                                  child: Text(
                                    'Bank\nTransfer',
                                    textAlign: TextAlign.center,
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 9 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff4f4f4f),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group410VaF (2025:2694)
                            margin: EdgeInsets.fromLTRB(
                                31 * fem, 0 * fem, 30 * fem, 0 * fem),
                            child: TextButton(
                              onPressed: () {
                                // Navigator.pushReplacement(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (_) => aboutScreen(),
                                //   ),
                                // );
                              },
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                              ),
                              child: Container(
                                padding: EdgeInsets.fromLTRB(104.5 * fem,
                                    11 * fem, 23.67 * fem, 14 * fem),
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
                                      // getverifiedwSF (2025:2696)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 55.17 * fem, 0 * fem),
                                      child: Text(
                                        'Get Verified',
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
                                      // solararrowrightbrokenT9h (2025:2697)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 4 * fem, 0 * fem, 0 * fem),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
