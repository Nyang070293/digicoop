import 'dart:async';
import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:http/http.dart' as http;

class otpCodeScreen extends ConsumerStatefulWidget {
  const otpCodeScreen({super.key});

  @override
  ConsumerState<otpCodeScreen> createState() => _otpCodeScreenState();
}

class _otpCodeScreenState extends ConsumerState<otpCodeScreen> {
  int _start = 60;
  late Timer _timer;

  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_start == 0) {
        setState(() {
          _timer.cancel();
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Future<void> sendData(String otp) async {
    try {
      // print("personCode1 ${SharedPrefs.read(personCode)}");
      final data =
          '{"otpUsageType":1, "applicationId": 2,  "personCode": "${SharedPrefs.read(personCode)}",  "otpCode": "$otp"}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBodys otp $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.ValidateOTP),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("verify otp fpw ${jsonData}");
      // Handle response otpIdentifier otp
      if (response.statusCode == 201 || response.statusCode == 200) {
        SharedPrefs.write(otpIdentifier, jsonData['data']['otpIdentifier']);
        SharedPrefs.write(otp, otp);
        context.pushReplacementNamed(changeFPW);
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

    final defaultPinTheme = PinTheme(
      width: 53,
      height: 53,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              // authenticationscreen2eK (27:1119)
              padding: EdgeInsets.fromLTRB(
                  29 * fem, 54.3 * fem, 10 * fem, 100 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pushReplacementNamed(mobile);
                    },
                    child: Container(
                      // arrow1qLs (33:2006)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 299 * fem, 47.7 * fem),
                      width: 45.22 * fem,
                      height: 26 * fem,
                      child: Image.asset(
                        'assets/images/arrow-left.png',
                        width: 45.22 * fem,
                        height: 26 * fem,
                      ),
                    ),
                  ),
                  Container(
                    // authenticationg6b (33:2008)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 143 * fem, 15 * fem),
                    child: Text(
                      'OTP',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 24 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff262626),
                      ),
                    ),
                  ),
                  Container(
                    // wevesenta6digitauthenticationc (33:2012)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 42 * fem, 60 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 303 * fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318751199 * ffem / fem,
                          color: const Color(0xff828282),
                        ),
                        children: [
                          const TextSpan(
                            text:
                                'We’ve sent a 6-digit authentication code to your mobile number ',
                          ),
                          TextSpan(
                            text: SharedPrefs.read(MobileNum),
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // autogroupy6zd1Cj (Ga6Q2bRur19jQaywXyy6Zd)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 0 * fem, 0 * fem, 70 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Pinput(
                          autofillHints: [AutofillHints.oneTimeCode],
                          length: 6,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: defaultPinTheme.copyWith(
                            decoration: defaultPinTheme.decoration!.copyWith(
                              border: Border.all(color: Colors.grey),
                            ),
                          ),
                          onCompleted: (pin) => sendData(pin),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogrouphnbzJuu (Ga6QDb7bJaMqj5m1PohnBZ)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 37 * fem, 50 * fem),
                    padding: EdgeInsets.fromLTRB(
                        63 * fem, 0 * fem, 27 * fem, 0 * fem),
                    width: 318 * fem,
                    height: 76 * fem,
                    child: Container(
                      // group187sM (35:2019)
                      width: double.infinity,
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // resendcodein2UX (35:2020)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 9 * fem, 0 * fem),
                            child: Text(
                              'Resend Code in',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xffbdbdbd),
                              ),
                            ),
                          ),
                          Text(
                            // seconds4RD (35:2021)
                            '$_start seconds',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff259ded),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // group410nEj (35:2022)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 10 * fem, 10 * fem),
                    child: TextButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (_) => const setupMobilepinScreen(),
                        //   ),
                        // );
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            142 * fem, 20 * fem, 23.67 * fem, 20 * fem),
                        width: double.infinity,
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
                              // verify68w (35:2024)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 91.67 * fem, 0 * fem),
                              child: Text(
                                'Verify',
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
                              // solararrowrightbrokenjSo (41:2275)
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
      ),
    );
  }
}
