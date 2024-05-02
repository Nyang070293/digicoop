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
import 'package:intl/intl.dart';

class loadingEwalletScreen extends ConsumerStatefulWidget {
  final String name,
      paymentMethod,
      paymentCategoryID,
      institutionID,
      aggregatorID,
      mobile,
      amount,
      sf,
      aggregatorGivenCode;
  const loadingEwalletScreen({
    super.key,
    required this.name,
    required this.paymentMethod,
    required this.paymentCategoryID,
    required this.institutionID,
    required this.aggregatorID,
    required this.mobile,
    required this.amount,
    required this.sf,
    required this.aggregatorGivenCode,
  });

  @override
  ConsumerState<loadingEwalletScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends ConsumerState<loadingEwalletScreen> {
  @override
  void initState() {
    super.initState();
    sendData();
  }

  NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'en_US', symbol: '');

  Future<void> sendData() async {
    String url = "";
    if (widget.aggregatorGivenCode == "GCSB") {
      url = DigiCoopAPI.cashinGCASH;
    } else {
      url = DigiCoopAPI.cashinBankAPI;
    }

    Map<String, String> headers = {
      // Define content-type as JSON
      'Authorization':
          'Bearer ${SharedPrefs.read(accessToken)}', // Add your authorization token here
    };

    try {
      //print("personCode1 ${SharedPrefs.read(personCode)}");
      final data =
          '{ "tenderId": 1, "transactionDetails": [{ "paymentMethod": "${widget.aggregatorGivenCode}", "amount": ${widget.amount},"description": "Topup Transaction", "email": "${SharedPrefs.read(emailAdd)}", "firstName": "${SharedPrefs.read(firstname)}", "lastName": "${SharedPrefs.read(lastname)}", "paymentCategoryID": ${widget.paymentCategoryID}, "institutionID": ${widget.institutionID}, "aggregatorID": ${widget.aggregatorID} }]}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      print("encryptedBody ewallet $encryptedBody");
      http.Response response = await http.post(
        Uri.parse(url),
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
      print("data cash in bank : ${jsonData}");
      //print("userCode ${userCode}");
      // Handle response
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Extract transactionStatusID
        int transactionStatusID = jsonData['data']['transactionOutput'][0]
            ['transactionDetails'][0]['transactionStatusID'];
        await SharedPrefs.write(
            cashinamount, currencyFormat.format(double.parse(widget.amount)));
        context.pushReplacementNamed(
          ewalletresult,
          pathParameters: {
            "index": transactionStatusID.toString(),
          },
        );

        //context.pushNamed(loadingChangePIN);
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
                        'Loading',
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
                        'processing your transaction...',
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
