class resultContent {
  String image;
  String title;
  String? subtitle;
  String discription;
  String? colorDesc;
  String? continueDesc;
  String button;

  resultContent(
      {required this.image,
      required this.title,
      this.subtitle,
      required this.discription,
      this.colorDesc,
      this.continueDesc,
      required this.button});
}

List<resultContent> cashinresult = [
  resultContent(
      title: 'Success!',
      subtitle: 'Cash-In Completed',
      image: 'assets/images/cashin_success.png',
      discription:
          "A cash-in transaction of PHP 1,500.00 has been successfully completed. A receipt will be sent to you via email. Thank you.",
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
