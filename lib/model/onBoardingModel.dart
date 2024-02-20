class UnbordingContent {
  String image;
  String title;
  String? subtitle;
  String discription;
  String? colorDesc;
  String? continueDesc;

  UnbordingContent(
      {required this.image,
      required this.title,
      this.subtitle,
      required this.discription,
      this.colorDesc,
      this.continueDesc});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'CASH IN',
      image: 'assets/images/cashin.png',
      discription:
          "Cash-in with ease. You can easily load your account without any hassle through a fund or bank transfer and more."),
  UnbordingContent(
      title: 'BILLS',
      subtitle: 'PAYMENT',
      image: 'assets/images/billpayment.png',
      discription:
          "Skip the long lines and manage your bills online. You can now easily pay your bills on time with over 10,000 bills payment for individual and utility bills including electricity, water, telephone, cable TV and more."),
  UnbordingContent(
      title: 'FUND',
      subtitle: 'TRANSFER',
      image: 'assets/images/fundtransfer.png',
      discription:
          "A Secure and fast way to transfer your funds to other e-wallet money issuers via instaPay and PESONet."),
  UnbordingContent(
      title: 'REMITTANCE',
      image: 'assets/images/remittance.png',
      discription:
          "Instantly send money to your loved ones through remittance centers all over the country."),
  UnbordingContent(
      title: 'E-LOAD',
      image: 'assets/images/e-load.png',
      discription:
          "Get load instantly anytime and anywhere, available for all networks. You can also be a mobile load dealer while keeping the top-up fees."),
  UnbordingContent(
      title: 'COOPNET',
      subtitle: 'TELLER MACHINE',
      image: 'assets/images/coopnet.png',
      discription: "More than your conventional ATM. Everything your ",
      colorDesc: "CoopNET Mobile App",
      continueDesc: " can do PLUS acceptance and disbursement of cash."),
];
