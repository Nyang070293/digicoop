import 'package:digicoop/model/onBoardingModel.dart';
import 'package:digicoop/page/Login/login.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

class onBoardingScreen extends StatefulWidget {
  @override
  _onBoardingScreenState createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(35),
                    child: Column(
                      children: [
                        Container(
                          // skipMiF (4:16)
                          margin: EdgeInsets.fromLTRB(
                              298 * fem, 0 * fem, 0 * fem, 28 * fem),
                          child: Text(
                            'Skip',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xffbdbdbd),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          contents[i].title,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 32 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff3f3f3f),
                          ),
                        ),
                        contents[i].subtitle == null
                            ? const SizedBox()
                            : Text(
                                contents[i].subtitle.toString(),
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff3f3f3f),
                                ),
                              ),
                        Image.asset(
                          contents[i].image,
                          height: 300,
                        ),
                        const SizedBox(height: 20),
                        /* Text(
                          contents[i].discription,
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3318751199 * ffem / fem,
                            color: const Color(0xff828282),
                          ),
                        ),*/
                        Center(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 20.0),
                              children: <TextSpan>[
                                TextSpan(
                                  text: contents[i].discription,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 15 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3318751199 * ffem / fem,
                                    color: const Color(0xff828282),
                                  ),
                                ),
                                TextSpan(
                                  text: contents[i].colorDesc,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 16 * ffem,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3318751199 * ffem / fem,
                                    color: const Color(0xff259ded),
                                  ),
                                ),
                                TextSpan(
                                  text: contents[i].continueDesc,
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
                        const SizedBox(
                          height: 80,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              contents.length,
                              (index) => buildDot(index, context),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Container(
                          // group4106wy (4:13)
                          margin: EdgeInsets.fromLTRB(
                              17 * fem, 0 * fem, 16 * fem, 0 * fem),
                          child: TextButton(
                            onPressed: () {
                              if (currentIndex == contents.length - 1) {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const logincreen(),
                                  ),
                                );
                              }
                              _controller.nextPage(
                                duration: const Duration(milliseconds: 100),
                                curve: Curves.bounceIn,
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  120 * fem, 19 * fem, 20 * fem, 16 * fem),
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
                                    // nextKZq (4:15)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 84.67 * fem, 0 * fem),
                                    child: Text(
                                      "Next",
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
                                    // solararrowrightbrokeneMD (4:76)
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
                  );
                },
              ),
            ),

            /*Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                    currentIndex == contents.length - 1 ? "Continue" : "Next"),
                onPressed: () {
                  if (currentIndex == contents.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Home(),
                      ),
                    );
                  }
                  _controller.nextPage(
                    duration: Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            )*/
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? const Color(0xff259ded)
            : const Color(0xffd9d9d9),
      ),
    );
  }
}
