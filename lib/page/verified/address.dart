import 'package:digicoop/page/verified/email.dart';
import 'package:digicoop/page/verified/workInformation.dart';
import 'package:digicoop/util/customCheckbox.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class homeAddressScreen extends StatefulWidget {
  final Function(String)? onChanged;

  const homeAddressScreen({super.key, this.onChanged});

  @override
  State<homeAddressScreen> createState() => _homeAddressScreenState();
}

class _homeAddressScreenState extends State<homeAddressScreen> {
  final TextEditingController _unitHouseno = TextEditingController();
  final TextEditingController _building = TextEditingController();
  final TextEditingController _streetName = TextEditingController();
  final TextEditingController _additionalAddress = TextEditingController();
  final TextEditingController _postalCode = TextEditingController();
  bool _isOfficeAddress = false;
  String? _selectedProvince;
  String? _selectedCity;
  String? _selectedBrgy;

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
                              builder: (_) => const emailScreen(),
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
                          'Get Verified',
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
                            50 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          '1 / 4',
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
                            'Add your Address',
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
                            'Only provide information that is True and Correct.',
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
                          // autogroupxkc7tkP (Ga7m5VNzTgSXaJtLbGxkC7)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 41 * fem, 30 * fem, 174 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupxa9d3vw (Ga7kiAfBpCwmgctpFyxa9D)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 5 * fem, 19 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                width: 350 * fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                      // group939kaT (75:400)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _unitHouseno,
                                        labelText: 'Unit/House No.',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                    Container(
                                      // group940FXD (75:403)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _building,
                                        labelText:
                                            'Building/Subdivision Name (optional)',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                    Container(
                                      // group941mdy (75:406)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _streetName,
                                        labelText: 'Street Name',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                    Container(
                                      // group942Gqd (75:409)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _additionalAddress,
                                        labelText:
                                            'Additional Address (optional)',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),

                                    Container(
                                      // group944qfm (75:434)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 20 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // genderyQb (75:499)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 70 * fem,
                                                height: 18 * fem,
                                                child: Text(
                                                  'Province',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        const Color(0xff259ded),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // group944Nhd (75:503)
                                            left: 0 * fem,
                                            top: 15 * fem,
                                            child: SizedBox(
                                              width: 348 * fem,
                                              height: 65 * fem,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double
                                                        .infinity, // Set width as per your requirement
                                                    child:
                                                        DropdownButtonFormField<
                                                            String>(
                                                      value: _selectedProvince,
                                                      onChanged:
                                                          (String? newValue) {
                                                        setState(() {
                                                          _selectedProvince =
                                                              newValue;
                                                          if (widget
                                                                  .onChanged !=
                                                              null) {
                                                            widget.onChanged!(
                                                                _selectedProvince!);
                                                          }
                                                        });
                                                      },
                                                      items: <String>[
                                                        'Sample 1',
                                                        'Sample 2'
                                                      ].map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .grey), // Add border color
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xff259ded),
                                                              width: 2),
                                                        ),
                                                        // Icon for the dropdown
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group944qfm (75:434)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 20 * fem),
                                      width: double.infinity,
                                      height: 70 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // genderyQb (75:499)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 80 * fem,
                                                height: 18 * fem,
                                                child: Text(
                                                  'City',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        const Color(0xff259ded),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // group944Nhd (75:503)
                                            left: 0 * fem,
                                            top: 15 * fem,
                                            child: SizedBox(
                                              width: 348 * fem,
                                              height: 65 * fem,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double
                                                        .infinity, // Set width as per your requirement

                                                    child:
                                                        DropdownButtonFormField<
                                                            String>(
                                                      value: _selectedCity,
                                                      onChanged:
                                                          (String? newValue) {
                                                        setState(() {
                                                          _selectedCity =
                                                              newValue;
                                                          if (widget
                                                                  .onChanged !=
                                                              null) {
                                                            widget.onChanged!(
                                                                _selectedCity!);
                                                          }
                                                        });
                                                      },
                                                      items: <String>[
                                                        'City 1',
                                                        'City 2',
                                                      ].map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .grey), // Add border color
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Color(
                                                                  0xff259ded),
                                                              width: 2),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets.zero,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Container(
                                      // group944qfm (75:434)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 20 * fem),
                                      width: double.infinity,
                                      height: 70 * fem,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            // genderyQb (75:499)
                                            left: 0 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 80 * fem,
                                                height: 18 * fem,
                                                child: Text(
                                                  'Barangay',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        const Color(0xff259ded),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned(
                                            // group944Nhd (75:503)
                                            left: 0 * fem,
                                            top: 15 * fem,
                                            child: SizedBox(
                                              width: 348 * fem,
                                              height: 65 * fem,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                    width: double
                                                        .infinity, // Set width as per your requirement

                                                    child:
                                                        DropdownButtonFormField<
                                                            String>(
                                                      value: _selectedBrgy,
                                                      onChanged:
                                                          (String? newValue) {
                                                        setState(() {
                                                          _selectedBrgy =
                                                              newValue;
                                                          if (widget
                                                                  .onChanged !=
                                                              null) {
                                                            widget.onChanged!(
                                                                _selectedBrgy!);
                                                          }
                                                        });
                                                      },
                                                      items: <String>[
                                                        'Brgy 1',
                                                        'Brgy 2',
                                                      ].map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                      decoration:
                                                          const InputDecoration(
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .grey), // Add border color
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets.zero,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Container(
                                      // group942Gqd (75:409)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _postalCode,
                                        labelText: 'Postal Code',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),

                                    Container(
                                      // addofficeaddressYoy (2025:3567)
                                      margin: EdgeInsets.only(bottom: 95 * fem),
                                      child: Row(
                                        children: [
                                          CustomCheckBox(
                                            value: _isOfficeAddress,
                                            splashColor:
                                                const Color(0xff259ded),
                                            shouldShowBorder: true,
                                            borderColor:
                                                const Color(0xff259ded),
                                            checkedFillColor:
                                                const Color(0xff259ded),
                                            borderRadius: 8,
                                            borderWidth: 1,
                                            checkBoxSize: 22,
                                            onChanged: (val) {
                                              //do your stuff here
                                              setState(() {
                                                _isOfficeAddress = val;
                                              });
                                            },
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                _isOfficeAddress =
                                                    !_isOfficeAddress;
                                              });
                                            },
                                            child: Text(
                                              'This is my Office Address',
                                              style: SafeGoogleFont(
                                                'Montserrat',
                                                fontSize: 16 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: const Color(0xff259ded),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    /////////////////
                                  ],
                                ),
                              ),
                              Container(
                                // group410HZ1 (75:708)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) =>
                                            const workInformationScreen(),
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
                                      color: const Color(0xff259ded),
                                      borderRadius:
                                          BorderRadius.circular(100 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
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
                                          // proceedhMq (75:710)
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
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // solararrowrightbroken1dR (75:711)
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
