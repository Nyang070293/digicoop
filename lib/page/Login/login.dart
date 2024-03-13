import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/page/Signup/signup.dart';
import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/page/mpin/mpin_page.dart';
import 'package:digicoop/page/onBoardingCode/onBoardingCode.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:totp/totp.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _key = encrypt.Key.fromUtf8('my32lengthsupersecretnooneknows1');
  final _iv = encrypt.IV.fromLength(16);

  void _onTap() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => const signupScreen(),
      ),
    );
  }

  // void main() {
  //   final code6 = OTP.generateTOTPCodeString(
  //       'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
  //       interval: 36000);
  //   print(code6);
  //   //  print(OTP.remainingSeconds(interval: 60));
  // }

  Future<void> sendData() async {
    //final totp = Totp(secret: 'PPZPJDZGNGXELNVL'.codeUnits, digits: 6);
    final totp = Totp(
        secret: 'PPZPJDZGNGXELNVL'.codeUnits,
        digits: 6,
        algorithm: Algorithm.sha1,
        period: 43200);

    // final totp = Totp(
    //     secret: 'PPZPJDZGNGXELNVL'.codeUnits,
    //     digits: 6,
    //     algorithm: Algorithm.sha256,
    //     period: 36000);

    // String totp = TOTP.generateTOTP('PPZPJDZGNGXELNVL',
    //     algorithm: sha256.toString(), digits: 6, period: 36000);

    // var now = DateTime.now();
    // // //now = DateTime(2023, 04, 26, 10, 10, 10);

    // final code = OTP.generateTOTPCodeString(
    //     'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
    //     interval: 43200, algorithm: Algorithm.SHA256, isGoogle: false);
    // print(code);

    const plainText =
        '{"applicationId": 0,  "isTest": 0,  "mobileNumber": "09269694352"}'; // Payload to encrypt

    final encrypted = Aes256.encrypt(plainText, totp.now());
    print("plainText ${plainText}");
    print("code ${totp.now()}");
    print("encrypt ${encrypted}");
    // final key = encrypt.Key.fromSecureRandom(32);
    // final iv = encrypt.IV.fromSecureRandom(16);
    // final encrypter = encrypt.Encrypter(encrypt.AES(_key)); // AES encryption

    // final encryptedPayload =
    //     encrypter.encrypt(plainText, iv: _iv); // Encrypt the payload
    // print("encrypt ${encryptedPayload.base16}");
    // final response = await http.post(
    //   Uri.parse('https://your-api-endpoint.com'),
    //   body: {
    //     'data': encryptedPayload.base64, // Send the encrypted data
    //   },
    // );

    // if (response.statusCode == 200) {
    //   // Handle success
    //   print('Success');
    // } else {
    //   // Handle error
    //   print('Error: ${response.statusCode}');
    // }
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
                    onPressed: sendData,
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
