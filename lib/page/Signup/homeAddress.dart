import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/global/cityGlobal.dart';
import 'package:digicoop/global/provinceGlobal.dart';
import 'package:digicoop/global/regionGlobal.dart';
import 'package:digicoop/model/cityModel.dart';
import 'package:digicoop/model/provinceModel.dart';
import 'package:digicoop/model/regionModel.dart';
import 'package:digicoop/page/Signup/email.dart';
import 'package:digicoop/page/Signup/reviewDetails.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/customCheckbox.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class homeAddressScreen extends ConsumerStatefulWidget {
  final Function(String)? onChanged;

  const homeAddressScreen({super.key, this.onChanged});

  @override
  ConsumerState<homeAddressScreen> createState() => _homeAddressScreenState();
}

class _homeAddressScreenState extends ConsumerState<homeAddressScreen> {
  final TextEditingController _address1 = TextEditingController();
  final TextEditingController _address2 = TextEditingController();
  final TextEditingController _postalCode = TextEditingController();
  bool _isOfficeAddress = false;

  // List<regionModel> _selectedRegion = [];
  Regions? _selectedItem;
  Provinces? _selectedItemProvince;
  Cities? _selectedItemCity;

  String? _selected;

  @override
  void initState() {
    super.initState();
    ref.read(region.notifier).getRegion();
  }

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

  Future<void> sendData() async {
    await SharedPrefs.write(address1, _address1.text);
    await SharedPrefs.write(address2, _address2.text);
    await SharedPrefs.write(zipCode, _postalCode.text);
    await SharedPrefs.write(cityId, _selectedItemCity?.cityID.toString());
    if (_isOfficeAddress) {
      await SharedPrefs.write(addressTypeId, 2);
    } else {
      await SharedPrefs.write(addressTypeId, 1);
    }

    context.pushNamed(reviewDetails);
  }

  void getprovince(String regionID) {
    ref.read(province.notifier).getProvince(regionID);
  }

  void getcity(String provinceID) {
    ref.read(city.notifier).getCity(provinceID);
  }

  @override
  Widget build(BuildContext context) {
    List<Regions>? _selectedRegion = ref.watch(region).data?.regions!.toList();
    List<Provinces>? _selectedProvince =
        ref.watch(province).data?.provinces?.toList();
    List<Cities>? _selectedCity = ref.watch(city).data?.cities?.toList();

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
                          context.pushNamed(email);
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
                          '4 / 5',
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
                                        controller: _address1,
                                        labelText: 'House No/Bldg/Flr',
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
                                        controller: _address2,
                                        labelText: 'Subd/Brgy/Purok',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
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
                                                  'Region',
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
                                                            Regions>(
                                                      value: _selectedItem,
                                                      items: _selectedRegion
                                                          ?.map((data) {
                                                        return DropdownMenuItem<
                                                            Regions>(
                                                          value: data,
                                                          child: Text(data
                                                              .regionName
                                                              .toString()),
                                                        );
                                                      }).toList(),
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          _selectedItem =
                                                              newValue;

                                                          getprovince(newValue!
                                                              .regionID
                                                              .toString());
                                                        });
                                                      },
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

                                                    child: _selectedItem == null
                                                        ? DropdownButton<
                                                            String>(
                                                            hint: Text(
                                                                'Select Province'),
                                                            value: _selected,
                                                            onChanged:
                                                                (newValue) {
                                                              setState(() {
                                                                _selected =
                                                                    newValue;
                                                              });
                                                            },
                                                            items: <String>[]
                                                                .map((String
                                                                    value) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child:
                                                                    Text(value),
                                                              );
                                                            }).toList(),
                                                          )
                                                        : DropdownButtonFormField<
                                                            Provinces>(
                                                            value:
                                                                _selectedItemProvince,
                                                            items:
                                                                _selectedProvince
                                                                    ?.map(
                                                                        (data) {
                                                              return DropdownMenuItem<
                                                                  Provinces>(
                                                                value: data,
                                                                child: Text(data
                                                                    .province
                                                                    .toString()),
                                                              );
                                                            }).toList(),
                                                            onChanged:
                                                                (newValue) {
                                                              setState(() {
                                                                _selectedItemProvince =
                                                                    newValue;
                                                              });

                                                              getcity(newValue!
                                                                  .provinceID
                                                                  .toString());
                                                            },
                                                            decoration:
                                                                const InputDecoration(
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey), // Add border color
                                                              ),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .zero,
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

                                                    child: _selectedProvince ==
                                                            null
                                                        ? DropdownButton<
                                                            String>(
                                                            hint: Text(
                                                                'Select City'),
                                                            value: _selected,
                                                            onChanged:
                                                                (newValue) {
                                                              setState(() {
                                                                _selected =
                                                                    newValue;
                                                              });
                                                            },
                                                            items: <String>[]
                                                                .map((String
                                                                    value) {
                                                              return DropdownMenuItem<
                                                                  String>(
                                                                value: value,
                                                                child:
                                                                    Text(value),
                                                              );
                                                            }).toList(),
                                                          )
                                                        : DropdownButtonFormField<
                                                            Cities>(
                                                            value:
                                                                _selectedItemCity,
                                                            items: _selectedCity
                                                                ?.map((data) {
                                                              return DropdownMenuItem<
                                                                  Cities>(
                                                                value: data,
                                                                child: Text(data
                                                                    .city
                                                                    .toString()),
                                                              );
                                                            }).toList(),
                                                            onChanged:
                                                                (newValue) {
                                                              setState(() {
                                                                _selectedItemCity =
                                                                    newValue;
                                                              });
                                                            },
                                                            decoration:
                                                                const InputDecoration(
                                                              border:
                                                                  UnderlineInputBorder(
                                                                borderSide: BorderSide(
                                                                    color: Colors
                                                                        .grey), // Add border color
                                                              ),
                                                              contentPadding:
                                                                  EdgeInsets
                                                                      .zero,
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
                                        keyboardType: TextInputType.number,
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
                                    if (_address1.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message:
                                            "Please Enter Address(House No/Bldg/Flr)",
                                      );
                                    } else if (_address1.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message:
                                            "Please Enter Address(Subd/Brgy/Purok)",
                                      );
                                    } else if (_selectedItem == "") {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Select Region",
                                      );
                                    } else if (_selectedItemProvince == "") {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Select Province",
                                      );
                                    } else if (_selectedItemCity == "") {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Select City",
                                      );
                                    } else if (_postalCode.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Enter Postal Code",
                                      );
                                    } else {
                                      showLoadingDialog();
                                      sendData();
                                    }
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
