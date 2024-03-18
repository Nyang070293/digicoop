import 'package:digicoop/page/Signup/success.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:flutter/material.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class loadingScreen extends ConsumerStatefulWidget {
  const loadingScreen({super.key});

  @override
  ConsumerState<loadingScreen> createState() => _loadingScreenState();
}

class _loadingScreenState extends ConsumerState<loadingScreen> {
  @override
  void initState() {
    super.initState();
    // Add a delay of 2 seconds before navigating to the next screen
    Future.delayed(const Duration(seconds: 5), () {
      // Navigate to the next screen after the delay

      context.pushNamed(success);
    });
  }

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
            // loadingaeK (27:1791)
            width: double.infinity,
            height: 896 * fem,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 200 * fem, 0 * fem, 80 * fem),
                        child: Image.asset(
                          'assets/images/loading.png',
                          width: 124.88 * fem,
                          height: 124.88 * fem,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 40 * fem),
                      child: Text(
                        'Loading',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 24 * ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xff259ded),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Please wait while we are',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318751199 * ffem / fem,
                          color: const Color(0xff828282),
                        ),
                        softWrap: true,
                      ),
                    ),
                    Center(
                      child: Text(
                        'creating your account...',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3318751199 * ffem / fem,
                          color: const Color(0xff828282),
                        ),
                        softWrap: true,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
