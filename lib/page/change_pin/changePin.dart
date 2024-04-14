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

class changePINScreen extends StatefulWidget {
  const changePINScreen({super.key});

  @override
  State<changePINScreen> createState() => _changePINScreenState();
}

class _changePINScreenState extends State<changePINScreen> {
  final TextEditingController _curPIN = TextEditingController();
  final TextEditingController _newPIN = TextEditingController();
  final TextEditingController _newCPIN = TextEditingController();

  Future<void> sendData(String newPIN, String newCPIN) async {
    try {
      //print("personCode1 ${SharedPrefs.read(personCode)}");
      final data =
          '{"personCode":  "${SharedPrefs.read(personCode)}", "userCode": "${SharedPrefs.read(userCode)}",  "newPinCode": "$newPIN", "newPinCodeConfirm": "$newCPIN"}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody MPIN $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.changePIN),
        body: {'data': encryptedBody},
      );

      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      //String userCode = jsonData["data"]["userCode"];
      print("data respond ${jsonData}");
      //print("userCode ${userCode}");
      // Handle response
      if (response.statusCode == 201) {
        context.pushNamed(loadingChangePIN);
      } else if (response.statusCode == 400) {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: jsonData['message']
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', ''),
        );
      } else {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: jsonData['message']
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', ''),
        );
      }
    } catch (e) {
      print('Error sending encrypted payload: $e');
    }
  }

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
                          context.pushReplacementNamed(setting);
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
                          'Change PIN',
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
                          // authenticationWoq (2062:15625)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 0 * fem, 0 * fem, 10 * fem),
                          child: Text(
                            'Account Security',
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
                          // authenticationDy9 (2062:15627)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 0 * fem, 0 * fem, 9 * fem),
                          child: Text(
                            'Change PIN',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: Color(0xff262626),
                            ),
                          ),
                        ),
                        Container(
                          // yourmpinwillbeusedtologintoyou (2062:15646)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 0 * fem, 0 * fem, 0 * fem),
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
                              color: Color(0xff828282),
                            ),
                          ),
                        ),
                        Container(
                          // autogroupu63hQXq (LJitizYf4v4iPhyu5SU63h)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 41 * fem, 30 * fem, 0 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group846i2j (2062:15635)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 5 * fem, 0 * fem),
                                width: double.infinity,
                                child: Container(
                                  // autogroupjt2fdfV (LJiu7Q4zQMZLzmGAQojT2f)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          // Password Field
                                          CommonTextField(
                                            controller: _curPIN,
                                            labelText: 'Enter Current PIN',
                                            keyboardType: TextInputType.number,
                                            obscureText: true,
                                            textInputAction:
                                                TextInputAction.next,
                                            accentColor:
                                                const Color(0xff259ded),
                                          ),
                                          const SizedBox(height: 16),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 354 * fem,
                                height: 76 * fem,
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        // Password Field
                                        CommonTextField(
                                          controller: _newPIN,
                                          labelText: 'Enter New PIN',
                                          keyboardType: TextInputType.number,
                                          obscureText: true,
                                          textInputAction: TextInputAction.next,
                                          accentColor: const Color(0xff259ded),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogrouprdfuoCb (LJitVLGkXfAm5zxPgCrdfu)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 100 * fem),
                                width: 354 * fem,
                                height: 76 * fem,
                                child: Stack(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        // Password Field
                                        CommonTextField(
                                          controller: _newCPIN,
                                          labelText: 'Confirm New PIN',
                                          keyboardType: TextInputType.number,
                                          obscureText: true,
                                          textInputAction: TextInputAction.next,
                                          accentColor: const Color(0xff259ded),
                                        ),
                                        const SizedBox(height: 16),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group410hSP (2062:15629)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    if (_newPIN.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message:
                                            "Please enter your new Password",
                                      );
                                      return;
                                    }
                                    if (_newCPIN.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message:
                                            "Please enter your Confirm Password",
                                      );
                                      return;
                                    }

                                    sendData(_newPIN.text, _newCPIN.text);
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(126 * fem,
                                        15 * fem, 23.67 * fem, 10 * fem),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // proceedLET (2062:15631)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 75.67 * fem, 0 * fem),
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
                                          // solararrowrightbrokenqwu (2062:15632)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 4 * fem),
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
