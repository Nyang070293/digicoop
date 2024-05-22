import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class onBoardingCodeScreen extends StatefulWidget {
  const onBoardingCodeScreen({super.key});

  @override
  State<onBoardingCodeScreen> createState() => _onBoardingCodeScreenState();
}

class _onBoardingCodeScreenState extends State<onBoardingCodeScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();

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

  Future<void> sendData(String num, String onBoarding) async {
    clearSharedPreferences();
    try {
      final data =
          '{ "mobileNumber": "$num", "onboardingCode": "$onBoarding", "isTest": 0, "applicationId": 2 }';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody onboarding $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.onboardingCode),
        body: {'data': encryptedBody},
      );

      // Handle response
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("mobile onBoarding ${jsonData}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        if (jsonData['isExisting']) {
          context.pushReplacementNamed(login);
        } else {
          SharedPrefs.write(branchCode, jsonData['branchCode']);
          SharedPrefs.write(MobileNum, jsonData['data']['mobileNumber']);
          SharedPrefs.write(personCode, jsonData['data']['personCode']);
          context.pushReplacementNamed(vCode);
          // print("personCode ${SharedPrefs.read(personCode)}");
        }

        // if (response.statusCode == 400) {
      } else {
        String msg = jsonData['message'].toString().replaceAll('[', '');
        msg = msg.replaceAll(']', '');
        context.pop();
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: msg,
        );
      }
    } catch (e) {
      context.pop();
      Flush.flushMessage(
        icons: Icons.error_outline,
        title: "Error",
        message: 'Error sending encrypted payload: $e',
      );
      print('Error sending encrypted payload: $e');
    }
  }

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
            // onboardingcodegDm (27:1702)
            padding:
                EdgeInsets.fromLTRB(21 * fem, 54.3 * fem, 30 * fem, 0 * fem),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    context.pushReplacementNamed(login);
                  },
                  child: Container(
                    // arrow1NcP (27:1768)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 291 * fem, 47.7 * fem),
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
                  // authentication5mh (33:1981)
                  margin: EdgeInsets.fromLTRB(
                      0 * fem, 0 * fem, 125 * fem, 52 * fem),
                  child: Text(
                    'Onboarding Code',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 24 * ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff262626),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                Container(
                  // group845TQs (33:2001)
                  margin:
                      EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 0 * fem),
                  padding: EdgeInsets.fromLTRB(
                      3.5 * fem, 0 * fem, 3.5 * fem, 5.75 * fem),
                  width: 352 * fem,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // enteronboardingcodexcX (33:1985)
                        margin: EdgeInsets.fromLTRB(
                            0.5 * fem, 0 * fem, 0 * fem, 15.75 * fem),
                        child: CommonTextField(
                          controller: _codeController,
                          labelText: 'Enter Onboarding Code',
                          keyboardType: TextInputType.number,
                          prefixIconData: Icons.safety_check_outlined,
                          textInputAction: TextInputAction.next,
                          accentColor: const Color(0xff259ded),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  // group4102F1 (33:1992)
                  margin: EdgeInsets.fromLTRB(
                      10 * fem, 130 * fem, 0 * fem, 0 * fem),
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

                      if (_codeController.text.isEmpty) {
                        Flush.flushMessage(
                          icons: Icons.error_outline,
                          title: "Field Required",
                          message: "Please enter Onboarding Code.",
                        );
                      }

                      if (phoneNumber.startsWith("09")) {
                        // print("Phone number starts with '09'");
                        showLoadingDialog();
                        sendData(_numberController.text, _codeController.text);
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
                            // proceedEby (33:1994)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 75.67 * fem, 0 * fem),
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
                            // solararrowrightbroken9U3 (41:2273)
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
    );
  }
}
