import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/customCheckbox.dart';
import 'package:digicoop/util/textfield.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bankSendScreen extends StatefulWidget {
  final bool? isSavedAcct;
  const bankSendScreen({super.key, this.isSavedAcct});

  @override
  State<bankSendScreen> createState() => _bankSendScreenState();
}

class _bankSendScreenState extends State<bankSendScreen> {
  final TextEditingController _amount = TextEditingController();
  final TextEditingController _acctName = TextEditingController();
  final TextEditingController _acctNum = TextEditingController();
  final TextEditingController _sendReceipt = TextEditingController();
  bool _isSaved = false;

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
                          context.pushReplacementNamed(bankTransfer);
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
                          'Bank Transfer',
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
                                    2 * fem, 0 * fem, 109 * fem, 37.97 * fem),
                                padding: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 11 * fem, 0 * fem),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5 * fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle8kQP (87:5602)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          0 * fem, 22.97 * fem, 0 * fem),
                                      width: 58.03 * fem,
                                      height: 58.03 * fem,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5 * fem),
                                        border: Border.all(
                                            color: Color(0xffe7e7e7)),
                                        color: Color(0xffffffff),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            'assets/images/bdo.png',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // bdounibankincFM9 (87:5601)
                                      margin: EdgeInsets.fromLTRB(0 * fem,
                                          1.37 * fem, 0 * fem, 0 * fem),
                                      child: Text(
                                        'BDO Unibank, Inc.',
                                        style: SafeGoogleFont(
                                          'Montserrat',
                                          fontSize: 16 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.2175 * ffem / fem,
                                          color: Color(0xff3f3f3f),
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
                                  controller: _amount,
                                  labelText: 'Amount (Max of PHP 50,000.00)',
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
                                  controller: _sendReceipt,
                                  labelText: 'Send Receipt To (optional)',
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
                                      value: _isSaved,
                                      splashColor: const Color(0xff259ded),
                                      shouldShowBorder: true,
                                      borderColor: const Color(0xff259ded),
                                      checkedFillColor: const Color(0xff259ded),
                                      borderRadius: 8,
                                      borderWidth: 1,
                                      checkBoxSize: 22,
                                      onChanged: (val) {
                                        //do your stuff here
                                        setState(() {
                                          _isSaved = val;
                                        });
                                      },
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _isSaved = !_isSaved;
                                        });
                                      },
                                      child: Text(
                                        'Save this Account?',
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
                              Container(
                                // group410Kd9 (87:5574)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 40 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {},
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
                                    child: GestureDetector(
                                      onTap: () {
                                        context.pushReplacementNamed(
                                            bankConfirmation);
                                      },
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // sendmoney9s5 (87:5576)
                                            margin: EdgeInsets.fromLTRB(0 * fem,
                                                0 * fem, 48.17 * fem, 0 * fem),
                                            child: Text(
                                              'Send Money',
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
