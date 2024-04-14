import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/page/Login/login.dart';
import 'package:digicoop/page/Signup/about.dart';
import 'package:digicoop/page/Signup/email.dart';
import 'package:digicoop/page/Signup/homeAddress.dart';
import 'package:digicoop/page/Signup/loading.dart';
import 'package:digicoop/page/Signup/reviewDetails.dart';
import 'package:digicoop/page/Signup/setupMobilepin.dart';
import 'package:digicoop/page/Signup/signup.dart';
import 'package:digicoop/page/Signup/success.dart';
import 'package:digicoop/page/Signup/verificationCode.dart';
import 'package:digicoop/page/bank/bank_add.dart';
import 'package:digicoop/page/bank/bank_confirm.dart';
import 'package:digicoop/page/bank/bank_search.dart';
import 'package:digicoop/page/bank/bank_send.dart';
import 'package:digicoop/page/bank/bank_success.dart';
import 'package:digicoop/page/bank/bank_transfer.dart';
import 'package:digicoop/page/cashin_bank/cashinBankSelect.dart';
import 'package:digicoop/page/cashin_bank/cashin_bank.dart';
import 'package:digicoop/page/cashin_bank/cashin_main.dart';
import 'package:digicoop/page/cashin_bank/cashresult.dart';
import 'package:digicoop/page/cashin_ctm/cashinctm.dart';
import 'package:digicoop/page/cashin_otc/cashinotc.dart';
import 'package:digicoop/page/cashin_otc/cashinotc_select.dart';
import 'package:digicoop/page/change_password/changePW.dart';
import 'package:digicoop/page/change_password/loadingPW.dart';
import 'package:digicoop/page/change_password/successPW.dart';
import 'package:digicoop/page/change_pin/changePin.dart';
import 'package:digicoop/page/change_pin/loadingPIN.dart';
import 'package:digicoop/page/change_pin/successPIN.dart';
import 'package:digicoop/page/cooperatives/coopMember.dart';
import 'package:digicoop/page/cooperatives/cooperatives.dart';
import 'package:digicoop/page/cooperatives/cooperativesDisclaimer.dart';
import 'package:digicoop/page/cooperatives/myCooperatives.dart';
import 'package:digicoop/page/dashboard/dashboard.dart';
import 'package:digicoop/page/drawer/drawer.dart';
import 'package:digicoop/page/ewallet.dart/ewalletmain.dart';
import 'package:digicoop/page/ewallet.dart/ewalletselect.dart';
import 'package:digicoop/page/loading/loading.dart';
import 'package:digicoop/page/onBoarding/splashscreen.dart';
import 'package:digicoop/page/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

const String splashscreen = "SplashScreen",
    login = "login",
    signup = "signup",
    vCode = "vCode",
    about = "about",
    email = "email",
    mpinCreate = "mpinCreate",
    homeAddress = "homeAddress",
    dashboard = "dashboard",
    mpin = "mpin",
    reviewDetails = "reviewDetails",
    success = "success",
    loading = "loading",
    cashinMain = "cashinMain",
    drawer = "drawer",
    cashinBank = "cashinBank",
    cashinbankSelect = "cashinbankSelect",
    cashinctm = "cashinctm",
    cashinotc = "cashinotc",
    cashinotcselect = "cashinotcselect",
    ewalletmain = "ewalletmain",
    cashresult = "cashresult",
    ewalletselect = "ewalletselect",
    mycooperatives = "mycooperatives",
    cooperatives = "cooperatives",
    cooperativesDisclaimer = "cooperativesDisclaimer",
    coopMember = "coopMember",
    bankTransfer = "bankTranfer",
    bankSearch = "bankSearch",
    bankAddAcc = "bankAddAcc",
    bankSend = "bankSend",
    bankConfirmation = "bankConfirmation",
    loadingTransaction = "loadingTransaction",
    bankSuccess = "bankSuccess",
    changePassword = "changePassword",
    loadingChangePW = "loadingChangePW",
    changePWSuccess = "changePWSuccess",
    setting = "setting",
    changePIN = "changePIN",
    loadingChangePIN = "loadingChangePIN",
    changePINSuccess = "changePINSuccess";

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
        name: cashinBank,
        path: "/$cashinBank",
        builder: (context, state) {
          return const cashinBankScreen();
        },
      ),
      GoRoute(
        name: changePassword,
        path: "/$changePassword",
        builder: (context, state) {
          return const changePasswordScreen();
        },
      ),
      GoRoute(
        name: changePIN,
        path: "/$changePIN",
        builder: (context, state) {
          return const changePINScreen();
        },
      ),
      GoRoute(
        name: cashinMain,
        path: "/$cashinMain",
        builder: (context, state) {
          return const cashinMainScreen();
        },
      ),
      GoRoute(
        name: setting,
        path: "/$setting",
        builder: (context, state) {
          return const settingScreen();
        },
      ),
      GoRoute(
        name: cashinctm,
        path: "/$cashinctm",
        builder: (context, state) {
          return const cashinctmScreen();
        },
      ),
      GoRoute(
        name: ewalletselect,
        path: "/$ewalletselect",
        builder: (context, state) {
          return const ewalletselectScreen();
        },
      ),
      GoRoute(
        name: bankSuccess,
        path: "/$bankSuccess",
        builder: (context, state) {
          return const bankSuccessScreen();
        },
      ),
      GoRoute(
        name: changePWSuccess,
        path: "/$changePWSuccess",
        builder: (context, state) {
          return const ChangePWSuccessScreen();
        },
      ),
      GoRoute(
        name: changePINSuccess,
        path: "/$changePINSuccess",
        builder: (context, state) {
          return const ChangePINSuccessScreen();
        },
      ),
      GoRoute(
        name: loadingTransaction,
        path: "/$loadingTransaction",
        builder: (context, state) {
          return const loadingTransactionScreen();
        },
      ),
      GoRoute(
        name: cooperatives,
        path: "/$cooperatives",
        builder: (context, state) {
          return const cooperativesScreen();
        },
      ),
      GoRoute(
        name: mycooperatives,
        path: "/$mycooperatives",
        builder: (context, state) {
          return const myCooperativesScreen();
        },
      ),
      GoRoute(
        name: bankTransfer,
        path: "/$bankTransfer",
        builder: (context, state) {
          return const bankTransferScreen();
        },
      ),
      GoRoute(
        name: bankSearch,
        path: "/$bankSearch",
        builder: (context, state) {
          return const bankSearchScreen();
        },
      ),
      GoRoute(
        name: bankAddAcc,
        path: "/$bankAddAcc",
        builder: (context, state) {
          return const bankAddScreen();
        },
      ),
      GoRoute(
        name: bankSend,
        path: "/$bankSend",
        builder: (context, state) {
          return const bankSendScreen();
        },
      ),
      GoRoute(
        name: cooperativesDisclaimer,
        path: "/$cooperativesDisclaimer",
        builder: (context, state) {
          return const cooperativesDisclaimerScreen();
        },
      ),
      GoRoute(
        name: bankConfirmation,
        path: "/$bankConfirmation",
        builder: (context, state) {
          return const bankConfirmationScreen();
        },
      ),
      GoRoute(
        name: ewalletmain,
        path: "/$ewalletmain",
        builder: (context, state) {
          return const ewalletmainScreen();
        },
      ),
      GoRoute(
        name: cashinotc,
        path: "/$cashinotc",
        builder: (context, state) {
          return const cashinotcScreen();
        },
      ),
      GoRoute(
        name: cashinotcselect,
        path: "/$cashinotcselect",
        builder: (context, state) {
          return const cashinotcselectScreen();
        },
      ),
      //cashinotcselectScreen
      GoRoute(
        name: cashinbankSelect,
        path: "/$cashinbankSelect",
        builder: (context, state) {
          return const cashinbankSelectScreen();
        },
      ),
      GoRoute(
        name: coopMember,
        path: "/$coopMember",
        builder: (context, state) {
          return const coopMemberScreen();
        },
      ),

      GoRoute(
        name: cashresult,
        path: "/$cashresult/:index",
        builder: (context, state) {
          return cashresultScreen(
            key: state.pageKey,
            index: state.pathParameters["index"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: drawer,
        path: "/$drawer",
        builder: (context, state) {
          return const drawerScreen();
        },
      ),
      GoRoute(
        name: login,
        path: "/$login",
        builder: (context, state) {
          return const loginScreen();
        },
      ),
      GoRoute(
        name: dashboard,
        path: "/$dashboard",
        builder: (context, state) {
          return const dashboardScreen();
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
        name: vCode,
        path: "/$vCode",
        builder: (context, state) {
          return const verificationCodeScreen();
        },
      ),
      GoRoute(
        name: mpin,
        path: "/$mpin",
        builder: (context, state) {
          return const setupMobilepinScreen();
        },
      ),
      GoRoute(
        name: about,
        path: "/$about",
        builder: (context, state) {
          return const aboutScreen();
        },
      ),
      GoRoute(
        name: email,
        path: "/$email",
        builder: (context, state) {
          return const emailScreen();
        },
      ),
      GoRoute(
        name: homeAddress,
        path: "/$homeAddress",
        builder: (context, state) {
          return const homeAddressScreen();
        },
      ),
      GoRoute(
        name: reviewDetails,
        path: "/$reviewDetails",
        builder: (context, state) {
          return const reviewDetailScreen();
        },
      ),
      GoRoute(
        name: loading,
        path: "/$loading",
        builder: (context, state) {
          return const loadingScreen();
        },
      ),
      GoRoute(
        name: loadingChangePW,
        path: "/$loadingChangePW",
        builder: (context, state) {
          return const loadingChangePWScreen();
        },
      ),
      GoRoute(
        name: loadingChangePIN,
        path: "/$loadingChangePIN",
        builder: (context, state) {
          return const loadingChangePINScreen();
        },
      ),
      GoRoute(
        name: success,
        path: "/$success",
        builder: (context, state) {
          return const successScreen();
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
