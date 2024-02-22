import 'dart:async';
import 'package:digicoop/page/onBoarding/onBoardingScreen.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // ignore: unused_field
  ConnectivityResult _connectionStatus = ConnectivityResult.none;
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  String Status = "";

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      developer.log('Couldn\'t check connectivity status', error: e);
      return;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    // setState(() {
    //   _connectionStatus = result;

    //   if (_connectionStatus.index != 4) {
    //     Future.delayed(const Duration(seconds: 5), () {
    //       ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => const onBoardingScreen1()),
    //       );
    //       //  context.go('/login');
    //       // Navigator.pushReplacementNamed(context, "/login");
    //       // Navigator.pushReplacement(
    //       //     context, MaterialPageRoute(builder: (context) => LoginPage()));
    //     });
    //   } else {
    //     // errorMessage(message: "No Internet Connection.", context: context);
    //     Status = " ";
    //   }
    // });
    Future.delayed(const Duration(seconds: 5), () {
      ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onBoardingScreen()),
      );
      //  context.go('/login');
      // Navigator.pushReplacementNamed(context, "/login");
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initConnectivity();

    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff259ded),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splashscreen.png',
              height: 200,
            ),
            const CircularProgressIndicator(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
