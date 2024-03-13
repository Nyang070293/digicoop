import 'package:digicoop/model/onBoardingModel.dart';
import 'package:digicoop/page/Login/login.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class onBoardingScreen extends ConsumerStatefulWidget { 
    @override
  ConsumerState<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends ConsumerState<onBoardingScreen> {
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
      body: Column(
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
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            298 * fem, 30 * fem, 0 * fem, 28 * fem),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (_) => loginScreen(),
                              ),
                            );
                          },
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
                      ),
                      const SizedBox(
                        height: 10,
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
                          : Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Text(
                                contents[i].subtitle.toString(),
                                style: SafeGoogleFont(
                                  'Montserrat',
                                  fontSize: 24 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2175 * ffem / fem,
                                  color: const Color(0xff3f3f3f),
                                ),
                              ),
                            ),
                      contents[i].subtitle == null
                          ? const SizedBox(
                              height: 60,
                            )
                          : const SizedBox(
                              height: 5,
                            ),
                      Image.asset(
                        contents[i].image,
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
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              contents.length,
              (index) => buildDot(index, context),
            ),
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.all(40),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                if (currentIndex == contents.length - 1) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (_) => loginScreen(),
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
                      margin: EdgeInsets.only(
                        left: 20 * fem,
                        right: 85 * fem,
                      ),
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
          )
        ],
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
        color: currentIndex == index ? Color(0xff259ded) : Colors.grey.shade300,
      ),
    );
  }
}
