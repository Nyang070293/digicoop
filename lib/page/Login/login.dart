import 'package:digicoop/function/aes.dart';
import 'package:digicoop/page/mpin/mpin_page.dart';
import 'package:digicoop/page/onBoardingCode/onBoardingCode.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:go_router/go_router.dart';
import 'package:otp/otp.dart';
import 'package:timezone/data/latest.dart' as timezone;
import 'package:timezone/timezone.dart' as timezone;

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _onTap() {
    context.pushReplacementNamed(homeAddress);

    //CipherPage
  }

  // void main() {
  //   final code6 = OTP.generateTOTPCodeString(
  //       'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
  //       interval: 36000);
  //   print(code6);

  //   //  print(OTP.remainingSeconds(interval: 60));
  // }

  Future<void> sendData() async {
    final now = DateTime.now();
    timezone.initializeTimeZones();

    final pacificTimeZone = timezone.getLocation('Asia/Manila');
    final date = timezone.TZDateTime.from(now, pacificTimeZone);

    final code = OTP.generateTOTPCodeString(
        'PPZPJDZGNGXELNVL', date.millisecondsSinceEpoch,
        interval: 43200, algorithm: Algorithm.SHA1, isGoogle: true);

    const plainText =
        '{"applicationId": 0,  "isTest": 0,  "mobileNumber": "09269694352"}'; // Payload to encrypt

    const encoded =
        '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';
    final encrypted = Aes256.encrypt(plainText, code);

    final decrypt = Aes256.decrypt(encoded, code);
    print("plainText ${plainText}");
    print("code ${code}");
    print("encrypt ${encrypted}");
    print("decrypt ${decrypt}");
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
