import 'package:digicoop/page/Signup/homeAddress.dart';
import 'package:digicoop/page/Signup/loading.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class reviewDetailScreen extends ConsumerStatefulWidget {
  const reviewDetailScreen({super.key});

  @override
  ConsumerState<reviewDetailScreen> createState() => _reviewDetailScreenState();
}

class _reviewDetailScreenState extends ConsumerState<reviewDetailScreen> {
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
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const homeAddressScreen(),
                            ),
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
                            'Confirm Account Information',
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
                                      'Juan P. Dela Cruz',
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
                                      'Feb 23 1990',
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
                                        'Male',
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
                                      'Married',
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
                                // group955RVH (41:6183)
                                margin: EdgeInsets.fromLTRB(
                                    5 * fem, 0 * fem, 0 * fem, 25 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // nationality9gB (41:6185)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 5 * fem),
                                      child: Text(
                                        'Nationality',
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
                                      // filipino4HM (41:6186)
                                      'Filipino',
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
                                      'juandelacruz@mail.com',
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
                                        'blk 109 lot 10 Sanville Subdivision, Opal St. Tandang Sora Ave. Quezon City, NCR, Philippines, 2920',
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
                                    2 * fem, 0 * fem, 0 * fem, 54 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const loadingScreen(),
                                      ),
                                    );
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
                                    117 * fem, 0 * fem, 0 * fem, 0 * fem),
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
