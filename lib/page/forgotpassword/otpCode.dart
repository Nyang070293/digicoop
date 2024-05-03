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
  final String mobile;
  const otpCodeScreen({super.key, required this.mobile});

  @override
  ConsumerState<otpCodeScreen> createState() => _otpCodeScreenState();
}

class _otpCodeScreenState extends ConsumerState<otpCodeScreen> {
  int _start = 60;
  late Timer _timer;
  bool isTimeOver = false;
  final pinController = TextEditingController();

  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_start == 0) {
        setState(() {
          _timer.cancel();
          isTimeOver = true;
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

  Future<void> gnrtOTP() async {
    pinController.clear();

    _start = 60;
    isTimeOver = false;
    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (_start == 0) {
        setState(() {
          _timer.cancel();
          isTimeOver = true;
        });
      } else {
        setState(() {
          _start--;
        });
      }
    });

    try {
      final data =
          '{"contactOptionId": 1,  "otpUsageType": 1,  "contactOptionValue": "${widget.mobile}", "isTest":0, "applicationId": 2}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("mobile otp $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.generateOTP),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("otp mobile ${jsonData}");
      // Handle response
      if (response.statusCode == 201 || response.statusCode == 200) {
        SharedPrefs.write(personCode, jsonData['data']['personCode']);
        SharedPrefs.write(userCode, jsonData['data']['userCode']);
        // context.pushReplacementNamed(otpCode);
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

        // context.pushReplacementNamed(changeFPW);
        context.pushReplacementNamed(
          changeFPW,
          pathParameters: {
            "otpCode": otp,
          },
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
                          context.pushReplacementNamed(login);
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
                            40 * fem, 0 * fem, 84 * fem, 0 * fem),
                        child: Text(
                          'OTP',
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
                          // yourmpinwillbeusedtologintoyou (2062:15646)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 20 * fem, 20 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 351 * fem,
                          ),
                          child: Text(
                            'We’ve sent a 6-digit authentication code to your mobile number.',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.bold,
                              height: 1.3318751199 * ffem / fem,
                              color: Color.fromARGB(255, 5, 5, 5),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupy6zd1Cj (Ga6Q2bRur19jQaywXyy6Zd)
                          margin: EdgeInsets.fromLTRB(
                              30 * fem, 50 * fem, 0 * fem, 70 * fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Pinput(
                                autofillHints: [AutofillHints.oneTimeCode],
                                length: 6,
                                defaultPinTheme: defaultPinTheme,
                                focusedPinTheme: defaultPinTheme.copyWith(
                                  decoration:
                                      defaultPinTheme.decoration!.copyWith(
                                    border: Border.all(color: Colors.grey),
                                  ),
                                ),
                                controller: pinController,
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
                                isTimeOver
                                    ? const SizedBox()
                                    : Container(
                                        // resendcodein2UX (35:2020)
                                        margin: EdgeInsets.fromLTRB(30 * fem,
                                            0 * fem, 9 * fem, 0 * fem),
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
                                isTimeOver
                                    ? Container(
                                        margin: EdgeInsets.fromLTRB(90 * fem,
                                            0 * fem, 9 * fem, 0 * fem),
                                        child: GestureDetector(
                                          onTap: () {
                                            gnrtOTP();
                                          },
                                          child: Text(
                                            // seconds4RD (35:2021)
                                            'Resend Code',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 16 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff259ded),
                                            ),
                                          ),
                                        ),
                                      )
                                    : Text(
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
                              30 * fem, 40 * fem, 20 * fem, 10 * fem),
                          child: TextButton(
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (_) => const setupMobilepinScreen(),
                              //   ),
                              // );
                              if (pinController.length < 6) {
                                Flush.flushMessage(
                                  icons: Icons.error_outline,
                                  title: "Error",
                                  message: "Invalid Pin Code",
                                );
                              }
                              sendData(pinController.text);
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
