import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/api_strings.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:digicoop/constant/flush_bar.dart';

class reviewDetailScreen extends ConsumerStatefulWidget {
  const reviewDetailScreen({super.key});

  @override
  ConsumerState<reviewDetailScreen> createState() => _reviewDetailScreenState();
}

String getFirstLetters(String text) {
  List<String> words = text.split(' ');
  String initials = '';

  for (String word in words) {
    if (word.isNotEmpty) {
      initials += word[0].toUpperCase();
    }
  }

  return initials;
}

class _reviewDetailScreenState extends ConsumerState<reviewDetailScreen> {
  Future<void> sendData() async {
    try {
      final data =
          '{"firstName": "${SharedPrefs.read(firstname)}","lastName": "${SharedPrefs.read(lastname)}", "middleName": "${SharedPrefs.read(middlename)}", "suffix": "${SharedPrefs.read(suffix)}", "gender": ${SharedPrefs.read(gender)}, "birthDate": "${SharedPrefs.read(birthday)}", "birthPlace": "${SharedPrefs.read(birthplace)}", "civilStatus": ${SharedPrefs.read(civilstatus)}, "address1": "${SharedPrefs.read(address1)}", "address2": "${SharedPrefs.read(address2)}", "cityId": "${SharedPrefs.read(cityId)}","zipCode": "${SharedPrefs.read(zipCode)}","contactOptionId": 2, "contactOptionValue": "${SharedPrefs.read(contactOptionValue)}","addressTypeId": ${SharedPrefs.read(addressTypeId)}}';

      final encryptedBody = Aes256.encrypt(data, SharedPrefs.read(totp));
      http.Response response = await http.post(
        Uri.parse(DigiCoopAPI.register),
        body: {'data': encryptedBody},
      );
      response.headers['Authorization'] =
          'Bearer ${SharedPrefs.read(accessToken)}';
      // Parse the JSON response body
      final responseData = json.decode(response.body);
      // Access specific data from the parsed response
      var encryptData = responseData['data'];

      final decrypt = Aes256.decrypt(encryptData, SharedPrefs.read(totp));
      Map<String, dynamic> jsonData = jsonDecode(decrypt!);
      print("reg ${jsonData}");
      // Handle response
      if (response.statusCode == 201) {
        context.pushReplacementNamed(loading);
        //context.pushNamed(l);
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

  String fullname =
      "${SharedPrefs.read(firstname)} ${getFirstLetters(SharedPrefs.read(middlename))}. ${SharedPrefs.read(lastname)} ${SharedPrefs.read(suffix)}";
  String birthDate = DateFormat('MMM dd yyyy')
      .format(DateTime.parse(SharedPrefs.read(birthday)));

  String Gender = SharedPrefs.read(d_gender);
  String cs = SharedPrefs.read(d_cs);

  String bp = SharedPrefs.read(birthplace);
  String emailaddress = SharedPrefs.read(contactOptionValue);
  String home_add =
      "${SharedPrefs.read(address1)} ${SharedPrefs.read(address2)} ${SharedPrefs.read(zipCode)}";

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
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 50 * fem),
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
                          context.pushNamed(homeAddress);
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
                          'Create Account',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                      Container(
                        // authenticationyE7 (75:717)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          '5 / 5',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xffc1c1c1),
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
                          // authenticationt6B (75:123)
                          margin: EdgeInsets.fromLTRB(
                              31 * fem, 0 * fem, 0 * fem, 18 * fem),
                          child: Text(
                            'Confirm Account\nInformation',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 24 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff262626),
                            ),
                          ),
                        ),
                        //Desc
                        Container(
                          // onlyprovideinformationthatistr (75:124)
                          margin: EdgeInsets.fromLTRB(
                              34 * fem, 0 * fem, 0 * fem, 0 * fem),
                          constraints: BoxConstraints(
                            maxWidth: 289 * fem,
                          ),
                          child: Text(
                            'Ensure that all details are correct prior to submission.',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                        ),
                        //text field
                        Container(
                          // autogroupspatCv3 (LJbH9bVLjRJLUyfY7QSpAT)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 20 * fem, 30 * fem, 62 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // line74HwV (41:6206)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 15 * fem),
                                width: 341 * fem,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffc1c1c1),
                                ),
                              ),
                              Container(
                                // group955RH1 (41:6163)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nameLum (41:6165)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Name',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // juanpdelacruzSxo (41:6166)
                                      fullname,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group955BfV (41:6173)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // birthdayVw5 (41:6175)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Birthday',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // feb2319901Pd (41:6176)
                                      birthDate,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group955BfV (41:6173)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 2 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // birthdayVw5 (41:6175)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Birthplace',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // feb2319901Pd (41:6176)
                                      bp,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupuet9Lwh (LJbGo2FHe5Liw1BT61UET9)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 0 * fem, 25 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    5 * fem, 23 * fem, 5 * fem, 0 * fem),
                                width: 318 * fem,
                                height: 66 * fem,
                                child: Container(
                                  // group9553r7 (41:6168)
                                  width: 53 * fem,
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // genderzFZ (41:6170)
                                        margin: EdgeInsets.fromLTRB(
                                            0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                        child: Text(
                                          'Gender',
                                          style: SafeGoogleFont(
                                            'Montserrat',
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.2175 * ffem / fem,
                                            color: Color(0xff828282),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        // maleu7d (41:6171)
                                        Gender,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                // group9553Uj (41:6178)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // civilstatusNX1 (41:6180)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Civil Status',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // married5wD (41:6181)
                                      cs,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group955bo5 (41:6188)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // emailaddressj8b (41:6190)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Email Address',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      // juandelacruzmailcom39H (41:6191)
                                      emailaddress,
                                      style: SafeGoogleFont(
                                        'Montserrat',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2175 * ffem / fem,
                                        color: Color(0xff259ded),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // group955Azb (41:6193)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 5 * fem, 31 * fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // homeaddressuSP (41:6195)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Home Address',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff828282),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // blk109lot10sanvillesubdivision (41:6196)
                                      constraints: BoxConstraints(
                                        maxWidth: 345 * fem,
                                      ),
                                      child: Text(
                                        home_add,
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff259ded),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // line73h7M (41:6205)
                                margin: EdgeInsets.fromLTRB(
                                    8 * fem, 0 * fem, 6 * fem, 39 * fem),
                                width: double.infinity,
                                height: 1 * fem,
                                decoration: BoxDecoration(
                                  color: Color(0xffc1c1c1),
                                ),
                              ),
                              Container(
                                // group410DbV (41:6198)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 30 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    sendData();
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
                                          // proceedEFh (41:6200)
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
                                          // solararrowrightbrokenv8X (41:6201)
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
                              Container(
                                // editdetailsQpP (41:6204)
                                margin: EdgeInsets.fromLTRB(
                                    125 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: GestureDetector(
                                  onTap: () {
                                    // Handle click action here
                                    context.pushNamed(about);
                                  },
                                  child: Text(
                                    'Edit Details',
                                    style: SafeGoogleFont(
                                      'Montserrat',
                                      fontSize: 18 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.2175 * ffem / fem,
                                      color: Color(0xff259ded),
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
