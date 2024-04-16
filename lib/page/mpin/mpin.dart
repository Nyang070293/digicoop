// import 'package:digicoop/page/Login/login.dart';
// import 'package:digicoop/util/utils.dart';
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
import 'package:flutter_pin_code_widget/flutter_pin_code_widget.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

class mpinScreen extends ConsumerStatefulWidget {
  const mpinScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<mpinScreen> createState() => _mpinScreenState();
}

class _mpinScreenState extends ConsumerState<mpinScreen> {
  Future<void> sendData(String PINCode) async {
    try {
      print("refreshToken ${SharedPrefs.read(refreshToken)}");
      final data =
          '{"username": "${SharedPrefs.read(MobileNum)}","pincode": "$PINCode",  "applicationId": "2", "refreshToken": "${SharedPrefs.read(refreshToken)}"}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody MPIN $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.logInMPIN),
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      //String userCode = jsonData["data"]["userCode"];
      print("loginPIN ${jsonData}");
      // print("userCode ${jsonData["statusCode"]}");
      // print("userCode ${jsonData["message"]}");

      // Handle response
      if (jsonData["statusCode"] == 200) {
        // await SharedPrefs.write(userCode, jsonData["data"]["userCode"]);
        // await SharedPrefs.write(personCode, jsonData["data"]["personCode"]);
        await SharedPrefs.write(refreshToken, jsonData["data"]["refreshToken"]);
        await SharedPrefs.write(accessToken, jsonData["data"]["accessToken"]);
        // await SharedPrefs.write(MobileNum, username);
        // ignore: use_build_context_synchronously
        context.pushNamed(dashboard);
      } else if (jsonData["statusCode"] == 400) {
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Invalid Authentication credentials.",
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
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Color(0xff259ded),
      body: Container(
        color: Color(0xff259ded),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              Container(
                // applogowhitevxf (41:6765)
                margin: EdgeInsets.fromLTRB(
                    37.5 * fem, 0 * fem, 37.5 * fem, 55 * fem),
                padding: EdgeInsets.fromLTRB(
                    59.2 * fem, 62.32 * fem, 1.73 * fem, 13.5 * fem),
                width: double.infinity,
                height: 92 * fem,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/splashscreen.png',
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                // entermpincodeKmq (41:6766)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
                child: Text(
                  'Enter MPIN Code',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2175 * ffem / fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: PinCodeWidget(
                  minPinLength: 6,
                  maxPinLength: 6,
                  buttonColor: Colors.blue,
                  deleteButtonColor: Colors.blue,
                  onChangedPin: (pin) {
                    // check the PIN length and check different PINs with 4,5.. length.
                    if (pin.length == 6) {
                      sendData(pin);
                    }
                  },
                  onEnter: (pin, _) {
                    // callback user pressed enter
                  },
                  centerBottomWidget: InkWell(
                    onTap: () {
                      // Handle tap action here
                      context.pushReplacementNamed(login);
                    },
                    child: Text(
                      // loginviapasswordCnK (41:6763)
                      'Login via Password',
                      textAlign: TextAlign.right,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
