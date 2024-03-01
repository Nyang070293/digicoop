import 'package:digicoop/page/verified/backId.dart';
import 'package:digicoop/page/verified/confirm.dart';
import 'package:digicoop/page/verified/photoid.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class backIdScreen extends StatefulWidget {
  const backIdScreen({super.key});

  @override
  State<backIdScreen> createState() => _backIdScreenState();
}

class _backIdScreenState extends State<backIdScreen> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // getverifiedtakeidpictureE7y (2025:4419)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // autogroup1gnbA1d (LJfojdnc4eXPYx8JUB1GnB)
                  padding: EdgeInsets.fromLTRB(
                      21.38 * fem, 23.38 * fem, 152 * fem, 21.38 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xff259ded),
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
                          // Handle the tap on the image
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (_) => photoIDScreen(),
                            ),
                          );
                        },
                        child: Container(
                          // materialsymbolslightcloseqNf (2025:4509)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 94.38 * fem, 0 * fem),
                          width: 25.23 * fem,
                          height: 25.23 * fem,
                          child: Image.asset(
                            'assets/images/material-symbols-light-close-v3y.png',
                            width: 25.23 * fem,
                            height: 25.23 * fem,
                          ),
                        ),
                      ),
                      Container(
                        // createaccountwAo (2025:4431)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 0 * fem),
                        child: Text(
                          'Take a Photo',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  // autogroupnq7hdpK (LJforYkkcjb3oDat6LNQ7h)
                  width: double.infinity,
                  height: 765 * fem,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffd9d9d9),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              'assets/images/rectangle-198-bg-4pP.png',
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // group410TYT (2025:4530)
                        left: 30 * fem,
                        top: 618 * fem,
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => confirmScreen(),
                              ),
                            );
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            padding: EdgeInsets.fromLTRB(
                                140 * fem, 15 * fem, 23.67 * fem, 10 * fem),
                            width: 353 * fem,
                            height: 55 * fem,
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
                                  // okaytdm (2025:4532)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 99.67 * fem, 0 * fem),
                                  child: Text(
                                    'Okay',
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
                                  // solararrowrightbrokenbYB (2025:4533)
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
                      Positioned(
                        // rectangle199hr7 (2025:4512)
                        left: 35 * fem,
                        top: 222 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 333 * fem,
                            height: 174 * fem,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10 * fem),
                                border:
                                    Border.all(color: const Color(0xffffffff)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // authentication1M1 (2025:4513)
                        left: 84 * fem,
                        top: 298 * fem,
                        child: Align(
                          child: SizedBox(
                            width: 235 * fem,
                            height: 22 * fem,
                            child: Text(
                              'Scan Back side of your ID',
                              style: SafeGoogleFont(
                                'Montserrat',
                                fontSize: 18 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2175 * ffem / fem,
                                color: Colors.black,
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
      ),
    );
  }
}
