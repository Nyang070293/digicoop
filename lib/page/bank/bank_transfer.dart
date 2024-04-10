
// import 'package:digicoop/util/utils.dart';
// import 'package:flutter/material.dart';
// class logincreen extends StatefulWidget {
//   const logincreen({super.key});

//   @override
//   State<logincreen> createState() => _logincreenState();
// }

// class _logincreenState extends State<logincreen> {
//  @override
//    Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     double baseWidth = 414;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: SizedBox(
//           width: double.infinity,
//           child: Container(
//             // step2aboutyourselfBvX (75:116)
//             width: double.infinity,
//             decoration: const BoxDecoration(
//               color: Color(0xffffffff),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Container(
//                   // autogroupqjsbK19 (Ga7kW1LnPD874LtBUYQJSb)
//                   margin:
//                       EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
//                   padding: EdgeInsets.fromLTRB(
//                       33.22 * fem, 25 * fem, 20 * fem, 23 * fem),
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     color: const Color(0xffffffff),
//                     boxShadow: [
//                       BoxShadow(
//                         color: const Color(0x3fb0b0b0),
//                         offset: Offset(0 * fem, 4 * fem),
//                         blurRadius: 2 * fem,
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (_) => const setupMobilepinScreen(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           // arrow1y5h (75:714)
//                           margin: EdgeInsets.fromLTRB(
//                               0 * fem, 0 * fem, 73.22 * fem, 4.22 * fem),
//                           width: 29.57 * fem,
//                           height: 17 * fem,
//                           child: Image.asset(
//                             'assets/images/arrow-left.png',
//                             width: 29.57 * fem,
//                             height: 17 * fem,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         // createaccountUHM (75:716)
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 84 * fem, 0 * fem),
//                         child: Text(
//                           'Bank Transfer',
//                           style: SafeGoogleFont(
//                             'Montserrat',
//                             fontSize: 18 * ffem,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2175 * ffem / fem,
//                             color: const Color(0xff231f20),
//                           ),
//                         ),
//                       ),
                     
//                     ],
//                   ),
//                 ),

//                 //Personal Information
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                           Container(
//                             // recentbanktransfer38b (87:5404)
//                             margin: EdgeInsets.fromLTRB(22*fem, 0*fem, 0*fem, 0*fem),
//                             child: Text(
//                               'Recent bank transfer',
//                               style: SafeGoogleFont (
//                                 'Montserrat',
//                                 fontSize: 18*ffem,
//                                 fontWeight: FontWeight.w500,
//                                 height: 1.2175*ffem/fem,
//                                 color: Color(0xff333333),
//                               ),
//                             ),
//                           ),

//                             Container(
//                             // autogroupxk3vYLF (LJcLcARD7nAkRHtEHJXK3V)
//                             width: double.infinity,
//                             height: 746*fem,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   // autogroupdol3Ujh (LJcLTv9x2MGAgRJRtSDoL3)
//                                   left: 34*fem,
//                                   top: 191*fem,
//                                   child: Container(
//                                     width: 108*fem,
//                                     height: 30*fem,
//                                     child: Row(
//                                       crossAxisAlignment: CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // vectoro1H (87:5392)
//                                           margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 9.88*fem, 1.88*fem),
//                                           width: 22.13*fem,
//                                           height: 22.13*fem,
//                                           child: Image.asset(
//                                             'assets/page-1/images/vector-eBZ.png',
//                                             width: 22.13*fem,
//                                             height: 22.13*fem,
//                                           ),
//                                         ),
//                                         Text(
//                                           // authenticationtoR (87:5336)
//                                           'Banks',
//                                           style: SafeGoogleFont (
//                                             'Montserrat',
//                                             fontSize: 24*ffem,
//                                             fontWeight: FontWeight.w500,
//                                             height: 1.2175*ffem/fem,
//                                             color: Color(0xff262626),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   // selectabankdW7 (87:5337)
//                                   left: 34*fem,
//                                   top: 225*fem,
//                                   child: Align(
//                                     child: SizedBox(
//                                       width: 95*fem,
//                                       height: 19*fem,
//                                       child: Text(
//                                         'Select a bank',
//                                         style: SafeGoogleFont (
//                                           'Montserrat',
//                                           fontSize: 14*ffem,
//                                           fontWeight: FontWeight.w400,
//                                           height: 1.3318751199*ffem/fem,
//                                           color: Color(0xff828282),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   // line4i1m (87:5438)
//                                   left: 27*fem,
//                                   top: 172*fem,
//                                   child: Align(
//                                     child: SizedBox(
//                                       width: 362*fem,
//                                       height: 1*fem,
//                                       child: Container(
//                                         decoration: BoxDecoration (
//                                           color: Color(0xffe0e0e0),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 Positioned(
//                                   // frame12QfH (87:5405)
//                                   left: 22*fem,
//                                   top: 22*fem,
//                                   child: Container(
//                                     padding: EdgeInsets.fromLTRB(7*fem, 0*fem, 0*fem, 0*fem),
//                                     width: 387*fem,
//                                     height: 115*fem,
//                                     child: Container(
//                                       // group230vtX (87:5406)
//                                       width: 598*fem,
//                                       height: double.infinity,
//                                       child: Row(
//                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                         children: [
//                                           Container(
//                                             // group1415WX (87:5407)
//                                             margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
//                                             width: 70*fem,
//                                             height: double.infinity,
//                                             child: Column(
//                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // addaccountcFZ (87:5409)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                   padding: EdgeInsets.fromLTRB(20*fem, 20*fem, 21*fem, 21*fem),
//                                                   width: double.infinity,
//                                                   height: 70*fem,
//                                                   decoration: BoxDecoration (
//                                                     color: Color(0xffffffff),
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                     boxShadow: [
//                                                       BoxShadow(
//                                                         color: Color(0x3f000000),
//                                                         offset: Offset(0*fem, 4*fem),
//                                                         blurRadius: 2*fem,
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   child: Container(
//                                                     // group218gWK (87:5411)
//                                                     width: double.infinity,
//                                                     height: double.infinity,
//                                                     child: Stack(
//                                                       children: [
//                                                         Positioned(
//                                                           // rectangle31EXq (87:5412)
//                                                           left: 13.0000001311*fem,
//                                                           top: 0*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 3*fem,
//                                                               height: 29*fem,
//                                                               child: Container(
//                                                                 decoration: BoxDecoration (
//                                                                   borderRadius: BorderRadius.circular(2*fem),
//                                                                   color: Color(0xff8fd4ff),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         Positioned(
//                                                           // rectangle32M6f (87:5413)
//                                                           left: 0*fem,
//                                                           top: 12.9999987324*fem,
//                                                           child: Align(
//                                                             child: SizedBox(
//                                                               width: 29*fem,
//                                                               height: 3*fem,
//                                                               child: Container(
//                                                                 decoration: BoxDecoration (
//                                                                   borderRadius: BorderRadius.circular(2.0000007153*fem),
//                                                                   color: Color(0xff8fd4ff),
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ],
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // addaccountrZD (87:5408)
//                                                   margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
//                                                   constraints: BoxConstraints (
//                                                     maxWidth: 55*fem,
//                                                   ),
//                                                   child: Text(
//                                                     'Add\nAccount',
//                                                     textAlign: TextAlign.center,
//                                                     style: SafeGoogleFont (
//                                                       'Montserrat',
//                                                       fontSize: 13*ffem,
//                                                       fontWeight: FontWeight.w400,
//                                                       height: 1.2175*ffem/fem,
//                                                       color: Color(0xff4f4f4f),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             // group134xMM (87:5414)
//                                             width: 70*fem,
//                                             height: double.infinity,
//                                             decoration: BoxDecoration (
//                                               borderRadius: BorderRadius.circular(35*fem),
//                                             ),
//                                             child: Column(
//                                               crossAxisAlignment: CrossAxisAlignment.center,
//                                               children: [
//                                                 Container(
//                                                   // group131hJw (87:5416)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                   width: double.infinity,
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Center(
//                                                     // rectangle2S1d (87:5417)
//                                                     child: SizedBox(
//                                                       width: double.infinity,
//                                                       height: 70*fem,
//                                                       child: Container(
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                           color: Color(0xffffffff),
//                                                           image: DecorationImage (
//                                                             image: AssetImage (
//                                                               'assets/page-1/images/rectangle-2-bg-zf9.png',
//                                                             ),
//                                                           ),
//                                                           boxShadow: [
//                                                             BoxShadow(
//                                                               color: Color(0x21010101),
//                                                               offset: Offset(0*fem, 2*fem),
//                                                               blurRadius: 3*fem,
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // businessfundsXHy (87:5415)
//                                                   constraints: BoxConstraints (
//                                                     maxWidth: 58*fem,
//                                                   ),
//                                                   child: Text(
//                                                     'Business\nFunds',
//                                                     textAlign: TextAlign.center,
//                                                     style: SafeGoogleFont (
//                                                       'Montserrat',
//                                                       fontSize: 13*ffem,
//                                                       fontWeight: FontWeight.w400,
//                                                       height: 1.2175*ffem/fem,
//                                                       color: Color(0xff4f4f4f),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                           Container(
//                                             // autogrouphu1h2kX (LJcLxKWHnq3x1CeBgyhu1h)
//                                             padding: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 0*fem),
//                                             height: double.infinity,
//                                             child: Row(
//                                               crossAxisAlignment: CrossAxisAlignment.start,
//                                               children: [
//                                                 Container(
//                                                   // group135wMh (87:5426)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Container(
//                                                         // group133GPy (87:5428)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                         width: 70*fem,
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                         ),
//                                                         child: Center(
//                                                           // rectangle2CoR (87:5429)
//                                                           child: SizedBox(
//                                                             width: double.infinity,
//                                                             height: 70*fem,
//                                                             child: Container(
//                                                               decoration: BoxDecoration (
//                                                                 borderRadius: BorderRadius.circular(35*fem),
//                                                                 color: Color(0xffffffff),
//                                                                 image: DecorationImage (
//                                                                   image: AssetImage (
//                                                                     'assets/page-1/images/rectangle-2-bg-NT1.png',
//                                                                   ),
//                                                                 ),
//                                                                 boxShadow: [
//                                                                   BoxShadow(
//                                                                     color: Color(0x21010101),
//                                                                     offset: Offset(0*fem, 2*fem),
//                                                                     blurRadius: 3*fem,
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // unionbankJLf (87:5427)
//                                                         margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
//                                                         child: Text(
//                                                           'Unionbank',
//                                                           style: SafeGoogleFont (
//                                                             'Montserrat',
//                                                             fontSize: 13*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2175*ffem/fem,
//                                                             color: Color(0xff4f4f4f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // group226d83 (87:5418)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
//                                                   width: 70*fem,
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                     children: [
//                                                       Container(
//                                                         // group131MZq (87:5420)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                         width: double.infinity,
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                         ),
//                                                         child: Center(
//                                                           // rectangle2owd (87:5421)
//                                                           child: SizedBox(
//                                                             width: double.infinity,
//                                                             height: 70*fem,
//                                                             child: Container(
//                                                               decoration: BoxDecoration (
//                                                                 borderRadius: BorderRadius.circular(35*fem),
//                                                                 color: Color(0xffffffff),
//                                                                 image: DecorationImage (
//                                                                   image: AssetImage (
//                                                                     'assets/page-1/images/rectangle-2-bg-B91.png',
//                                                                   ),
//                                                                 ),
//                                                                 boxShadow: [
//                                                                   BoxShadow(
//                                                                     color: Color(0x21010101),
//                                                                     offset: Offset(0*fem, 2*fem),
//                                                                     blurRadius: 3*fem,
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // savingstiB (87:5419)
//                                                         margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
//                                                         child: Text(
//                                                           'Savings',
//                                                           style: SafeGoogleFont (
//                                                             'Montserrat',
//                                                             fontSize: 13*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2175*ffem/fem,
//                                                             color: Color(0xff4f4f4f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // group227Cis (87:5430)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                     children: [
//                                                       Container(
//                                                         // group133Y23 (87:5432)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                         width: 70*fem,
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                         ),
//                                                         child: Center(
//                                                           // rectangle2s4K (87:5433)
//                                                           child: SizedBox(
//                                                             width: double.infinity,
//                                                             height: 70*fem,
//                                                             child: Container(
//                                                               decoration: BoxDecoration (
//                                                                 borderRadius: BorderRadius.circular(35*fem),
//                                                                 color: Color(0xffffffff),
//                                                                 image: DecorationImage (
//                                                                   image: AssetImage (
//                                                                     'assets/page-1/images/rectangle-2-bg-CK1.png',
//                                                                   ),
//                                                                 ),
//                                                                 boxShadow: [
//                                                                   BoxShadow(
//                                                                     color: Color(0x21010101),
//                                                                     offset: Offset(0*fem, 2*fem),
//                                                                     blurRadius: 3*fem,
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // unionbankA3R (87:5431)
//                                                         margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
//                                                         child: Text(
//                                                           'Unionbank',
//                                                           style: SafeGoogleFont (
//                                                             'Montserrat',
//                                                             fontSize: 13*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2175*ffem/fem,
//                                                             color: Color(0xff4f4f4f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // group228gGf (87:5422)
//                                                   margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 18*fem, 0*fem),
//                                                   width: 70*fem,
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                     children: [
//                                                       Container(
//                                                         // group131zo9 (87:5424)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                         width: double.infinity,
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                         ),
//                                                         child: Center(
//                                                           // rectangle2YJs (87:5425)
//                                                           child: SizedBox(
//                                                             width: double.infinity,
//                                                             height: 70*fem,
//                                                             child: Container(
//                                                               decoration: BoxDecoration (
//                                                                 borderRadius: BorderRadius.circular(35*fem),
//                                                                 color: Color(0xffffffff),
//                                                                 image: DecorationImage (
//                                                                   image: AssetImage (
//                                                                     'assets/page-1/images/rectangle-2-bg.png',
//                                                                   ),
//                                                                 ),
//                                                                 boxShadow: [
//                                                                   BoxShadow(
//                                                                     color: Color(0x21010101),
//                                                                     offset: Offset(0*fem, 2*fem),
//                                                                     blurRadius: 3*fem,
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // bdo2E3 (87:5423)
//                                                         margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
//                                                         child: Text(
//                                                           'BDO',
//                                                           style: SafeGoogleFont (
//                                                             'Montserrat',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2175*ffem/fem,
//                                                             color: Color(0xff4f4f4f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   // group229YTH (87:5434)
//                                                   width: 70*fem,
//                                                   decoration: BoxDecoration (
//                                                     borderRadius: BorderRadius.circular(35*fem),
//                                                   ),
//                                                   child: Column(
//                                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                                     children: [
//                                                       Container(
//                                                         // group133g3h (87:5436)
//                                                         margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
//                                                         width: double.infinity,
//                                                         decoration: BoxDecoration (
//                                                           borderRadius: BorderRadius.circular(35*fem),
//                                                         ),
//                                                         child: Center(
//                                                           // rectangle21rf (87:5437)
//                                                           child: SizedBox(
//                                                             width: double.infinity,
//                                                             height: 70*fem,
//                                                             child: Container(
//                                                               decoration: BoxDecoration (
//                                                                 borderRadius: BorderRadius.circular(35*fem),
//                                                                 color: Color(0xffffffff),
//                                                                 image: DecorationImage (
//                                                                   image: AssetImage (
//                                                                     'assets/page-1/images/rectangle-2-bg-Q8o.png',
//                                                                   ),
//                                                                 ),
//                                                                 boxShadow: [
//                                                                   BoxShadow(
//                                                                     color: Color(0x21010101),
//                                                                     offset: Offset(0*fem, 2*fem),
//                                                                     blurRadius: 3*fem,
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Container(
//                                                         // unionbankK6f (87:5435)
//                                                         margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
//                                                         child: Text(
//                                                           'Unionbank',
//                                                           style: SafeGoogleFont (
//                                                             'Montserrat',
//                                                             fontSize: 12*ffem,
//                                                             fontWeight: FontWeight.w400,
//                                                             height: 1.2175*ffem/fem,
//                                                             color: Color(0xff4f4f4f),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),

//                     ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


 

 