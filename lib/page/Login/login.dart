import 'dart:convert';

import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/dialog/simple_dialog.dart';
import 'package:digicoop/function/aes.dart';
import 'package:digicoop/global/auth_global.dart';
import 'package:digicoop/page/mpin/mpin_page.dart';
import 'package:digicoop/page/onBoardingCode/onBoardingCode.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otp/otp.dart';
import 'package:timezone/data/latest.dart' as timezone;
import 'package:timezone/timezone.dart' as timezone;
import 'package:http/http.dart' as http;

class loginScreen extends ConsumerStatefulWidget {
  const loginScreen({super.key});

  @override
  ConsumerState<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends ConsumerState<loginScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onTap() {
    context.pushReplacementNamed(signup);
  }

  void login() {
    final auth = ref.watch(authScene);
    // Simulate login action here
    // You can replace the sleep with actual login logic
    //Future.delayed(Duration(seconds: 2), () {
    // After login is complete, close the loading dialog
    auth.signIn(
      username: _numberController.text,
      password: _passwordController.text,
      onError: (data) {
        context.pop();
        DialogCustom.dialog(
          context: context,
          title: "Something went wrong!",
          titleButton: "Okay",
          textTitleSize: 18.sp,
          message: data,
          press: () {
            context.pop();
          },
        );
      },
      onSuccess: (data) async {
        print('Login successful!');
        context.pushReplacementNamed(dashboard);
      },
    );

    // Navigate to the next screen or perform any other action
    // For demonstration purposes, we just print a message

    // });
  }

  Future<void> sendData(String username, String password) async {
    try {
      //print("personCode1 ${SharedPrefs.read(personCode)}");
      final data =
          '{"username": "$username","password": "$password",  "applicationId": "2", "location": "", "deviceType": "mobile"}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody MPIN $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.logIn),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("login ${jsonData}");
      // Handle response
      if (response.statusCode == 200) {
        context.pushNamed(dashboard);
      } else if (response.statusCode == 400) {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: "Invalid Authentication credentials.",
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
  void dispose() {
    // _connectivitySubscription.cancel();
    super.dispose();
    _numberController.dispose();
    _passwordController.dispose();
  }

  @override
  void initState() {
    getTOTP();
    _numberController.text = "09538699409";
    _passwordController.text = "Qwerty2.";
    super.initState();
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
                "Logging in...",
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

  Future<void> getTOTP() async {
    final now = DateTime.now();
    timezone.initializeTimeZones();

    final pacificTimeZone = timezone.getLocation('Asia/Manila');
    final date = timezone.TZDateTime.from(now, pacificTimeZone);

    final code = OTP.generateTOTPCodeString(
        'PPZPJDZGNGXELNVL', date.millisecondsSinceEpoch,
        interval: 43200, algorithm: Algorithm.SHA1, isGoogle: true);

    await SharedPrefs.write(totp, code);

    // final decrypt = Aes256.decrypt(encoded, code);
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // loginscreenGsy (41:6717)
            width: double.infinity,
            height: 880 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Positioned(
                  // vector3Vk3 (41:6739)
                  left: -180,
                  top: -100,
                  child: Align(
                    child: SizedBox(
                      width: 377.78 * fem,
                      height: 320.06 * fem,
                      child: Image.asset(
                        'assets/images/vector-3-X6o.png',
                        width: 377.78 * fem,
                        height: 320.06 * fem,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // autogroupjmcsPjd (Ga6gmnCLeabMaQx9kMJmcs)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: SizedBox(
                    width: 507 * fem,
                    height: 456.04 * fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // applogowhiteV1y (41:6724)
                          left: 47 * fem,
                          top: 175 * fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(99.88 * fem, 105 * fem,
                                2.92 * fem, 22.75 * fem),
                            width: 302 * fem,
                            height: 155 * fem,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  'assets/images/logoBlue.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Number
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      39 * fem, 380 * fem, 25 * fem, 2 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Password Field
                      CommonTextField(
                        controller: _numberController,
                        labelText: 'Enter Mobile No.',
                        keyboardType: TextInputType.number,
                        prefixIconData: Icons.phone,
                        obscureText: false,
                        textInputAction: TextInputAction.next,
                        accentColor: const Color(0xff259ded),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                //password
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      39 * fem, 470 * fem, 25 * fem, 0 * fem),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Password Field
                      CommonTextField(
                        controller: _passwordController,
                        labelText: 'Enter Password',
                        prefixIconData: Icons.lock,
                        obscureText: true,
                        textInputAction: TextInputAction.next,
                        accentColor: const Color(0xff259ded),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
                Positioned(
                  // autogroupgnwbPPV (Ga6hRG7tM5SYaCKyBCgNWB)
                  left: 37 * fem,
                  top: 550 * fem,
                  child: SizedBox(
                    width: 400 * fem,
                    height: 20 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // loginviampinnAj (97:6896)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 77 * fem, 0 * fem),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MPinPage()),
                              );
                            },
                            child: Text(
                              'Login via MPIN',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff8fd4ff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // loginviampinnAj (97:6896)
                          margin: EdgeInsets.fromLTRB(
                              35 * fem, 0 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            // forgotpasswordoLj (41:6741)
                            'Forgot Password?',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff8fd4ff),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // donthaveanaccountsignuphere6qd (41:6743)
                  left: 61.5 * fem,
                  top: 800 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 298 * fem,
                      height: 20 * fem,
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2189999819 * ffem / fem,
                            color: const Color(0xff8fd4ff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? ',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff828282),
                              ),
                            ),
                            TextSpan(
                              text: 'Sign up here',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 16 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff8fd4ff),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = _onTap,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // useonboardingcodeBGj (41:6745)
                  left: 125 * fem,
                  top: 728 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 180 * fem,
                      height: 20 * fem,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const onBoardingCodeScreen()),
                          );
                        },
                        child: Text(
                          'Use Onboarding Code',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff8fd4ff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // group410MaX (41:6746)
                  left: 31 * fem,
                  top: 629 * fem,
                  child: TextButton(
                    onPressed: () {
                      if (_numberController.text.isEmpty) {
                        Flush.flushMessage(
                            title: "Required Field.",
                            icons: Icons.warning,
                            message: "Please Enter your Mobile No.");
                      } else if (_passwordController.text.isEmpty) {
                        Flush.flushMessage(
                            title: "Required Field.",
                            icons: Icons.warning,
                            message: "Please Enter your Password.");
                      } else if (_numberController.text.isNotEmpty ||
                          _passwordController.text.isNotEmpty) {
                        //showLoadingDialog();

                        // Simulate login action
                        sendData(
                            _numberController.text, _passwordController.text);
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          148 * fem, 16.08 * fem, 29.67 * fem, 8.92 * fem),
                      width: 353 * fem,
                      height: 55 * fem,
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
                            // loginpsR (41:6748)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 79.67 * fem, 0 * fem),
                            child: Text(
                              'Login',
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
                            // solararrowrightbrokenft3 (41:6749)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 6.15 * fem),
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
    );
  }
}
