import 'package:digicoop/model/cashinresultModel.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class cashresultScreen extends StatefulWidget {
  final String index;
  const cashresultScreen({super.key, required this.index});

  @override
  State<cashresultScreen> createState() => _cashresultScreenState();
}

class _cashresultScreenState extends State<cashresultScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Text(
                  cashinresult[int.parse(widget.index)].title,
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 32 * ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2175 * ffem / fem,
                    color: const Color(0xff3f3f3f),
                  ),
                ),
                cashinresult[int.parse(widget.index)].subtitle == null
                    ? const SizedBox()
                    : Padding(
                        padding: const EdgeInsets.only(bottom: 25),
                        child: Text(
                          cashinresult[int.parse(widget.index)]
                              .subtitle
                              .toString(),
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff3f3f3f),
                          ),
                        ),
                      ),
                cashinresult[int.parse(widget.index)].subtitle == null
                    ? const SizedBox(
                        height: 60,
                      )
                    : const SizedBox(
                        height: 5,
                      ),
                Image.asset(
                  cashinresult[int.parse(widget.index)].image,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 70),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: const TextStyle(
                            color: Colors.black, fontSize: 20.0),
                        children: <TextSpan>[
                          TextSpan(
                            text: cashinresult[int.parse(widget.index)]
                                .discription,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                          TextSpan(
                            text:
                                cashinresult[int.parse(widget.index)].colorDesc,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.bold,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff259ded),
                            ),
                          ),
                          TextSpan(
                            text: cashinresult[int.parse(widget.index)]
                                .continueDesc,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3318751199 * ffem / fem,
                              color: const Color(0xff828282),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 150,
                ),
                Container(
                  // group410HZ1 (75:708)
                  margin:
                      EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 0 * fem),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(
                          126 * fem, 15 * fem, 23.67 * fem, 10 * fem),
                      width: double.infinity,
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
                            // proceedhMq (75:710)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 75.67 * fem, 0 * fem),
                            child: Text(
                              cashinresult[int.parse(widget.index)].button,
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
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
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
    );
  }
}
