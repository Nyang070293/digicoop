import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:getwidget/getwidget.dart';

class settingScreen extends StatefulWidget {
  const settingScreen({super.key});

  @override
  State<settingScreen> createState() => _settingScreenState();
}

class _settingScreenState extends State<settingScreen> {
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
                          context.pushReplacementNamed(dashboard);
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
                          'Settings',
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
                          // group309toZ (2045:8214)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 28 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogrouppretWa3 (LJh9c4hmR8741K1WgCprET)
                                padding: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 32 * fem, 0 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // account111 (2045:8219)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 27 * fem),
                                      child: Text(
                                        'Account',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group338fLT (2045:8215)
                                      padding: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // changepasswordwom (2045:8218)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 197 * fem, 0 * fem),
                                            child: Text(
                                              'Change Password',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff4f4f4f),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // arrow21mH1 (2045:8216)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 0 * fem),
                                            width: 11 * fem,
                                            height: 20 * fem,
                                            child: Image.asset(
                                              'assets/images/arrow_black_right.png',
                                              width: 11 * fem,
                                              height: 20 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // line3d4K (2045:8220)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 25 * fem),
                                width: double.infinity,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffe0e0e0),
                                ),
                              ),
                              Container(
                                // group349815 (2045:8221)
                                margin: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 32 * fem, 27 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // changemobilenumberLN3 (2045:8224)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 148 * fem, 0 * fem),
                                      child: Text(
                                        'Change mobile number',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff4f4f4f),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrow21oWX (2045:8222)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      width: 11 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/images/arrow_black_right.png',
                                        width: 11 * fem,
                                        height: 20 * fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group310dVZ (2045:8236)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          width: double.infinity,
                          height: 96 * fem,
                          child: Container(
                            // autogroupd4dmXqq (LJhAZCnZGuNxncnVpQd4dM)
                            padding: EdgeInsets.fromLTRB(
                                29 * fem, 0 * fem, 32 * fem, 27 * fem),
                            width: double.infinity,
                            height: 95 * fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // security1m1 (2045:8241)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 27 * fem),
                                  child: Text(
                                    'Security',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff259ded),
                                    ),
                                  ),
                                ),
                                Container(
                                  // group337HiX (2045:8237)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // changempinjqR (2045:8240)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 230 * fem, 0 * fem),
                                        child: Text(
                                          'Change MPIN',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff4f4f4f),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // arrow21QAs (2045:8238)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                        width: 11 * fem,
                                        height: 20 * fem,
                                        child: Image.asset(
                                          'assets/images/arrow_black_right.png',
                                          width: 11 * fem,
                                          height: 20 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // group420GTy (2045:8243)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 40 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // notificationsWNK (2045:8244)
                                margin: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Text(
                                  'Notifications',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: Color(0xff259ded),
                                  ),
                                ),
                              ),
                              Container(
                                // group419ASs (2045:8245)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 23 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 21 * fem, 0 * fem),
                                width: double.infinity,
                                height: 51 * fem,
                                child: SizedBox(
                                  // autogroupyw7ye79 (LJhB96yjmfmoGeWnYryW7y)
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // pushnotificationjuH (2045:8246)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 179 * fem, 0 * fem),
                                        child: Text(
                                          'Push Notification',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff4f4f4f),
                                          ),
                                        ),
                                      ),
                                      GFToggle(
                                        onChanged: (val) {},
                                        value: true,
                                        enabledThumbColor: Colors.blue,
                                        type: GFToggleType.ios,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group420EjZ (2045:8251)
                                padding: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 21 * fem, 0 * fem),
                                width: double.infinity,
                                height: 51 * fem,
                                child: SizedBox(
                                  // autogroupwcruh7M (LJhBHgZmzw97PAstduWcRu)
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // enabletotpCZu (2045:8252)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 215 * fem, 0 * fem),
                                        child: Text(
                                          'Enable TOTP',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 16 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff4f4f4f),
                                          ),
                                        ),
                                      ),
                                      GFToggle(
                                        onChanged: (val) {},
                                        value: true,
                                        enabledThumbColor: Colors.blue,
                                        type: GFToggleType.ios,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // group313AQF (2045:8226)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 28 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupqdh91Qs (LJhAHstm4UBMcerTxHqdH9)
                                padding: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 32 * fem, 27 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // about1ZH (2045:8233)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 27 * fem),
                                      child: Text(
                                        'About',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // autogroupho3dSo1 (LJhA241o9HHetDFUYuho3D)
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // termsandconditionsKM1 (2045:8231)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 166 * fem, 0 * fem),
                                            child: Text(
                                              'Terms and Conditions',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2175 * ffem / fem,
                                                color: Color(0xff4f4f4f),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // arrow21MYb (2045:8227)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                1 * fem, 0 * fem, 0 * fem),
                                            width: 11 * fem,
                                            height: 20 * fem,
                                            child: Image.asset(
                                              'assets/images/arrow_black_right.png',
                                              width: 11 * fem,
                                              height: 20 * fem,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // line31d9 (2045:8234)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 26 * fem),
                                width: double.infinity,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffe0e0e0),
                                ),
                              ),
                              Container(
                                // autogroupdkxmsQT (LJhA93p8ypxzitet6cdKXM)
                                margin: EdgeInsets.fromLTRB(
                                    29 * fem, 0 * fem, 32 * fem, 27 * fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // privacypolicyMaX (2045:8232)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 233 * fem, 0 * fem),
                                      child: Text(
                                        'Privacy Policy',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff4f4f4f),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // arrow22dH9 (2045:8229)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                      width: 11 * fem,
                                      height: 20 * fem,
                                      child: Image.asset(
                                        'assets/images/arrow_black_right.png',
                                        width: 11 * fem,
                                        height: 20 * fem,
                                      ),
                                    ),
                                  ],
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
      ),
    );
  }
}
