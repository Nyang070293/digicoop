import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';

class resultContent {
  String image;
  String title;
  String? subtitle;
  String discription;
  String? colorDesc;
  String? colorDesc1;
  String? colorDesc2;
  String? continueDesc;
  String? continueDesc1;
  String? continueDesc2;
  String button;

  resultContent(
      {required this.image,
      required this.title,
      this.subtitle,
      required this.discription,
      this.colorDesc,
      this.colorDesc1,
      this.colorDesc2,
      this.continueDesc,
      this.continueDesc1,
      this.continueDesc2,
      required this.button});
}

List<resultContent> ewalletresultSTR = [
  resultContent(
      title: 'Success!',
      subtitle: 'Transaction Completed',
      image: 'assets/images/cashin_success.png',
      discription: "Your transaction amounting to ",
      colorDesc: "PHP ${SharedPrefs.read(cashinamount)}",
      continueDesc1: " for ",
      colorDesc1: "${SharedPrefs.read(ewalletName)}",
      continueDesc2: " mobile number ",
      colorDesc2: "${SharedPrefs.read(MobileNum)}",
      continueDesc:
          "\n was successful. \n\nCheck your email for the receipt and details. Thank you.",
      button: "Done"),
  resultContent(
      title: 'Sorry,',
      subtitle: 'Something went wrong.',
      image: 'assets/images/cashin_failed.png',
      discription:
          "Something went wrong with your transaction.\nPlease try again later. We apologize for the inconvenience.",
      button: "Okay"),
  resultContent(
      title: 'Pending',
      subtitle: 'Transaction',
      image: 'assets/images/cashin_pending.png',
      discription:
          "Your transaction request is being reviewed, and it is\ncurrently pending. Please wait 3-7 working days for\nthe process to be completed. We apologize for the\ninconvenience.",
      button: "Okay"),
];
