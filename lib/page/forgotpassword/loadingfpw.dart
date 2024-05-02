import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class loadingFPWScreen extends ConsumerStatefulWidget {
  final String otpCode;
  const loadingFPWScreen({super.key, required this.otpCode});

  @override
  ConsumerState<loadingFPWScreen> createState() => _loadingFPWScreenState();
}

class _loadingFPWScreenState extends ConsumerState<loadingFPWScreen> {
  @override
  void initState() {
    super.initState();
    sendData();
    //  getOTP();
    // Add a delay of 2 seconds before navigating to the next screen
    // Future.delayed(const Duration(seconds: 5), () {
    //   // Navigate to the next screen after the delay

    //   context.pushNamed(bankSuccess);
    // });
  }

  Future<void> sendData() async {
    try {
      //print("personCode1 ${SharedPrefs.read(personCode)}");
      final data =
          '{"personCode": "${SharedPrefs.read(personCode)}","userCode": "${SharedPrefs.read(userCode)}", "otpCode": "${widget.otpCode}", "applicationId": 2, "otpIdentifier": "${SharedPrefs.read(otpIdentifier)}" }';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody MPIN $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.updatepasswordIdentify),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      //String userCode = jsonData["data"]["userCode"];
      print("loading fpw respond ${jsonData}");
      //print("userCode ${userCode}");
      // Handle response
      if (response.statusCode == 201) {
        context.pushReplacementNamed(successFPW);
      } else if (response.statusCode == 400) {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: jsonData['message'],
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // loadingaeK (27:1791)
            width: double.infinity,
            height: 896 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 200 * fem, 0 * fem, 80 * fem),
                        child: Image.asset(
                          'assets/images/loading_digi.gif',
                          width: 124.88 * fem,
                          height: 124.88 * fem,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 40 * fem),
                      child: Text(
                        'Loadings',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xff259ded),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Please wait while we are',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318751199 * ffem / fem,
                          color: const Color(0xff828282),
                        ),
                        softWrap: true,
                      ),
                    ),
                    Center(
                      child: Text(
                        'updating your account...',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318751199 * ffem / fem,
                          color: const Color(0xff828282),
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
