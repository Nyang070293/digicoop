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

class bankAddScreen extends StatefulWidget {
  final String image, bankName, institutionID;
  const bankAddScreen({
    super.key,
    required this.image,
    required this.bankName,
    required this.institutionID,
  });

  @override
  State<bankAddScreen> createState() => _bankAddScreenState();
}

class _bankAddScreenState extends State<bankAddScreen> {
  final TextEditingController _nickName = TextEditingController();
  final TextEditingController _acctName = TextEditingController();
  final TextEditingController _acctNum = TextEditingController();
  final TextEditingController _sendReceipt = TextEditingController();

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

  Future<void> sendData(String acctName, String acctNumber) async {
    try {
      Map<String, String> headers = {
        // Define content-type as JSON
        'Authorization':
            'Bearer ${SharedPrefs.read(accessToken)}', // Add your authorization token here
      };
      final data =
          '{"institutionId": "${widget.institutionID}","accountNumber": "$acctNumber", "type": 1, "accountName": "$acctName",  "alternateName": " "}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody add bank acct $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.addBankacct),
        headers: headers,
        body: {'data': encryptedBody},
      );
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      //String userCode = jsonData["data"]["userCode"];
      print("data  add bank acct ${jsonData}");
      //print("userCode ${userCode}");
      // Handle response
      if (response.statusCode == 201) {
        context.pushReplacementNamed(bankTransfer);
      } else if (response.statusCode == 400) {
        context.pop();
        Flush.flushMessage(
          icons: Icons.error_outline,
          title: "Error",
          message: jsonData['message']
              .toString()
              .replaceAll('[', '')
              .replaceAll(']', ''),
        );
      } else {
        context.pop();
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
                          context.pushReplacementNamed(
                            bankSearch,
                            pathParameters: {
                              "type": "0",
                            },
                          );
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
                          'Add Bank Account',
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
                          // autogroup1jeoxDd (LJcUzvS9VVW7oz6uK71jeo)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 0 * fem, 30 * fem, 74 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group259rZu (87:5600)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 37.97 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle8yxT (82:3062)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 10 * fem, 0 * fem),
                                      width: 60.19 * fem,
                                      height: 58.03 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        border: Border.all(
                                            color: const Color(0xffe7e7e7)),
                                        color: const Color(0xffffffff),
                                      ),
                                      child: Center(
                                        child: Image.network(
                                          widget
                                              .image, // Replace this with your image URL
                                          loadingBuilder: (BuildContext context,
                                              Widget child,
                                              ImageChunkEvent?
                                                  loadingProgress) {
                                            if (loadingProgress == null)
                                              return child;
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        loadingProgress
                                                            .expectedTotalBytes!
                                                    : null,
                                              ),
                                            );
                                          },
                                          errorBuilder: (BuildContext context,
                                              Object exception,
                                              StackTrace? stackTrace) {
                                            return const Text(
                                                'Error loading image');
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // bdounibankincf4b (82:3061)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                      width: 160 * fem,
                                      child: Text(
                                        widget.bankName,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff3f3f3f),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group939kaT (75:400)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                width: double.infinity,
                                height: 65 * fem,
                                child: CommonTextField(
                                  controller: _nickName,
                                  labelText: 'Nickname (optional)',
                                  textInputAction: TextInputAction.next,
                                  accentColor: const Color(0xff259ded),
                                ),
                              ),
                              Container(
                                // group939kaT (75:400)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                width: double.infinity,
                                height: 65 * fem,
                                child: CommonTextField(
                                  controller: _acctName,
                                  labelText: 'Account Name',
                                  textInputAction: TextInputAction.next,
                                  accentColor: const Color(0xff259ded),
                                ),
                              ),
                              Container(
                                // group939kaT (75:400)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                width: double.infinity,
                                height: 65 * fem,
                                child: CommonTextField(
                                  controller: _acctNum,
                                  labelText: 'Account Number',
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  accentColor: const Color(0xff259ded),
                                ),
                              ),
                              Container(
                                // group939kaT (75:400)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                width: double.infinity,
                                height: 65 * fem,
                                child: CommonTextField(
                                  controller: _sendReceipt,
                                  labelText: 'Send Receipt To (optional)',
                                  textInputAction: TextInputAction.next,
                                  accentColor: const Color(0xff259ded),
                                ),
                              ),
                              Container(
                                // group410Kd9 (87:5574)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 90 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    if (_acctName.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please enter Account Name",
                                      );
                                      return;
                                    }

                                    if (_acctNum.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please enter Account Number",
                                      );
                                      return;
                                    }
                                    showLoadingDialog();
                                    sendData(_acctName.text, _acctNum.text);
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(102.5 * fem,
                                        12 * fem, 23.67 * fem, 13 * fem),
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
                                          // sendmoney9s5 (87:5576)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 48.17 * fem, 0 * fem),
                                          child: Text(
                                            'Save Account',
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
                                          // solararrowrightbrokenrmV (87:5577)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              2 * fem, 0 * fem, 0 * fem),
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
