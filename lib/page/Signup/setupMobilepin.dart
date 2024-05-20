import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/textfieldNumberFormat.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class setupMobilepinScreen extends ConsumerStatefulWidget {
  const setupMobilepinScreen({super.key});

  @override
  ConsumerState<setupMobilepinScreen> createState() =>
      _setupMobilepinScreenState();
}

class _setupMobilepinScreenState extends ConsumerState<setupMobilepinScreen> {
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _cmobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _cpasswordController = TextEditingController();

  void showLoadingDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text(
                "Please Wait....",
                style: TextStyle(
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> sendData(String password, String pinCode, String CpinCode,
      String Cpassword) async {
    try {
      //print("personCode1 ${SharedPrefs.read(personCode)}"); mpinOnboarding
      final data;
      String url = "";
      if (SharedPrefs.read(branchCode).toString().isNotEmpty) {
        data =
            '{  "personCode": "${SharedPrefs.read(personCode)}", "cooperativeBranchCode": "${SharedPrefs.read(branchCode)}",  "pinCode": "$pinCode", "pinCodeConfirm":"$CpinCode", "password": "$password", "passwordConfirm": "$Cpassword"}';
        url = DigiCoopAPI.mpinOnboarding;
      } else {
        data =
            '{"password": "$password",  "personCode": "${SharedPrefs.read(personCode)}",  "pinCode": "$pinCode", "pinCodeConfirm":"$CpinCode", "passwordConfirm": "$Cpassword"}';
        url = DigiCoopAPI.mpin;
      }

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody MPIN $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(url),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("MPIN ${jsonData}");
      // Handle response
      if (response.statusCode == 201) {
        SharedPrefs.write(accessToken, jsonData['data']['accessToken']);
        context.pushNamed(about);
      } else if (response.statusCode == 400) {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: "${jsonData['message'][0]} ${jsonData['message'][1]}",
        );
      } else {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: jsonData['message'],
        );
      }
    } catch (e) {
      print('Error sending encrypted payload: $e');
    }
  }

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
            // step1setupmobilepinK1y (75:77)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed(signup);
                  },
                  child: Container(
                    // autogroupvvr3D7M (Ga7iBjsAwVPgcq6FKRvvr3)
                    margin: EdgeInsets.only(bottom: 55 * fem),
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
                        Container(
                          // arrow14Ns (75:85)
                          margin: EdgeInsets.only(
                              right: 73.22 * fem, bottom: 4.22 * fem),
                          width: 29.57 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/arrow-left.png',
                            width: 29.57 * fem,
                            height: 17 * fem,
                          ),
                        ),
                        Container(
                          // createaccountAgo (75:88)
                          margin: EdgeInsets.only(right: 84 * fem),
                          child: Text(
                            'Create Account',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff231f20),
                            ),
                          ),
                        ),
                        Container(
                          // authenticationGUw (75:89)
                          margin: EdgeInsets.only(bottom: 4 * fem),
                          child: Text(
                            ' 1 / 5',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffc1c1c1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // authenticationBbu (75:87)
                          margin:
                              EdgeInsets.only(left: 31 * fem, bottom: 29 * fem),
                          child: Text(
                            'Account Security',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.bold,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff262626),
                            ),
                          ),
                        ),
                        Container(
                          // authenticationJwR (75:90)
                          margin:
                              EdgeInsets.only(left: 31 * fem, bottom: 9 * fem),
                          child: Text(
                            'Mobile Pin',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.bold,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff262626),
                            ),
                          ),
                        ),
                        Container(
                          // yourmpinwillbeusedtologintoyou (75:113)
                          margin: EdgeInsets.only(left: 31 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 351 * fem,
                          ),
                          child: Text(
                            'Your MPIN will be used to login to your DigiCOOP account. Do not share your MPIN to anyone else.',
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
                          // autogroupf455sd9 (Ga7ideHgCCiz9E5DRef455)
                          padding: EdgeInsets.fromLTRB(
                              30 * fem, 41 * fem, 30 * fem, 74 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group846bZ9 (75:99)
                                margin: EdgeInsets.only(bottom: 20 * fem),
                                width: 500,
                                height: 65 * fem,
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 64 * fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      textfieldNumberFormat(
                                        controller: _mobileController,
                                        keyboardType: TextInputType.number,
                                        labelText: 'Enter 6-Digit Mobile Pin.',
                                        maxLength: 6,
                                        obscureText: true,
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupnqck5sd (Ga7iLuGa9y4mtF58sHNqCK)
                                margin: EdgeInsets.only(bottom: 20 * fem),
                                width: 354 * fem,
                                height: 76 * fem,
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      height: 64 * fem,
                                      child: textfieldNumberFormat(
                                        controller: _cmobileController,
                                        keyboardType: TextInputType.number,
                                        labelText:
                                            'Confirm 6-Digit Mobile Pin.',
                                        maxLength: 6,
                                        obscureText: true,
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // authenticationbzP (75:91)
                                margin: EdgeInsets.only(
                                    right: 252 * fem, bottom: 23 * fem),
                                child: Text(
                                  'Set Password',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.bold,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff262626),
                                  ),
                                ),
                              ),
                              Container(
                                // group847KfV (75:107)
                                margin: EdgeInsets.only(bottom: 22 * fem),
                                width: double.infinity,
                                height: 65 * fem,
                                child: Container(
                                  // autogrouprw5vfUT (Ga7jCiAurNxzh8MEvfRW5V)
                                  padding: EdgeInsets.only(bottom: 5.73 * fem),
                                  width: double.infinity,
                                  height: 64 * fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CommonTextField(
                                        controller: _passwordController,
                                        labelText: 'Password',
                                        obscureText: true,
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group8483ju (75:110)
                                margin: EdgeInsets.only(bottom: 51.74 * fem),
                                width: double.infinity,
                                height: 64 * fem,
                                child: SizedBox(
                                  // autogroupybsdPHy (Ga7jN84tvEV8jnAcF9Ybsd)
                                  width: double.infinity,
                                  height: 63 * fem,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CommonTextField(
                                        controller: _cpasswordController,
                                        labelText: 'Confirm Password',
                                        obscureText: true,
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (_mobileController.text.isEmpty) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Field Required",
                                      message:
                                          "Please Enter 6-Digit Mobile Pin",
                                    );
                                  }
                                  if (_mobileController.text.length < 6) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Field Required",
                                      message:
                                          "Please Enter 6-Digit Mobile Pin",
                                    );
                                  } else if (_cmobileController.text.isEmpty) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Field Required",
                                      message:
                                          "Please Enter Confirmation 6-Digit Mobile Pin",
                                    );
                                  } else if (_mobileController.text !=
                                      _cmobileController.text) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Invalid Input",
                                      message:
                                          "Confirmation Mobile Pin does not match ",
                                    );
                                  } else if (_passwordController.text.isEmpty) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Field Required",
                                      message: "Please Enter Password",
                                    );
                                  } else if (_cpasswordController
                                      .text.isEmpty) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Field Required",
                                      message:
                                          "Please Enter Confirmation Password",
                                    );
                                  } else if (_passwordController.text !=
                                      _cpasswordController.text) {
                                    Flush.flushMessage(
                                      icons: Icons.error_outline,
                                      title: "Invalid Input",
                                      message:
                                          "Confirmation Password does not match ",
                                    );
                                  } else {
                                    showLoadingDialog();
                                    sendData(
                                        _passwordController.text,
                                        _mobileController.text,
                                        _cmobileController.text,
                                        _cpasswordController.text);
                                  }
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(126 * fem,
                                      15 * fem, 23.67 * fem, 10 * fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: const Color(0xff259ded),
                                    borderRadius:
                                        BorderRadius.circular(100 * fem),
                                    boxShadow: [
                                      BoxShadow(
                                        color: const Color(0x3f000000),
                                        offset: Offset(0 * fem, 4 * fem),
                                        blurRadius: 2 * fem,
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Proceed',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 24 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xffffffff),
                                        ),
                                      ),
                                      Container(
                                        // solararrowrightbrokenPz7 (75:96)
                                        margin: EdgeInsets.only(
                                            left: 80 * fem, bottom: 4 * fem),
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
