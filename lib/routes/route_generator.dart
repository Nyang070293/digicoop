import 'package:digicoop/constant/colors.dart';
import 'package:digicoop/main.dart';
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
import 'package:digicoop/page/bank/bank_otp.dart';
import 'package:digicoop/page/bank/bank_search.dart';
import 'package:digicoop/page/bank/bank_send.dart';
import 'package:digicoop/page/bank/bank_success.dart';
import 'package:digicoop/page/bank/bank_transfer.dart';
import 'package:digicoop/page/bank/bank_viewall.dart';
import 'package:digicoop/page/bill/bill.dart';
import 'package:digicoop/page/cashin_bank/cashinBankSelect.dart';
import 'package:digicoop/page/cashin_bank/cashin_bank.dart';
import 'package:digicoop/page/cashin_bank/cashin_main.dart';
import 'package:digicoop/page/cashin_bank/cashresult.dart';
import 'package:digicoop/page/cashin_ctm/cashinctm.dart';
import 'package:digicoop/page/cashin_otc/cashinotc.dart';
import 'package:digicoop/page/cashin_otc/cashinotc_711.dart';
import 'package:digicoop/page/cashin_otc/cashinotc_sm.dart';
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
import 'package:digicoop/page/ewallet/ewalletconfirm.dart';
import 'package:digicoop/page/ewallet/ewalletmain.dart';
import 'package:digicoop/page/ewallet/ewalletresult.dart';
import 'package:digicoop/page/ewallet/ewalletselect.dart';
import 'package:digicoop/page/ewallet/loadingEwallet.dart';
import 'package:digicoop/page/forgotpassword/fpw_changepw.dart';
import 'package:digicoop/page/forgotpassword/loadingfpw.dart';
import 'package:digicoop/page/forgotpassword/mobile.dart';
import 'package:digicoop/page/forgotpassword/otpCode.dart';
import 'package:digicoop/page/forgotpassword/successfpw.dart';
import 'package:digicoop/page/loading/loading.dart';
import 'package:digicoop/page/mpin/mpin.dart';
import 'package:digicoop/page/onBoarding/splashscreen.dart';
import 'package:digicoop/page/onBoardingCode/onBoardingCode.dart';
import 'package:digicoop/page/payment_method/paymentMethod.dart';
import 'package:digicoop/page/setting/setting.dart';
import 'package:digicoop/page/verified/about.dart';
import 'package:digicoop/page/verified/address.dart';
import 'package:digicoop/page/verified/camera.dart';
import 'package:digicoop/page/verified/email.dart';
import 'package:digicoop/page/verified/getVerified.dart';
import 'package:digicoop/page/verified/photo.dart';
import 'package:digicoop/page/verified/photo1.dart';
import 'package:digicoop/page/verified/scanface.dart';
import 'package:digicoop/page/verified/workInformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

const String splashscreen = "SplashScreen",
    bankViewAll = "bankViewAll",
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
    paymentMethod = "paymentMethod",
    cashinbankSelect = "cashinbankSelect",
    cashinctm = "cashinctm",
    cashinotc = "cashinotc",
    cashinotcselect = "cashinotcselect",
    ewalletmain = "ewalletmain",
    cashresult = "cashresult",
    ewalletresult = "ewalletresult",
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
    changePINSuccess = "changePINSuccess",
    loginMPIN = "loginMPIN",
    forgotPW = "forgotPW",
    onBoardingCode = "onBoardingCode",
    ewalletconfirm = "ewalletconfirm",
    loadingEwallet = "loadingEwallet",
    otpCode = "otpCode",
    changeFPW = "changeFPW",
    successFPW = "successFPW",
    loadingFPW = "loadingFPW",
    mobile = "mobile",
    verifyCam = "verifyCam",
    bankOTP = "bankOTP",
    verifiedScreen = "verifiedScreen",
    aboutScren = "aboutScren",
    emailScren = "emailScren",
    AddressVerifiedScreen = "AddressVerifiedScreen",
    SOI = "SOI",
    CameraVerifiedScreen = "CameraVerifiedScreen",
    cashinotcSM = "cashinotcSM",
    bill = "bill";

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
        name: AddressVerifiedScreen,
        path: "/$AddressVerifiedScreen",
        builder: (context, state) {
          return const homeAddressVerifiedScreen();
        },
      ),
      GoRoute(
        name: CameraVerifiedScreen,
        path: "/$CameraVerifiedScreen",
        builder: (context, state) {
          return CameraScreen();
        },
      ),

      // GoRoute(
      //   name: CameraVerifiedScreen,
      //   path: "/$CameraVerifiedScreen",
      //   builder: (context, state) {
      //     return CameraScreen(
      //       camera: cameras.last,
      //     );
      //   },
      // ),
      GoRoute(
        name: SOI,
        path: "/$SOI",
        builder: (context, state) {
          return workInformationScreen();
        },
      ),
      GoRoute(
        name: verifiedScreen,
        path: "/$verifiedScreen",
        builder: (context, state) {
          return getverifiedScreen();
        },
      ),

      GoRoute(
        name: emailScren,
        path: "/$emailScren",
        builder: (context, state) {
          return emailVerifiedScreen();
        },
      ),

      GoRoute(
        name: aboutScren,
        path: "/$aboutScren",
        builder: (context, state) {
          return aboutVerifiedScreen();
        },
      ),

      GoRoute(
        name: mobile,
        path: "/$mobile",
        builder: (context, state) {
          return const mobileScreen();
        },
      ),
      GoRoute(
        name: otpCode,
        path: "/$otpCode/:mobile",
        builder: (context, state) {
          return otpCodeScreen(
            key: state.pageKey,
            mobile: state.pathParameters["mobile"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: successFPW,
        path: "/$successFPW",
        builder: (context, state) {
          return const ChangeFPWSuccessScreen();
        },
      ),
      //fpw_changePasswordScreen
      GoRoute(
        name: changeFPW,
        path: "/$changeFPW/:otpCode",
        builder: (context, state) {
          return fpw_changePasswordScreen(
            key: state.pageKey,
            otpCode: state.pathParameters["otpCode"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: loadingFPW,
        path: "/$loadingFPW/:otpCode",
        builder: (context, state) {
          return loadingFPWScreen(
            key: state.pageKey,
            otpCode: state.pathParameters["otpCode"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: cashinBank,
        path: "/$cashinBank/:categoryId",
        builder: (context, state) {
          return cashinBankScreen(
            key: state.pageKey,
            categoryId: state.pathParameters["categoryId"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: forgotPW,
        path: "/$forgotPW",
        builder: (context, state) {
          return const mobileScreen();
        },
      ),
      GoRoute(
        name: onBoardingCode,
        path: "/$onBoardingCode",
        builder: (context, state) {
          return const onBoardingCodeScreen();
        },
      ),
      GoRoute(
        name: paymentMethod,
        path: "/$paymentMethod",
        builder: (context, state) {
          return const paymentMethodScreen();
        },
      ),
      GoRoute(
        name: loginMPIN,
        path: "/$loginMPIN",
        builder: (context, state) {
          return const mpinScreen();
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
        path:
            "/$ewalletselect/:img/:name/:aggregatorID/:institutionID/:paymentCategoryID/:paymentMethod/:feeAmount/:aggregatorGivenCode",
        builder: (context, state) {
          return ewalletselectScreen(
            key: state.pageKey,
            img: state.pathParameters["img"] ?? "",
            name: state.pathParameters["name"] ?? "",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "",
            institutionID: state.pathParameters["institutionID"] ?? "",
            paymentCategoryID: state.pathParameters["paymentCategoryID"] ?? "",
            paymentMethod: state.pathParameters["paymentMethod"] ?? "",
            feeAmount: state.pathParameters["feeAmount"] ?? "",
            aggregatorGivenCode:
                state.pathParameters["aggregatorGivenCode"] ?? "",
          );
        },
      ),

      GoRoute(
        name: ewalletconfirm,
        path:
            "/$ewalletconfirm/:img/:name/:aggregatorID/:institutionID/:paymentCategoryID/:paymentMethod/:sf/:mobile/:amount/:aggregatorGivenCode",
        builder: (context, state) {
          return ewalletconfirmScreen(
            key: state.pageKey,
            img: state.pathParameters["img"] ?? "",
            name: state.pathParameters["name"] ?? "",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "",
            institutionID: state.pathParameters["institutionID"] ?? "",
            paymentCategoryID: state.pathParameters["paymentCategoryID"] ?? "",
            paymentMethod: state.pathParameters["paymentMethod"] ?? "",
            sf: state.pathParameters["sf"] ?? "",
            mobile: state.pathParameters["mobile"] ?? " ",
            amount: state.pathParameters["amount"] ?? "",
            aggregatorGivenCode:
                state.pathParameters["aggregatorGivenCode"] ?? "",
          );
        },
      ),
      GoRoute(
        name: bankViewAll,
        path: "/$bankViewAll",
        builder: (context, state) {
          return const bankviewallScreen();
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
        path: "/$bankSearch/:type",
        builder: (context, state) {
          return bankSearchScreen(
            key: state.pageKey,
            type: state.pathParameters["type"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: bankAddAcc,
        path: "/$bankAddAcc/:image/:bankName/:institutionID",
        builder: (context, state) {
          return bankAddScreen(
            key: state.pageKey,
            image: state.pathParameters["image"] ?? "0",
            bankName: state.pathParameters["bankName"] ?? "0",
            institutionID: state.pathParameters["institutionID"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: bankSend,
        path:
            "/$bankSend/:image/:bankName/:institutionID/:bankCode/:aggregatorID",
        builder: (context, state) {
          return bankSendScreen(
            key: state.pageKey,
            image: state.pathParameters["image"] ?? "0",
            bankName: state.pathParameters["bankName"] ?? "0",
            institutionID: state.pathParameters["institutionID"] ?? "0",
            bankCode: state.pathParameters["bankCode"] ?? "0",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "0",
          );
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
        path:
            "/$bankConfirmation/:bankName/:acctName/:acctNum/:amount/:institutionID/:bankCode/:aggregatorID",
        builder: (context, state) {
          return bankConfirmationScreen(
            key: state.pageKey,
            bankName: state.pathParameters["bankName"] ?? "0",
            acctName: state.pathParameters["acctName"] ?? "0",
            acctNum: state.pathParameters["acctNum"] ?? "0",
            amount: state.pathParameters["amount"] ?? "0",
            institutionID: state.pathParameters["institutionID"] ?? "0",
            bankCode: state.pathParameters["bankCode"] ?? "0",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: bankOTP,
        path:
            "/$bankOTP/:bankName/:acctName/:acctNum/:amount/:institutionID/:bankCode/:aggregatorID",
        builder: (context, state) {
          return bank_otpScreen(
            key: state.pageKey,
            bankName: state.pathParameters["bankName"] ?? "0",
            acctName: state.pathParameters["acctName"] ?? "0",
            acctNum: state.pathParameters["acctNum"] ?? "0",
            amount: state.pathParameters["amount"] ?? "0",
            institutionID: state.pathParameters["institutionID"] ?? "0",
            bankCode: state.pathParameters["bankCode"] ?? "0",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "0",
          );
        },
      ),
      GoRoute(
        name: ewalletmain,
        path: "/$ewalletmain",
        builder: (context, state) {
          return const ewalletScreen();
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
          return const cashinotc711Screen();
        },
      ),
      GoRoute(
        name: cashinotcSM,
        path: "/$cashinotcSM",
        builder: (context, state) {
          return const cashinotcSMScreen();
        },
      ),
      GoRoute(
        name: bill,
        path: "/$bill",
        builder: (context, state) {
          return const billScreen();
        },
      ),
      //cashinotcselectScreen cashinotcSMScreen
      GoRoute(
        name: cashinbankSelect,
        path:
            "/$cashinbankSelect/:img/:name/:aggregatorID/:institutionID/:paymentCategoryID/:paymentMethod/:aggregatorGivenCode",
        builder: (context, state) {
          return cashinbankSelectScreen(
            key: state.pageKey,
            img: state.pathParameters["img"] ?? "",
            name: state.pathParameters["name"] ?? "",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "",
            institutionID: state.pathParameters["institutionID"] ?? "",
            paymentCategoryID: state.pathParameters["paymentCategoryID"] ?? "",
            paymentMethod: state.pathParameters["paymentMethod"] ?? "",
            aggregatorGivenCode:
                state.pathParameters["aggregatorGivenCode"] ?? "",
          );
        },
      ),
      GoRoute(
        name: loadingEwallet,
        path:
            "/$loadingEwallet/:name/:aggregatorID/:institutionID/:paymentCategoryID/:paymentMethod/:sf/:mobile/:amount/:aggregatorGivenCode",
        builder: (context, state) {
          return loadingEwalletScreen(
            key: state.pageKey,
            name: state.pathParameters["name"] ?? "",
            aggregatorID: state.pathParameters["aggregatorID"] ?? "",
            institutionID: state.pathParameters["institutionID"] ?? "",
            paymentCategoryID: state.pathParameters["paymentCategoryID"] ?? "",
            paymentMethod: state.pathParameters["paymentMethod"] ?? "",
            sf: state.pathParameters["sf"] ?? "",
            mobile: state.pathParameters["mobile"] ?? "",
            amount: state.pathParameters["amount"] ?? "",
            aggregatorGivenCode:
                state.pathParameters["aggregatorGivenCode"] ?? "",
          );
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
        name: ewalletresult,
        path: "/$ewalletresult/:index",
        builder: (context, state) {
          return ewalletresultScreen(
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
