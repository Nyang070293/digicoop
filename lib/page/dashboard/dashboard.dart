import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/page/nav/mainNav.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';

class dashboardScreen extends StatefulWidget {
  const dashboardScreen({super.key});

  @override
  State<dashboardScreen> createState() => _dashboardScreenState();
}

class _dashboardScreenState extends State<dashboardScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String Fname = "";
  String Fullname = "";
  String Mobile_Num = "";
  double Balance = 0.00;
  int isVerify = 0;
  bool visibility = false;

  void _changed(bool stat) {
    setState(() {
      visibility = stat;
    });
  }

  @override
  void initState() {
    super.initState();
    getProfile();
    getWallet();
  }

  String formatCurrency(double amount) {
    var formatter = NumberFormat.currency(locale: 'en_US', symbol: '');
    return formatter.format(amount);
  }

  void clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear(); // This will clear all SharedPreferences data
  }

  void showLogoutConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Logout Confirmation',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          content: const Text(
            'Are you sure you want to log out?',
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                // Perform logout action here
                logOut();
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  Future<void> logOut() async {
    // print("accessToken ${SharedPrefs.read(accessToken)}");
// Create headers
    Map<String, String> headers = {
      // Define content-type as JSON
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer ${SharedPrefs.read(accessToken)}', // Add your authorization token here
    };

    // Make POST request
    try {
      final response = await http.post(
        Uri.parse(DigiCoopAPI.logout),
        headers: headers,
      );

      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("logout ${jsonData}");
      // Handle response
      if (response.statusCode == 201 || response.statusCode == 200) {
        clearSharedPreferences();
        context.pushReplacementNamed(login);
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
      print('dash Error sending encrypted payload: $e');
      // Flush.flushMessage(
      //   icons: Icons.error_outline,
      //   title: "Error",
      //   message: 'Error sending encrypted payload: $e',
      // );
    }
  }

  Future<void> getWallet() async {
    // print("accessToken ${SharedPrefs.read(accessToken)}");
// Create headers
    Map<String, String> headers = {
      // Define content-type as JSON
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer ${SharedPrefs.read(accessToken)}', // Add your authorization token here
    };

    // Make POST request
    try {
      final response = await http.post(
        Uri.parse(DigiCoopAPI.getWallet),
        headers: headers,
      );

      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("get wallet ${jsonData}");
      // Handle response
      if (response.statusCode == 201) {
        // print("FName $Fname");
        setState(() {
          Balance = jsonData["data"]["availableBalance"];
        });
        // print("MobileNum ${SharedPrefs.read(MobileNum).toString()}");
        // SharedPrefs.write(firstname, Fname);
        // SharedPrefs.write(fullName, Fullname);
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
      print('dash Error sending encrypted payload: $e');
      // Flush.flushMessage(
      //   icons: Icons.error_outline,
      //   title: "Error",
      //   message: 'Error sending encrypted payload: $e',
      // );
    }
  }

  Future<void> getProfile() async {
    print("accessToken ${SharedPrefs.read(accessToken)}");
// Create headers
    Map<String, String> headers = {
      // Define content-type as JSON
      'Content-Type': 'application/json',
      'Authorization':
          'Bearer ${SharedPrefs.read(accessToken)}', // Add your authorization token here
    };

    // Make POST request
    try {
      final response = await http.post(
        Uri.parse(DigiCoopAPI.profile),
        headers: headers,
      );

      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      print("get enc profile $encryptData");
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("get profile ${jsonData}");
      // Handle response
      if (response.statusCode == 201) {
        print("FName $Fname");
        setState(() {
          Fname = jsonData["data"]["person"][0]['firstName'];
          Fullname = jsonData["data"]["person"][0]['firstName'] +
              " " +
              jsonData["data"]["person"][0]['lastName'];
          Mobile_Num = SharedPrefs.read(MobileNum);
          isVerify = jsonData["data"]["person"][0]['kycStatus'];
        });

        print(jsonData["data"]["person"][0]['contactOptions'][2]
            ['personContactId']);
        print(jsonData["data"]["person"][0]['contactOptions'][2]
            ['personContactValue']);
        print(jsonData["data"]["person"][0]['addresses'][0]['personAddressId']);

        print("MobileNum ${SharedPrefs.read(MobileNum).toString()}");
        SharedPrefs.write(firstname, Fname);
        SharedPrefs.write(lastname, jsonData["data"]["person"][0]['lastName']);
        SharedPrefs.write(emailAdd, jsonData["data"]["person"][0]['email']);
        SharedPrefs.write(fullName, Fullname);
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
      print('dash Error sending encrypted payload: $e');
      // Flush.flushMessage(
      //   icons: Icons.error_outline,
      //   title: "Error",
      //   message: 'Error sending encrypted payload: $e',
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      key: _scaffoldKey,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // dashboardP1Z (2002:139)
            width: double.infinity,
            height: 1086 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                //User Name
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Positioned(
                        top: 50,
                        left: 50,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 20 * fem, 0 * fem, 0 * fem),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                    24 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            _scaffoldKey.currentState!
                                                .openDrawer();
                                          },
                                          child: Image.asset(
                                            'assets/images/menu.png',
                                            width: 30 * fem,
                                            height: 16.66 * fem,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(270 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/bell.png',
                                                width: 35 * fem,
                                                height: 35 * fem,
                                              ),
                                              Image.asset(
                                                'assets/images/help.png',
                                                width: 29.17 * fem,
                                                height: 29.17 * fem,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Hi, $Fname',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 24 * ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xff262626),
                                          ),
                                        ),
                                        isVerify == 3
                                            ? Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    10 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                width: 65 * fem,
                                                height: 20 * fem,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Color.fromARGB(
                                                          255, 66, 245, 105)),
                                                  color: const Color.fromARGB(
                                                      255, 66, 245, 105),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100 * fem),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: const Color(
                                                          0xffe7eaf0),
                                                      offset: Offset(
                                                          0 * fem, 3 * fem),
                                                      blurRadius: 2.5 * fem,
                                                    ),
                                                  ],
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    'Verify now',
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 9 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: const Color(
                                                          0xffffffff),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  context.pushReplacementNamed(
                                                      verifiedScreen);
                                                },
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      10 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem),
                                                  width: 65 * fem,
                                                  height: 20 * fem,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xff259ded)),
                                                    color:
                                                        const Color(0xff259ded),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                            0xffe7eaf0),
                                                        offset: Offset(
                                                            0 * fem, 3 * fem),
                                                        blurRadius: 2.5 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Verify now',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 9 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    //AVAILABLE BAL

                                    Container(
                                      width: 375 * fem,
                                      height: 79 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        border: Border.all(
                                            color: const Color(0xfff5f5f5)),
                                        color: const Color(0xff259ded),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xffe6eaf0),
                                            offset: Offset(0 * fem, 3 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    15 * fem,
                                                    10 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      'Available Balance',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1.3318750858 *
                                                            ffem /
                                                            fem,
                                                        color: const Color(
                                                            0xffffffff),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    SizedBox(
                                                      child: Image.asset(
                                                        'assets/images/vector-n55.png',
                                                        width: 17 * fem,
                                                        height: 10 * fem,
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              170 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 58 * fem,
                                                      height: 20 * fem,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                            color: const Color(
                                                                0xff259ded)),
                                                        color: const Color(
                                                            0xff8fd4ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100 * fem),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          'Cash In +',
                                                          style: SafeGoogleFont(
                                                            'Montserrat',
                                                            fontSize: 10 * ffem,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            height: 1.2175 *
                                                                ffem /
                                                                fem,
                                                            color: const Color(
                                                                0xffffffff),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    15 * fem,
                                                    5 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      '₱',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 24 * ffem,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xffecf8ff),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 5,
                                                    ),
                                                    SizedBox(
                                                      width: 150,
                                                      child: Text(
                                                        // F1h (2008:173)
                                                        formatCurrency(Balance),
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 24 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.2175 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xffecf8ff),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              100 * fem,
                                                              10 * fem,
                                                              0 * fem,
                                                              0 * fem),
                                                      width: 84 * fem,
                                                      height: 20 * fem,
                                                      child: Text(
                                                        'Manage Accounts',
                                                        style: SafeGoogleFont(
                                                          'Montserrat',
                                                          fontSize: 9 * ffem,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height: 1.3318750593 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xffffffff),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    //ENd

                                    //Link Account
                                    Container(
                                      // newsandupdatesH8j (2015:403)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 20 * fem, 0 * fem, 10 * fem),
                                      child: Text(
                                        'Linked Account',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 18 * ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.2175 * ffem / fem,
                                          color: const Color(0xff231f20),
                                        ),
                                      ),
                                    ),

                                    Container(
                                      // group989b9R (2015:569)
                                      padding: EdgeInsets.fromLTRB(27.5 * fem,
                                          28 * fem, 31.5 * fem, 21 * fem),
                                      width: 375 * fem,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: const Color(0xfff5f5f5)),
                                        color: const Color(0xfff3f3f3),
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        boxShadow: [
                                          BoxShadow(
                                            color: const Color(0xffe6eaf0),
                                            offset: Offset(0 * fem, 3 * fem),
                                            blurRadius: 2.5 * fem,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // dashboardscj (2015:405)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 22 * fem),
                                            constraints: BoxConstraints(
                                              maxWidth: 316 * fem,
                                            ),
                                            child: Text(
                                              'Link your account now for a comprehensive view of your cooperative account balances. Click the button below to get started.',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 12 * ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2175 * ffem / fem,
                                                color: const Color(0x7f1e1e1e),
                                              ),
                                            ),
                                          ),
                                          isVerify == 3
                                              ? Container(
                                                  // frame163412Arj (2015:406)
                                                  margin: EdgeInsets.fromLTRB(
                                                      85.5 * fem,
                                                      0 * fem,
                                                      94.5 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  height: 35 * fem,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: const Color(
                                                            0xff259ded)),
                                                    color:
                                                        const Color(0xff259ded),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                            0xffe7eaf0),
                                                        offset: Offset(
                                                            0 * fem, 3 * fem),
                                                        blurRadius: 2.5 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Link your account ',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xfff3f3f3),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  // frame163412Arj (2015:406)
                                                  margin: EdgeInsets.fromLTRB(
                                                      85.5 * fem,
                                                      0 * fem,
                                                      94.5 * fem,
                                                      0 * fem),
                                                  width: double.infinity,
                                                  height: 35 * fem,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Color.fromARGB(
                                                            255,
                                                            217,
                                                            221,
                                                            221)),
                                                    color: const Color.fromARGB(
                                                        255, 217, 221, 221),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100 * fem),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: const Color(
                                                            0xffe7eaf0),
                                                        offset: Offset(
                                                            0 * fem, 3 * fem),
                                                        blurRadius: 2.5 * fem,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Center(
                                                    child: Text(
                                                      'Link your account ',
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xfff3f3f3),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ),
                                    //end
                                    //buttons
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          24 * fem, 40 * fem, 0 * fem, 0 * fem),
                                      width: 321 * fem,
                                      height: 256 * fem,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // frame16339677u (2008:180)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 0 * fem, 40 * fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // frame163134e7q (2008:181)
                                                  margin: EdgeInsets.fromLTRB(
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      30 * fem),
                                                  width: double.infinity,
                                                  height: 83 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                // Handle click action here
                                                                context.pushReplacementNamed(
                                                                    cashinMain);
                                                              },
                                                              child: SizedBox(
                                                                // frame162983xPR (2008:182)
                                                                width: 57 * fem,
                                                                height: double
                                                                    .infinity,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // topupdisabled6Vd (2008:184)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          2 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          17.13 *
                                                                              fem,
                                                                          17.5 *
                                                                              fem,
                                                                          20.5 *
                                                                              fem,
                                                                          14.5 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // materialsymbolslightopeninphon (2011:250)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              19.38 * fem,
                                                                          height:
                                                                              25 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/open-in-phone.png',
                                                                            width:
                                                                                19.38 * fem,
                                                                            height:
                                                                                25 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // dashboardgCw (2008:183)
                                                                      'Cash In',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 2.6666666667 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0x7f000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162983xPR (2008:182)
                                                              width: 57 * fem,
                                                              height: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // topupdisabled6Vd (2008:184)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        2 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        17.13 *
                                                                            fem,
                                                                        17.5 *
                                                                            fem,
                                                                        20.5 *
                                                                            fem,
                                                                        14.5 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              const Color(0xffe7eaf0),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // materialsymbolslightopeninphon (2011:250)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 19.38 *
                                                                            fem,
                                                                        height: 25 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/open-in-phone.png',
                                                                          width:
                                                                              19.38 * fem,
                                                                          height:
                                                                              25 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // dashboardgCw (2008:183)
                                                                    'Cash In',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        SafeGoogleFont(
                                                                      'Montserrat',
                                                                      fontSize:
                                                                          9 * ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2.6666666667 *
                                                                          ffem /
                                                                          fem,
                                                                      color: const Color(
                                                                          0x7f000000),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                // context
                                                                //     .pushReplacementNamed(
                                                                //         changePassword);
                                                              },
                                                              child: SizedBox(
                                                                // frame162984Pd9 (2008:188)
                                                                width: 57 * fem,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // senddisabledKFu (2008:190)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          5 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          13 *
                                                                              fem,
                                                                          13.99 *
                                                                              fem,
                                                                          13.92 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // senticonPWf (2008:192)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30.01 * fem,
                                                                          height:
                                                                              30.08 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/sent-icon.png',
                                                                            width:
                                                                                30.01 * fem,
                                                                            height:
                                                                                30.08 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dashboardhnF (2008:189)
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            32 *
                                                                                fem,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Send\nMoney',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              9 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          height: 1 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              const Color(0x7f000000),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162984Pd9 (2008:188)
                                                              width: 57 * fem,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // senddisabledKFu (2008:190)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        5 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        13 *
                                                                            fem,
                                                                        13.99 *
                                                                            fem,
                                                                        13.92 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              const Color(0xffe7eaf0),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // senticonPWf (2008:192)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30.01 *
                                                                            fem,
                                                                        height: 30.08 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/sent-icon.png',
                                                                          width:
                                                                              30.01 * fem,
                                                                          height:
                                                                              30.08 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // dashboardhnF (2008:189)
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          32 *
                                                                              fem,
                                                                    ),
                                                                    child: Text(
                                                                      'Send\nMoney',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0x7f000000),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                context.pushReplacementNamed(
                                                                    bankTransfer);
                                                              },
                                                              child: SizedBox(
                                                                // frame162986oqH (2008:194)
                                                                width: 57 * fem,
                                                                height: double
                                                                    .infinity,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // paybillsdisabled9u9 (2008:196)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          5 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          12 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          11.58 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // mobilephonebilliconRrf (2008:198)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              33.42 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/bank.png',
                                                                            width:
                                                                                30 * fem,
                                                                            height:
                                                                                33.42 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // dashboardwq1 (2008:195)
                                                                      'Bank\nTransfer',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0x7f000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162986oqH (2008:194)
                                                              width: 57 * fem,
                                                              height: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // paybillsdisabled9u9 (2008:196)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        5 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        12 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        11.58 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              const Color(0xffe7eaf0),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // mobilephonebilliconRrf (2008:198)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30 *
                                                                            fem,
                                                                        height: 33.42 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/Disbank.png',
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              33.42 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // dashboardwq1 (2008:195)
                                                                    'Bank\nTransfer',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        SafeGoogleFont(
                                                                      'Montserrat',
                                                                      fontSize:
                                                                          9 * ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 1 *
                                                                          ffem /
                                                                          fem,
                                                                      color: const Color(
                                                                          0x7f000000),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                context.pushReplacementNamed(
                                                                    bankTransfer);
                                                              },
                                                              child: SizedBox(
                                                                // frame162982THZ (2008:201)
                                                                width: 57 * fem,
                                                                height: double
                                                                    .infinity,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // eloaddisabledCF9 (2008:203)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          2 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          13 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // communicationsmartphonesvgrepo (2008:205)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              30 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/mobile-phone-bill-icon.png',
                                                                            width:
                                                                                30 * fem,
                                                                            height:
                                                                                30 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      // dashboardP4j (2008:202)
                                                                      'Pay Bills',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 2.6666666667 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0x7f000000),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162982THZ (2008:201)
                                                              width: 57 * fem,
                                                              height: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // eloaddisabledCF9 (2008:203)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        2 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        13 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              217,
                                                                              221,
                                                                              221),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // communicationsmartphonesvgrepo (2008:205)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30 *
                                                                            fem,
                                                                        height: 30 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/mobile-phone-bill-icon.png',
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              30 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    // dashboardP4j (2008:202)
                                                                    'Pay Bills',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style:
                                                                        SafeGoogleFont(
                                                                      'Montserrat',
                                                                      fontSize:
                                                                          9 * ffem,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      height: 2.6666666667 *
                                                                          ffem /
                                                                          fem,
                                                                      color: const Color(
                                                                          0x7f000000),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  // frame1632747mR (2008:211)
                                                  width: double.infinity,
                                                  height: 85 * fem,
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                // context
                                                                //     .pushReplacementNamed(
                                                                //         bankTransfer);
                                                              },
                                                              child: SizedBox(
                                                                // frame162980BWP (2008:212)
                                                                width: 57 * fem,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // loansdisabledWYf (2008:214)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          6 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          13.28 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // homeinsuranceiconaYX (2008:216)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              29.72 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/communication-smartphone.png',
                                                                            width:
                                                                                30 * fem,
                                                                            height:
                                                                                29.72 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dashboard6mm (2008:213)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          1 * fem,
                                                                          0 * fem),
                                                                      child:
                                                                          Text(
                                                                        'E-Load',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              9 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              const Color(0xff828282),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162980BWP (2008:212)
                                                              width: 57 * fem,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // loansdisabledWYf (2008:214)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        6 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        13.28 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              const Color(0xffe7eaf0),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // homeinsuranceiconaYX (2008:216)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30 *
                                                                            fem,
                                                                        height: 29.72 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/communication-smartphone.png',
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              29.72 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // dashboard6mm (2008:213)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        1 * fem,
                                                                        0 * fem),
                                                                    child: Text(
                                                                      'E-Load',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0xff828282),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                // context
                                                                //     .pushReplacementNamed(
                                                                //         bankTransfer);
                                                              },
                                                              child: SizedBox(
                                                                // frame162981znb (2008:239)
                                                                width: 57 * fem,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // remittancedisabledwxj (2008:241)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          4 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          15 *
                                                                              fem,
                                                                          15 *
                                                                              fem,
                                                                          14.36 *
                                                                              fem,
                                                                          14.36 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // ctmloginqYK (2008:243)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              27.64 * fem,
                                                                          height:
                                                                              27.64 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/home-insurance-icon.png',
                                                                            width:
                                                                                27.64 * fem,
                                                                            height:
                                                                                27.64 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dashboardZUK (2008:240)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          1 * fem,
                                                                          0 * fem),
                                                                      child:
                                                                          Text(
                                                                        'Loans',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              9 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          height: 1.6666666667 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              const Color(0xff828282),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162981znb (2008:239)
                                                              width: 57 * fem,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // remittancedisabledwxj (2008:241)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        4 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        15 *
                                                                            fem,
                                                                        15 *
                                                                            fem,
                                                                        14.36 *
                                                                            fem,
                                                                        14.36 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              217,
                                                                              221,
                                                                              221),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // ctmloginqYK (2008:243)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 27.64 *
                                                                            fem,
                                                                        height: 27.64 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/home-insurance-icon.png',
                                                                          width:
                                                                              27.64 * fem,
                                                                          height:
                                                                              27.64 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // dashboardZUK (2008:240)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        1 * fem,
                                                                        0 * fem),
                                                                    child: Text(
                                                                      'Loans',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1.6666666667 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0xff828282),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      isVerify == 3
                                                          ? GestureDetector(
                                                              onTap: () {
                                                                // context
                                                                //     .pushReplacementNamed(
                                                                //         bankTransfer);
                                                              },
                                                              child: SizedBox(
                                                                // frame162985zs9 (2008:219)
                                                                width: 57 * fem,
                                                                height: double
                                                                    .infinity,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      // balancetransferdisabledwnP (2008:221)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          6 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          15 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          18.89 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // banktransfericon1d9R (2008:223)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              23.11 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/bank-transfer-icon.png',
                                                                            width:
                                                                                30 * fem,
                                                                            height:
                                                                                23.11 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      // dashboardwfu (2008:220)
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            40 *
                                                                                fem,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Balance Transfer',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              9 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              const Color(0xff828282),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            )
                                                          : SizedBox(
                                                              // frame162985zs9 (2008:219)
                                                              width: 57 * fem,
                                                              height: double
                                                                  .infinity,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    // balancetransferdisabledwnP (2008:221)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        6 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        15 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        18.89 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: Color.fromARGB(
                                                                              255,
                                                                              217,
                                                                              221,
                                                                              221),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // banktransfericon1d9R (2008:223)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30 *
                                                                            fem,
                                                                        height: 23.11 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/bank-transfer-icon.png',
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              23.11 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    // dashboardwfu (2008:220)
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          40 *
                                                                              fem,
                                                                    ),
                                                                    child: Text(
                                                                      'Balance Transfer',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0xff828282),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                      SizedBox(
                                                        width: 31 * fem,
                                                      ),
                                                      SizedBox(
                                                        // frame162985zs9 (2008:219)
                                                        width: 57 * fem,
                                                        height: double.infinity,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            isVerify == 3
                                                                ? GestureDetector(
                                                                    onTap: () {
                                                                      // context
                                                                      //     .pushReplacementNamed(
                                                                      //         bankTransfer);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      // balancetransferdisabledwnP (2008:221)
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          0 * fem,
                                                                          6 * fem),
                                                                      padding: EdgeInsets.fromLTRB(
                                                                          13 *
                                                                              fem,
                                                                          15 *
                                                                              fem,
                                                                          14 *
                                                                              fem,
                                                                          18.89 *
                                                                              fem),
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xfff0f7ff),
                                                                        borderRadius:
                                                                            BorderRadius.circular(5 *
                                                                                fem),
                                                                        boxShadow: [
                                                                          BoxShadow(
                                                                            color:
                                                                                const Color(0xffe7eaf0),
                                                                            offset:
                                                                                Offset(0 * fem, 3 * fem),
                                                                            blurRadius:
                                                                                2.5 * fem,
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      child:
                                                                          Center(
                                                                        // banktransfericon1d9R (2008:223)
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              23.11 * fem,
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/insurance.png',
                                                                            width:
                                                                                30 * fem,
                                                                            height:
                                                                                23.11 * fem,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                : Container(
                                                                    // balancetransferdisabledwnP (2008:221)
                                                                    margin: EdgeInsets.fromLTRB(
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        0 * fem,
                                                                        6 * fem),
                                                                    padding: EdgeInsets.fromLTRB(
                                                                        13 *
                                                                            fem,
                                                                        15 *
                                                                            fem,
                                                                        14 *
                                                                            fem,
                                                                        18.89 *
                                                                            fem),
                                                                    width: double
                                                                        .infinity,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color.fromARGB(
                                                                          255,
                                                                          217,
                                                                          221,
                                                                          221),
                                                                      borderRadius:
                                                                          BorderRadius.circular(5 *
                                                                              fem),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color:
                                                                              const Color(0xffe7eaf0),
                                                                          offset: Offset(
                                                                              0 * fem,
                                                                              3 * fem),
                                                                          blurRadius:
                                                                              2.5 * fem,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    child:
                                                                        Center(
                                                                      // banktransfericon1d9R (2008:223)
                                                                      child:
                                                                          SizedBox(
                                                                        width: 30 *
                                                                            fem,
                                                                        height: 23.11 *
                                                                            fem,
                                                                        child: Image
                                                                            .asset(
                                                                          'assets/images/insurance.png',
                                                                          width:
                                                                              30 * fem,
                                                                          height:
                                                                              23.11 * fem,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                            isVerify == 3
                                                                ? GestureDetector(
                                                                    onTap: () {
                                                                      // context
                                                                      //     .pushReplacementNamed(
                                                                      //         bankTransfer);
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      // dashboardwfu (2008:220)
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            40 *
                                                                                fem,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        'Receive\nMoney',
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style:
                                                                            SafeGoogleFont(
                                                                          'Montserrat',
                                                                          fontSize:
                                                                              9 * ffem,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          height: 1.2175 *
                                                                              ffem /
                                                                              fem,
                                                                          color:
                                                                              const Color(0xff828282),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  )
                                                                : Container(
                                                                    // dashboardwfu (2008:220)
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          40 *
                                                                              fem,
                                                                    ),
                                                                    child: Text(
                                                                      'Receive\nMoney',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          SafeGoogleFont(
                                                                        'Montserrat',
                                                                        fontSize:
                                                                            9 * ffem,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        height: 1.2175 *
                                                                            ffem /
                                                                            fem,
                                                                        color: const Color(
                                                                            0xff828282),
                                                                      ),
                                                                    ),
                                                                  ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          isVerify == 3
                                              ? Container(
                                                  // dashboardszo (2011:255)
                                                  margin: EdgeInsets.fromLTRB(
                                                      1 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem),
                                                  child: InkWell(
                                                    onTap: () {
                                                      // Handle click action here
                                                      //  _showContainerDialog(context);
                                                      visibility
                                                          ? _changed(false)
                                                          : _changed(true);
                                                    },
                                                    child: Text(
                                                      'View All Services',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Montserrat',
                                                        fontSize: 14 * ffem,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height:
                                                            1.2175 * ffem / fem,
                                                        color: const Color(
                                                            0xff259ded),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Container(
                                                  // dashboardszo (2011:255)
                                                  margin: EdgeInsets.fromLTRB(
                                                      1 * fem,
                                                      0 * fem,
                                                      0 * fem,
                                                      0 * fem),

                                                  child: Text(
                                                    'View All Services',
                                                    textAlign: TextAlign.center,
                                                    style: SafeGoogleFont(
                                                      'Montserrat',
                                                      fontSize: 14 * ffem,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height:
                                                          1.2175 * ffem / fem,
                                                      color: Color.fromARGB(
                                                          255, 217, 221, 221),
                                                    ),
                                                  ),
                                                ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 250,
                      ),
                    ],
                  ),
                ),
                //

                //botom
                const navBottom(pageActive: "home"),
                Positioned(
                  // frame163410HdR (2062:20277)
                  left: 23 * fem,
                  top: 723 * fem,
                  child: SizedBox(
                    width: 372 * fem,
                    height: 171 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // newsandupdatesoLs (2062:20278)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 15 * fem),
                          child: Text(
                            'News and Updates',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff231f20),
                            ),
                          ),
                        ),
                        SizedBox(
                          // promoadWm5 (2062:20279)
                          width: 372 * fem,
                          height: 134 * fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10 * fem),
                            child: Image.asset(
                              'assets/images/promoad.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //  view all
                visibility
                    ? Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: MediaQuery.of(context).size.width * 5,
                              height: 1086 * fem,
                              color: Colors.black.withOpacity(0.4),
                            ),
                          ),

                          //View all

                          Positioned(
                            // group990iHu (2015:1442)
                            left: 0 * fem,
                            top: 240 * fem,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  42 * fem, 29.75 * fem, 0 * fem, 44 * fem),
                              width: 414 * fem,
                              height: 460 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupepttbsV (LJesNwrmwTuecBKUPvEPtT)
                                    margin: EdgeInsets.fromLTRB(
                                        7 * fem, 0 * fem, 0 * fem, 47 * fem),
                                    width: double.infinity,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // viewallXWF (2015:1437)
                                          margin: EdgeInsets.fromLTRB(
                                              0 * fem,
                                              4.25 * fem,
                                              220.25 * fem,
                                              0 * fem),
                                          child: Text(
                                            'View All',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 18 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff231f20),
                                            ),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            visibility
                                                ? _changed(false)
                                                : _changed(true);
                                          },
                                          child: SizedBox(
                                            // xblackEfZ (2015:1438)
                                            width: 21.25 * fem,
                                            height: 21.25 * fem,
                                            child: Image.asset(
                                              'assets/images/xblack.png',
                                              width: 21.25 * fem,
                                              height: 21.25 * fem,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    // frame163397y7M (2015:1351)
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          // frame1631347UT (2015:1352)
                                          margin: EdgeInsets.fromLTRB(4 * fem,
                                              0 * fem, 0 * fem, 30 * fem),
                                          width: double.infinity,
                                          height: 83 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Container(
                                                // frame162983q9Z (2015:1353)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    30 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // topupdisabledxjy (2015:1355)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // additioncoloroutlineiconTwd (2015:1357)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          child: Image.asset(
                                                            'assets/images/addition-color-outline-icon.png',
                                                            width: 30 * fem,
                                                            height: 30 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardsVZ (2015:1354)
                                                      'Cash In',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162984cT9 (2015:1359)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    24 * fem,
                                                    0 * fem),
                                                width: 71 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // senddisabledj1y (2015:1361)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              7 * fem,
                                                              0 * fem,
                                                              7 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              13 * fem,
                                                              13.99 * fem,
                                                              13.92 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // senticonDhq (2015:1363)
                                                        child: SizedBox(
                                                          width: 30.01 * fem,
                                                          height: 30.08 * fem,
                                                          child: Image.asset(
                                                            'assets/images/sent-icon.png',
                                                            width: 30.01 * fem,
                                                            height: 30.08 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardYVD (2015:1360)
                                                      'Send Money',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162986V9Z (2015:1365)
                                                margin: EdgeInsets.fromLTRB(
                                                    0 * fem,
                                                    0 * fem,
                                                    31 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // paybillsdisabled1tb (2015:1367)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              5 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              12 * fem,
                                                              14 * fem,
                                                              11.58 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // mobilephonebillicon7gj (2015:1369)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 33.42 * fem,
                                                          child: Image.asset(
                                                            'assets/images/bank.png',
                                                            width: 30 * fem,
                                                            height: 33.42 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardpr3 (2015:1366)
                                                      'Bank\nTransfer',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 1 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162982Af1 (2015:1372)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // eloaddisabledWis (2015:1374)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // communicationsmartphonesvgrepo (2015:1376)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 30 * fem,
                                                          child: Image.asset(
                                                            'assets/images/mobile-phone-bill-icon.png',
                                                            width: 30 * fem,
                                                            height: 30 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardj5q (2015:1373)
                                                      'Pay Bills',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // frame163274fkB (2015:1382)
                                          margin: EdgeInsets.fromLTRB(4 * fem,
                                              0 * fem, 0 * fem, 24 * fem),
                                          height: 93 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                // frame162981L31 (2015:1411)
                                                width: 62 * fem,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // remittancedisableds2w (2015:1413)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              2.5 * fem,
                                                              0 * fem,
                                                              2.5 * fem,
                                                              4 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15 * fem,
                                                              15 * fem,
                                                              14.36 * fem,
                                                              14.36 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // ctmloginm8K (2015:1415)
                                                        child: SizedBox(
                                                          width: 27.64 * fem,
                                                          height: 27.64 * fem,
                                                          child: Image.asset(
                                                            'assets/images/communication-smartphone.png',
                                                            width: 27.64 * fem,
                                                            height: 27.64 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboard5Pu (2015:1412)
                                                      'E-Load',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162980CVD (2015:1383)
                                                margin: EdgeInsets.fromLTRB(
                                                    30 * fem,
                                                    0 * fem,
                                                    31 * fem,
                                                    0 * fem),
                                                width: 57 * fem,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // loansdisablediyM (2015:1385)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              5 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              14 * fem,
                                                              14 * fem,
                                                              13.28 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // homeinsuranceiconDv7 (2015:1387)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 29.72 * fem,
                                                          child: Image.asset(
                                                            'assets/images/home-insurance-icon.png',
                                                            width: 30 * fem,
                                                            height: 29.72 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardjtT (2015:1384)
                                                      'Loans',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height:
                                                            1.2125 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162985gYo (2015:1390)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // balancetransferdisabledqAo (2015:1392)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              6 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              15 * fem,
                                                              14 * fem,
                                                              18.89 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // banktransfericon18fh (2015:1394)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 23.11 * fem,
                                                          child: Image.asset(
                                                            'assets/images/bank-transfer-icon.png',
                                                            width: 30 * fem,
                                                            height: 23.11 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      // dashboard43Z (2015:1391)
                                                      constraints:
                                                          BoxConstraints(
                                                        maxWidth: 48 * fem,
                                                      ),
                                                      child: Text(
                                                        'Balance Transfer',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: SafeGoogleFont(
                                                          'Inter',
                                                          fontSize: 12 * ffem,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 1.2125 *
                                                              ffem /
                                                              fem,
                                                          color: const Color(
                                                              0xff000000),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // autogroup9exhmyZ (LJesxvt9igvAgczb3v9EXh)
                                                padding: EdgeInsets.fromLTRB(
                                                    31 * fem,
                                                    0 * fem,
                                                    0 * fem,
                                                    0 * fem),
                                                height: double.infinity,
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      // frame162988V8s (2015:1398)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              28.5 * fem,
                                                              0 * fem),
                                                      width: 57 * fem,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            // insurancedisabled1su (2015:1400)
                                                            margin: EdgeInsets
                                                                .fromLTRB(
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    0 * fem,
                                                                    4 * fem),
                                                            padding: EdgeInsets
                                                                .fromLTRB(
                                                                    16 * fem,
                                                                    15 * fem,
                                                                    13.89 * fem,
                                                                    14.81 *
                                                                        fem),
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xfff0f7ff),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5 * fem),
                                                            ),
                                                            child: Center(
                                                              // homeinsuranceiconi1d (2015:1402)
                                                              child: SizedBox(
                                                                width:
                                                                    27.11 * fem,
                                                                height:
                                                                    27.19 * fem,
                                                                child:
                                                                    Image.asset(
                                                                  'assets/images/insurance.png',
                                                                  width: 27.11 *
                                                                      fem,
                                                                  height:
                                                                      27.19 *
                                                                          fem,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            // dashboardpaT (2015:1399)
                                                            constraints:
                                                                BoxConstraints(
                                                              maxWidth:
                                                                  45 * fem,
                                                            ),
                                                            child: Text(
                                                              'Receive\nMoney',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style:
                                                                  SafeGoogleFont(
                                                                'Inter',
                                                                fontSize:
                                                                    12 * ffem,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                height: 1.2125 *
                                                                    ffem /
                                                                    fem,
                                                                color: const Color(
                                                                    0xff000000),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          // frame163398p6b (2015:1422)

                                          width: double.infinity,
                                          height: 83 * fem,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                // frame162981L31 (2015:1411)
                                                width: 62 * fem,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // remittancedisableds2w (2015:1413)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              2.5 * fem,
                                                              0 * fem,
                                                              2.5 * fem,
                                                              4 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              15 * fem,
                                                              15 * fem,
                                                              14.36 * fem,
                                                              14.36 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // ctmloginm8K (2015:1415)
                                                        child: SizedBox(
                                                          width: 27.64 * fem,
                                                          height: 27.64 * fem,
                                                          child: Image.asset(
                                                            'assets/images/ctmlogin.png',
                                                            width: 27.64 * fem,
                                                            height: 27.64 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboard5Pu (2015:1412)
                                                      'CTM Login',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                // frame162981Fhh (2015:1423)
                                                margin: EdgeInsets.fromLTRB(
                                                    30 * fem,
                                                    0 * fem,
                                                    27 * fem,
                                                    0 * fem),
                                                width: 65 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // remittancedisabledBLT (2015:1425)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              4 * fem,
                                                              0 * fem,
                                                              4 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              13 * fem,
                                                              15 * fem,
                                                              14 * fem,
                                                              14.82 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // globalbanktransfericonsj5 (2015:1427)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 27.18 * fem,
                                                          child: Image.asset(
                                                            'assets/images/global-bank-transfer-icon.png',
                                                            width: 30 * fem,
                                                            height: 27.18 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboardCWT (2015:1424)
                                                      'Remittance',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // frame162987YKR (2015:1430)
                                                width: 57 * fem,
                                                height: double.infinity,
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      // insurancedisabledUis (2015:1432)
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0 * fem,
                                                              0 * fem,
                                                              0 * fem,
                                                              2 * fem),
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              14 * fem,
                                                              11 * fem,
                                                              13 * fem,
                                                              11.76 * fem),
                                                      width: double.infinity,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xfff0f7ff),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    5 * fem),
                                                      ),
                                                      child: Center(
                                                        // healthmedicalinsuranceiconaG7 (2015:1434)
                                                        child: SizedBox(
                                                          width: 30 * fem,
                                                          height: 34.24 * fem,
                                                          child: Image.asset(
                                                            'assets/images/health-medical-insurance-icon.png',
                                                            width: 30 * fem,
                                                            height: 34.24 * fem,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      // dashboard5if (2015:1431)
                                                      'Insurance',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: SafeGoogleFont(
                                                        'Inter',
                                                        fontSize: 12 * ffem,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 2 * ffem / fem,
                                                        color: const Color(
                                                            0xff000000),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
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
                      )
                    : Container(),

                // End view all
              ],
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xff259ded),
        child: Positioned(
          // group994J2B (2037:5770)
          left: 0 * fem,
          top: 0 * fem,
          child: Container(
            width: 414 * fem,
            height: 812 * fem,
            decoration: const BoxDecoration(
              color: Color(0xb2000000),
            ),
            child: Stack(
              children: [
                Positioned(
                  // rectangle200oDq (2034:5633)
                  left: 0 * fem,
                  top: 0 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 325 * fem,
                      height: 900 * fem,
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff259ded),
                        ),
                      ),
                    ),
                  ),
                ),

                //Verify
                isVerify == 3
                    ? Positioned(
                        // frame163412VsM (2034:5641)
                        left: 117 * fem,
                        top: 130 * fem,
                        child: Container(
                          width: 65 * fem,
                          height: 20 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 6, 241, 171)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Verified',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 9 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff259ded),
                              ),
                            ),
                          ),
                        ),
                      )
                    : Positioned(
                        // frame163412VsM (2034:5641)
                        left: 117 * fem,
                        top: 130 * fem,
                        child: Container(
                          width: 65 * fem,
                          height: 20 * fem,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff93d4ff)),
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(100 * fem),
                          ),
                          child: Center(
                            child: Text(
                              'Verify now',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 9 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2175 * ffem / fem,
                                color: const Color(0xff259ded),
                              ),
                            ),
                          ),
                        ),
                      ),
                //End Verify

                //Name
                Positioned(
                  // phoebebuffayMuZ (2034:5638)
                  left: 120 * fem,
                  top: 90 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 137 * fem,
                      height: 22 * fem,
                      child: Text(
                        Fullname,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                //End Name

                //User Img
                Positioned(
                  // group9914oy (2034:5643)
                  left: 28 * fem,
                  top: 80 * fem,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        2.21 * fem, 2.21 * fem, 2.21 * fem, 2.21 * fem),
                    width: 74 * fem,
                    height: 74 * fem,
                    decoration: BoxDecoration(
                      color: const Color(0xff8fd4ff),
                      borderRadius: BorderRadius.circular(37 * fem),
                    ),
                    child: Center(
                      // ellipse76N3y (2034:5636)
                      child: SizedBox(
                        width: double.infinity,
                        height: 69.58 * fem,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(34.7910461426 * fem),
                            color: const Color(0xffffffff),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/images/empty_profile.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //End

                //Num
                Positioned(
                  // 4Sb (2034:5640)
                  left: 120 * fem,
                  top: 110 * fem,
                  child: Align(
                    child: SizedBox(
                      width: 80 * fem,
                      height: 16 * fem,
                      child: Text(
                        Mobile_Num,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318750858 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                // End

                //Menu
                Positioned(
                  // frame163415AVd (2037:5838)
                  left: 10 * fem,
                  top: 200 * fem,
                  child: SizedBox(
                    width: 286 * fem,
                    height: 411 * fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupcb7dsuq (LJgMzxXWcNdLnSjvRnCB7D)
                          padding: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 24 * fem),
                          width: double.infinity,

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              //MyAccount
                              Container(
                                // myaccountChD (2037:5761)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 250 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .white38, // specify the color you want for the border
                                      width:
                                          1, // specify the width of the border
                                    ),
                                  ),
                                ),
                                child: Container(
                                  // group995Kmq (2037:5836)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // myaccountF9h (2037:5756)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 155 * fem, 0 * fem),

                                        child: Text(
                                          'My Account',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // personmorexpo (2037:5757)
                                        width: 15 * fem,
                                        height: 18.75 * fem,
                                        child: Image.asset(
                                          'assets/images/personmore.png',
                                          width: 15 * fem,
                                          height: 18.75 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //end

                              //Notification
                              Container(
                                // myaccountChD (2037:5761)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 250 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .white38, // specify the color you want for the border
                                      width:
                                          1, // specify the width of the border
                                    ),
                                  ),
                                ),
                                child: Container(
                                  // group995Kmq (2037:5836)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // myaccountF9h (2037:5756)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 150 * fem, 0 * fem),

                                        child: Text(
                                          'Notifications',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // personmorexpo (2037:5757)
                                        width: 15 * fem,
                                        height: 18.75 * fem,
                                        child: Image.asset(
                                          'assets/images/notificationsmore.png',
                                          width: 15 * fem,
                                          height: 18.75 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //end

                              // Saved Transaction
                              Container(
                                // myaccountChD (2037:5761)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 250 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .white38, // specify the color you want for the border
                                      width:
                                          1, // specify the width of the border
                                    ),
                                  ),
                                ),
                                child: Container(
                                  // group995Kmq (2037:5836)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // myaccountF9h (2037:5756)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 105 * fem, 0 * fem),

                                        child: Text(
                                          'Saved Transactions',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        // personmorexpo (2037:5757)
                                        width: 15 * fem,
                                        height: 18.75 * fem,
                                        child: Image.asset(
                                          'assets/images/personmore.png',
                                          width: 15 * fem,
                                          height: 18.75 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //end

                              //Setting
                              GestureDetector(
                                onTap: () {
                                  context.pushReplacementNamed(setting);
                                },
                                child: Container(
                                  // myaccountChD (2037:5761)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 250 * fem,
                                  height: 40 * fem,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors
                                            .white38, // specify the color you want for the border
                                        width:
                                            1, // specify the width of the border
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    // group995Kmq (2037:5836)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // myaccountF9h (2037:5756)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 170 * fem, 0 * fem),

                                          child: Text(
                                            'Settings',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          // personmorexpo (2037:5757)
                                          width: 25 * fem,
                                          height: 25 * fem,
                                          child: Image.asset(
                                            'assets/images/settingsmore.png',
                                            width: 25 * fem,
                                            height: 25 * fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //End

                              //Help
                              Container(
                                // myaccountChD (2037:5761)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 250 * fem,
                                height: 40 * fem,
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(
                                      color: Colors
                                          .white38, // specify the color you want for the border
                                      width:
                                          1, // specify the width of the border
                                    ),
                                  ),
                                ),
                                child: Container(
                                  // group995Kmq (2037:5836)
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  width: double.infinity,
                                  height: 24 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // myaccountF9h (2037:5756)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0 * fem, 195 * fem, 0 * fem),
                                        child: Text(
                                          'Help',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2175 * ffem / fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // helpmore4ij (2037:5828)
                                        margin: EdgeInsets.fromLTRB(0 * fem,
                                            0.47 * fem, 0 * fem, 0 * fem),
                                        width: 19.07 * fem,
                                        height: 19.07 * fem,
                                        child: Image.asset(
                                          'assets/images/helpmore.png',
                                          width: 19.07 * fem,
                                          height: 19.07 * fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              //End

                              //Logout
                              GestureDetector(
                                onTap: () {
                                  showLogoutConfirmationDialog(context);
                                },
                                child: Container(
                                  // myaccountChD (2037:5761)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 24 * fem),
                                  padding: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  width: 250 * fem,
                                  height: 40 * fem,
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Colors
                                            .white38, // specify the color you want for the border
                                        width:
                                            1, // specify the width of the border
                                      ),
                                    ),
                                  ),
                                  child: Container(
                                    // group995Kmq (2037:5836)
                                    padding: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                    width: double.infinity,
                                    height: 24 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // myaccountF9h (2037:5756)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 180 * fem, 0 * fem),
                                          child: Text(
                                            'Logout',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w600,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // helpmore4ij (2037:5828)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0.47 * fem, 0 * fem, 0 * fem),
                                          width: 19.07 * fem,
                                          height: 19.07 * fem,
                                          child: Image.asset(
                                            'assets/images/logoutmore.png',
                                            width: 19.07 * fem,
                                            height: 19.07 * fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //End
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //End
              ],
            ),
          ),
        ),
      ),
    );
  }
}
