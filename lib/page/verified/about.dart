import 'package:digicoop/constant/flush_bar.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class aboutVerifiedScreen extends ConsumerStatefulWidget {
  final Function(String)? onChanged;

  const aboutVerifiedScreen({super.key, this.onChanged});

  @override
  ConsumerState<aboutVerifiedScreen> createState() => _aboutScreenState();
}

class _aboutScreenState extends ConsumerState<aboutVerifiedScreen> {
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _middleName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _nationality = TextEditingController();
  final TextEditingController _suffix = TextEditingController();
  final TextEditingController _birthplace = TextEditingController();
  final TextEditingController _birthday = TextEditingController();

  String? _selectedGender;
  String? _selectedCS;

  @override
  void initState() {
    _birthday.text = ""; //set the initial value of text field
    super.initState();
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
    //int gender = 0;
    int civil_status = 0;

    int sex = _selectedGender == "Male" ? 1 : 2;

    if (_selectedCS == "Single") {
      civil_status = 1;
    } else if (_selectedCS == "Married") {
      civil_status = 2;
    } else if (_selectedCS == "Divorced") {
      civil_status = 3;
    } else {
      civil_status = 4;
    }

    String inputDateString = _birthday.text; //"1999-01-01";
    DateTime inputDate = DateTime.parse(inputDateString);
    String bDay_formattedDate = DateFormat('yyyy-MM-dd').format(inputDate);
    print("birthday $bDay_formattedDate"); // Output: January 01, 1999

    await SharedPrefs.write(firstname, _firstName.text);
    await SharedPrefs.write(lastname, _lastName.text);
    await SharedPrefs.write(middlename, _middleName.text);
    await SharedPrefs.write(suffix, _suffix.text);
    await SharedPrefs.write(gender, sex);
    await SharedPrefs.write(birthday, bDay_formattedDate);
    await SharedPrefs.write(birthplace, _birthplace.text);
    await SharedPrefs.write(civilstatus, civil_status);
    await SharedPrefs.write(nationality, _nationality.text);

    await SharedPrefs.write(d_gender, _selectedGender);
    await SharedPrefs.write(d_cs, _selectedCS);

    context.pushReplacementNamed(emailScren);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

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
                          context.pushReplacementNamed(verifiedScreen);
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
                            0 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          '1 / 7',
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
                            'Personal Information',
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
                                        controller: _firstName,
                                        labelText: 'First Name',
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
                                        controller: _middleName,
                                        labelText: 'Middle Name (optional)',
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
                                        controller: _lastName,
                                        labelText: 'Last Name',
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
                                        controller: _suffix,
                                        labelText: 'Suffix',
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
                                      child: TextField(
                                        controller:
                                            _birthday, //editing controller of this TextField
                                        decoration: InputDecoration(
                                          suffixIcon:
                                              const Icon(Icons.calendar_month),
                                          labelText: "Birthdate",
                                          labelStyle: const TextStyle(
                                              color: Color(0xff259ded)),
                                          border: const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xffd1d3d4),
                                                width: 1),
                                          ),
                                          focusedBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Color(0xff259ded),
                                                width: 2),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: theme.disabledColor,
                                                width: 1),
                                          ),
                                          errorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.red, width: 1),
                                          ),
                                          focusedErrorBorder:
                                              const UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.red, width: 2),
                                          ), //label text of field
                                        ),

                                        readOnly:
                                            true, //set it true, so that user will not able to edit text
                                        onTap: () async {
                                          DateTime? pickedDate =
                                              await showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(
                                                1900), //DateTime.now() - not to allow to choose before today.
                                            lastDate: DateTime(2101),
                                            initialEntryMode:
                                                DatePickerEntryMode
                                                    .calendarOnly,
                                          );

                                          if (pickedDate != null) {
                                            print(
                                                pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                            String formattedDate =
                                                DateFormat('yyyy-MM-dd')
                                                    .format(pickedDate);
                                            print(
                                                formattedDate); //formatted date output using intl package =>  2021-03-16
                                            //you can implement different kind of Date Format here according to your requirement

                                            setState(() {
                                              _birthday.text =
                                                  formattedDate; //set output date to TextField value.
                                            });
                                          } else {
                                            print("Date is not selected");
                                          }
                                        },
                                      ),
                                    ),
                                    Container(
                                      // group942Gqd (75:409)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 0 * fem, 5 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _birthplace,
                                        labelText: 'Birthplace',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                    Container(
                                      // group944qfm (75:434)
                                      margin: EdgeInsets.fromLTRB(
                                          2 * fem, 20 * fem, 5 * fem, 19 * fem),
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
                                                width: 60 * fem,
                                                height: 18 * fem,
                                                child: Text(
                                                  'Gender',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2175 * ffem / fem,
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
                                                      value: _selectedGender,
                                                      onChanged:
                                                          (String? newValue) {
                                                        setState(() {
                                                          _selectedGender =
                                                              newValue;
                                                          if (widget
                                                                  .onChanged !=
                                                              null) {
                                                            widget.onChanged!(
                                                                _selectedGender!);
                                                          }
                                                        });
                                                      },
                                                      items: <String>[
                                                        'Male',
                                                        'Female'
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
                                          2 * fem, 0 * fem, 5 * fem, 0 * fem),
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
                                                width: 90 * fem,
                                                height: 18 * fem,
                                                child: Text(
                                                  'Civil Status',
                                                  style: SafeGoogleFont(
                                                    'Montserrat',
                                                    fontSize: 16 * ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.2175 * ffem / fem,
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
                                                      value: _selectedCS,
                                                      onChanged:
                                                          (String? newValue) {
                                                        setState(() {
                                                          _selectedCS =
                                                              newValue;
                                                          if (widget
                                                                  .onChanged !=
                                                              null) {
                                                            widget.onChanged!(
                                                                _selectedCS!);
                                                          }
                                                        });
                                                      },
                                                      items: <String>[
                                                        'Single',
                                                        'Married',
                                                        'Divorced',
                                                        'Widowed',
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
                                      // group939kaT (75:400)
                                      margin: EdgeInsets.fromLTRB(
                                          0 * fem, 0 * fem, 0 * fem, 19 * fem),
                                      width: double.infinity,
                                      height: 65 * fem,
                                      child: CommonTextField(
                                        controller: _nationality,
                                        labelText: 'Nationality',
                                        textInputAction: TextInputAction.next,
                                        accentColor: const Color(0xff259ded),
                                      ),
                                    ),
                                    /////////////////
                                  ],
                                ),
                              ),
                              Container(
                                // group410HZ1 (75:708)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 80 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    if (_firstName.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Enter your Firstname",
                                      );
                                    } else if (_lastName.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Enter your Lastname",
                                      );
                                    } else if (_birthday.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Enter your Birthday",
                                      );
                                    } else if (_birthplace.text.isEmpty) {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Enter your Birthplace",
                                      );
                                    } else if (_selectedGender == "") {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Select Gender",
                                      );
                                    } else if (_selectedCS == "") {
                                      Flush.flushMessage(
                                        icons: Icons.error_outline,
                                        title: "Field Required",
                                        message: "Please Select Civil Status",
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
