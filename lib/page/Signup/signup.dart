import 'dart:async';
import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class signupScreen extends ConsumerStatefulWidget {
  const signupScreen({super.key});

  @override
  ConsumerState<signupScreen> createState() => _signupScreenState();
}

class _signupScreenState extends ConsumerState<signupScreen> {
  final TextEditingController _numberController = TextEditingController();

  void _onTap() {
    context.pushReplacementNamed(login);
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

  void clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> keys = prefs.getKeys().toList();

    for (String key in keys) {
      if (key != "totp") {
        prefs.remove(key);
      }
    } // This will clear all SharedPreferences data
  }

  Future<void> sendData(String num) async {
    clearSharedPreferences();
    try {
      final data =
          '{"applicationId": "2",  "isTest": "0",  "mobileNumber": "$num"}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.createUser),
        body: {'data': encryptedBody},
      );

      // Handle response
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("mobile ${jsonData}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        SharedPrefs.write(MobileNum, jsonData['data']['mobileNumber']);
        SharedPrefs.write(personCode, jsonData['data']['personCode']);

        print("personCode ${SharedPrefs.read(personCode)}");
        context.pushNamed(vCode);
      } else if (response.statusCode == 400) {
        context.pop();
        String msg = jsonData['message'].toString().replaceAll('[', '');
        msg = msg.replaceAll(']', '');
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: msg,
        );
      }
    } catch (e) {
      print('Error sending encrypted payload: $e');
    }
  }

  // void verify() async {
  //   int? statusCode = ref.watch(userCreate).statusCode;
  //   String? person_Code = ref.watch(userCreate).data?.personCode.toString();
  //   String? mobileno = ref.watch(userCreate).data?.mobileNumber.toString();

  //   if (statusCode == 201) {
  //     await SharedPrefs.write(MobileNum, mobileno);
  //     await SharedPrefs.write(personCode, person_Code);

  //     context.pushNamed(vCode);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(21 * fem, 54.3 * fem, 30 * fem, 0 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      context.pushNamed(login);
                    },
                    child: Container(
                      // arrow1WdM (41:6271)
                      margin: EdgeInsets.fromLTRB(
                          13.39 * fem, 0 * fem, 0 * fem, 47.7 * fem),
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
                    // authenticationcgP (41:6273)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 0 * fem, 15 * fem),
                    child: Text(
                      'Sign Up',
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
                    // enterandregisteryourmobilenumb (41:6593)
                    margin: EdgeInsets.fromLTRB(
                        18 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Enter and Register your Mobile Number.',
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3318751199 * ffem / fem,
                        color: const Color(0xff828282),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        13 * fem, 50 * fem, 0 * fem, 40 * fem),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Password Field
                        CommonTextField(
                          controller: _numberController,
                          labelText: 'Enter Mobile No.',
                          maxLength: 11,
                          keyboardType: TextInputType.number,
                          prefixIconData: Icons.phone,
                          textInputAction: TextInputAction.next,
                          accentColor: const Color(0xff259ded),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 150 * fem,
                    child: Align(
                      // dashboard1VZ (41:6594)
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: 337 * fem,
                          ),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2190000216 * ffem / fem,
                                color: const Color(0xcc1e1e1e),
                              ),
                              children: [
                                TextSpan(
                                  text:
                                      'By Entering your Mobile Number, you’re agreeing to our ',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xcc1e1e1e),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Terms of Service',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff259ded),
                                  ),
                                ),
                                TextSpan(
                                  text: ' and ',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xcc1e1e1e),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Privacy Policy.',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xff259ded),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // group410Vb5 (41:6286)
                    margin: EdgeInsets.fromLTRB(
                        10 * fem, 0 * fem, 0 * fem, 80 * fem),
                    child: TextButton(
                      onPressed: () {
                        String phoneNumber = _numberController.text;

                        if (_numberController.text.isEmpty) {
                          Flush.flushMessage(
                            icons: Icons.error_outline,
                            title: "Field Required",
                            message: "Please enter your Mobile Number.",
                          );
                        }

                        if (phoneNumber.startsWith("09")) {
                          // print("Phone number starts with '09'");
                          showLoadingDialog();
                          sendData(_numberController.text);
                        } else {
                          Flush.flushMessage(
                            icons: Icons.error_outline,
                            title: "Invalid format for Mobile Number.",
                            message: "Please follow this format: 09xxxxxxxxx",
                          );
                        }
                      },
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Container(
                        padding: EdgeInsets.fromLTRB(
                            126 * fem, 15 * fem, 23.67 * fem, 10 * fem),
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
                              // proceedjEX (41:6288)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 75.67 * fem, 10 * fem),
                              child: Text(
                                'Proceed',
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
                              // solararrowrightbrokenSud (41:6289)
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
                  SizedBox(
                    // alreadyhaveanaccountloginKyR (41:6596)
                    width: double.infinity,
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
                            text: 'Already have an account? ',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                          TextSpan(
                            text: 'Login ',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff8fd4ff),
                            ),
                            recognizer: TapGestureRecognizer()..onTap = _onTap,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
