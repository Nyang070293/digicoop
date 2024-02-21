import 'package:digicoop/page/onBoarding/splashscreen.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digi Coop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff259ded),
      ),
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
