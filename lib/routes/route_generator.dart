import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/page/Signup/homeAddress.dart';
import 'package:digicoop/page/Signup/signup.dart';
import 'package:digicoop/page/onBoarding/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

const String splashscreen = "SplashScreen",
    login = "login",
    signup = "signup",
    dashboard = "dashboard",
    homeAddress = "homeAddress";

// Route

final parentKey = GlobalKey<NavigatorState>(debugLabel: "root");
final shellKey = GlobalKey<NavigatorState>(debugLabel: "shell");

final goRouter = Provider<GoRouter>((ref) {
  // bool isDuplicate = false;
  return GoRouter(
    initialLocation: "/",
    debugLogDiagnostics: true,
    navigatorKey: parentKey,
    routes: [
      GoRoute(
        name: splashscreen,
        path: "/",
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: signup,
        path: "/$signup",
        builder: (context, state) {
          return const signupScreen();
        },
      ),
      GoRoute(
        name: homeAddress,
        path: "/$homeAddress",
        builder: (context, state) {
          return const homeAddressScreen();
        },
      ),
      // ShellRoute(
      //     navigatorKey: shellKey,
      //     builder: (context, state, child) => DashBoardDrawer(
      //           key: state.pageKey,
      //           child: child,
      //         ),
      //     routes: [
      //       /*GoRoute(
      //         name: dashboard,
      //         path: "/$dashboard",
      //         builder: (context, state) {
      //           return DashBoardMain(
      //             key: state.pageKey,
      //           );
      //         },
      //       ),*/
      //       GoRoute(
      //         name: profile,
      //         path: "/$profile",
      //         builder: (context, state) {
      //           return ProfileScreen(
      //             key: state.pageKey,
      //           );
      //         },
      //       ),
      //     ]),
    ],
    errorBuilder: (context, state) => const ErrorPage(),
    // refreshListenable: ref.read(authScene),
    // redirect: (context, state) {
    //   final isDupli = ref.read(isDuplicate.notifier);
    //   final auth = ref.read(authScene);
    //   final authenticated = auth.statusAuth == AuthStatus.authenticated;
    //   //  final loginPage = state.location == "/$login";
    //   final splash = state.location == "/";

    //   if ((!authenticated || authenticated) &&
    //       (SharedPrefs.read(tokenuser) == "" ||
    //           SharedPrefs.read(tokenuser) != "") &&
    //       splash &&
    //       auth.statusAuth == AuthStatus.blank) {
    //     return "/";
    //   }

    //   if ((!authenticated || authenticated) &&
    //       splash &&
    //       auth.statusAuth == AuthStatus.unknowSkip &&
    //       (SharedPrefs.read(tokenuser) == "")) {
    //     return "/$login";
    //   }

    //   if (!isDupli.state && authenticated && SharedPrefs.read(tokenuser) != ""
    //       //&& (otp || !otp || homePage || !homePage)
    //       ) {
    //     isDupli.state = true;

    //     return "/$homeScreenPage";
    //   }

    //   return null;
    // },
  );
});

// Error Build Route
class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Center(
          child: Text(
            "Page Not Found",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: black,
            ),
          ),
        ),
      ),
    );
  }
}
