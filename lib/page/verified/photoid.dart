// import 'package:camera/camera.dart';
// import 'package:digicoop/main.dart';
// import 'package:digicoop/page/verified/frontId.dart';
// import 'package:digicoop/routes/route_generator.dart';
// import 'package:digicoop/util/utils.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:google_ml_kit/google_ml_kit.dart';

// class CameraScreen extends StatefulWidget {
//   const CameraScreen({super.key});

//   @override
//   State<CameraScreen> createState() => _scanfaceScreenState();
// }

// class _scanfaceScreenState extends State<CameraScreen> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;
//   late FaceDetector _faceDetector;
//   bool _isDetecting = false;
//   List<Face> _faces = [];

//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(
//       cameras.last,
//       ResolutionPreset.high,
//     );
//     _initializeControllerFuture = _controller.initialize();
//     _faceDetector = GoogleMlKit.vision.faceDetector(
//       FaceDetectorOptions(
//         enableContours: true,
//         enableClassification: true,
//       ),
//     );
//     _controller.startImageStream(_processCameraImage);
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _faceDetector.close();
//     super.dispose();
//   }

//   void _processCameraImage(CameraImage image) async {
//     if (_isDetecting) return;
//     _isDetecting = true;

//     final inputImage = _convertCameraImage(image);
//     final faces = await _faceDetector.processImage(inputImage);

//     setState(() {
//       _faces = faces;
//     });

//     _isDetecting = false;
//   }

//   InputImage _convertCameraImage(CameraImage image) {
//     final WriteBuffer allBytes = WriteBuffer();
//     for (final Plane plane in image.planes) {
//       allBytes.putUint8List(plane.bytes);
//     }
//     final bytes = allBytes.done().buffer.asUint8List();
//     final Size imageSize =
//         Size(image.width.toDouble(), image.height.toDouble());

//     final camera = _controller.description;
//     final imageRotation =
//         InputImageRotationValue.fromRawValue(camera.sensorOrientation) ??
//             InputImageRotation.rotation0deg;

//     final inputImageFormat =
//         InputImageFormatValue.fromRawValue(image.format.raw) ??
//             InputImageFormat.nv21;

//     final planeData = image.planes.map(
//       (Plane plane) {
//         return InputImagePlaneMetadata(
//           bytesPerRow: plane.bytesPerRow,
//           height: plane.height,
//           width: plane.width,
//         );
//       },
//     ).toList();

//     final inputImageData = InputImageData(
//       size: imageSize,
//       imageRotation: imageRotation,
//       inputImageFormat: inputImageFormat,
//       planeData: planeData,
//     );

//     return InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);
//   }

//   @override
//   Widget build(BuildContext context) {
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
//                           context.pushReplacementNamed(SOI);
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
//                           'Get Verified',
//                           style: SafeGoogleFont(
//                             'Montserrat',
//                             fontSize: 18 * ffem,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2175 * ffem / fem,
//                             color: const Color(0xff231f20),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         // authenticationyE7 (75:717)
//                         margin: EdgeInsets.fromLTRB(
//                             40 * fem, 0 * fem, 0 * fem, 4 * fem),
//                         child: Text(
//                           '2 / 4',
//                           style: SafeGoogleFont(
//                             'Montserrat',
//                             fontSize: 14 * ffem,
//                             fontWeight: FontWeight.w600,
//                             height: 1.2175 * ffem / fem,
//                             color: const Color(0xffc1c1c1),
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
//                         Container(
//                           // autogrouptasqeoy (LJfYyyY1rYPbKkG7hVTAsq)
//                           padding: EdgeInsets.fromLTRB(
//                               29 * fem, 0 * fem, 30 * fem, 280 * fem),
//                           width: double.infinity,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Container(
//                                 // autogroupfj1qxpf (LJfYjUxAUhLp5unM4pFj1q)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 89 * fem, 53 * fem),
//                                 width: 262 * fem,
//                                 height: 48 * fem,
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       // authenticationV3u (2025:4055)
//                                       left: 0 * fem,
//                                       top: 0 * fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 124 * fem,
//                                           height: 30 * fem,
//                                           child: Text(
//                                             'Scan Face',
//                                             style: SafeGoogleFont(
//                                               'Montserrat',
//                                               fontSize: 24 * ffem,
//                                               fontWeight: FontWeight.w500,
//                                               height: 1.2175 * ffem / fem,
//                                               color: const Color(0xff262626),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Positioned(
//                                       // thiswillonlybeusedtoverifyyour (2025:4056)
//                                       left: 0 * fem,
//                                       top: 29 * fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 262 * fem,
//                                           height: 19 * fem,
//                                           child: Text(
//                                             'This will only be used to verify your ID',
//                                             style: SafeGoogleFont(
//                                               'Montserrat',
//                                               fontSize: 14 * ffem,
//                                               fontWeight: FontWeight.w400,
//                                               height: 1.3318751199 * ffem / fem,
//                                               color: const Color(0xff828282),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // autogroupygbyEfh (LJfYp4es5wBMicmnqjygBy)
//                                 margin: EdgeInsets.fromLTRB(
//                                     0 * fem, 0 * fem, 37 * fem, 22 * fem),
//                                 width: 318 * fem,
//                                 height: 229 * fem,
//                                 child: Stack(
//                                   children: [
//                                     Positioned(
//                                       // ellipse75YRV (2025:4208)
//                                       left: 82 * fem,
//                                       top: 0 * fem,
//                                       child: Align(
//                                         child: SizedBox(
//                                           width: 200 * fem,
//                                           height: 200 * fem,
//                                           child: !_controller
//                                                   .value.isInitialized
//                                               ? Center(
//                                                   child:
//                                                       CircularProgressIndicator())
//                                               : Stack(
//                                                   children: [
//                                                     CameraPreview(_controller!),
//                                                     // if (_faceDetected)
//                                                     //   Positioned(
//                                                     //     top: 10,
//                                                     //     right: 10,
//                                                     //     child: Icon(Icons.face, color: Colors.green, size: 50),
//                                                     //   ),
//                                                   ],
//                                                 ),
//                                         ),
//                                       ),
//                                     ),

//                                     //  return ClipOval(
//                                     //                 child: CameraPreview(
//                                     //                     _controller));
//                                     // Positioned(
//                                     //   // ellipse76Qib (2025:4209)
//                                     //   left: 88 * fem,
//                                     //   top: 6 * fem,
//                                     //   child: Align(
//                                     //     child: SizedBox(
//                                     //       width: 180 * fem,
//                                     //       height: 180 * fem,
//                                     //       child: Container(
//                                     //         decoration: BoxDecoration(
//                                     //           borderRadius:
//                                     //               BorderRadius.circular(
//                                     //                   90 * fem),
//                                     //           color: Color(0xffffffff),
//                                     //           image: DecorationImage(
//                                     //             fit: BoxFit.cover,
//                                     //             image: AssetImage(
//                                     //               'assets/images/ellipse-76-bg.png',
//                                     //             ),
//                                     //           ),
//                                     //         ),
//                                     //       ),
//                                     //     ),
//                                     //   ),
//                                     // ),
//                                   ],
//                                 ),
//                               ),
//                               Container(
//                                 // yourfacialinformationwascollec (2025:4210)
//                                 margin: EdgeInsets.fromLTRB(
//                                     7 * fem, 0 * fem, 0 * fem, 82 * fem),
//                                 constraints: BoxConstraints(
//                                   maxWidth: 301 * fem,
//                                 ),
//                                 child: Text(
//                                   'Your facial information was collected when you wen through the verification process.',
//                                   textAlign: TextAlign.center,
//                                   style: SafeGoogleFont(
//                                     'Montserrat',
//                                     fontSize: 14 * ffem,
//                                     fontWeight: FontWeight.w400,
//                                     height: 1.3318751199 * ffem / fem,
//                                     color: const Color(0xff828282),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 // group410kvs (2025:4058)
//                                 margin: EdgeInsets.fromLTRB(
//                                     2 * fem, 0 * fem, 0 * fem, 0 * fem),
//                                 child: TextButton(
//                                   onPressed: () {
//                                     Navigator.pushReplacement(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (_) => const frontIdScreen(),
//                                       ),
//                                     );
//                                   },
//                                   style: TextButton.styleFrom(
//                                     padding: EdgeInsets.zero,
//                                   ),
//                                   child: Container(
//                                     padding: EdgeInsets.fromLTRB(126 * fem,
//                                         15 * fem, 23.67 * fem, 10 * fem),
//                                     width: double.infinity,
//                                     decoration: BoxDecoration(
//                                       color: const Color(0xff259ded),
//                                       borderRadius:
//                                           BorderRadius.circular(100 * fem),
//                                       boxShadow: [
//                                         BoxShadow(
//                                           color: const Color(0x3f000000),
//                                           offset: Offset(0 * fem, 4 * fem),
//                                           blurRadius: 2 * fem,
//                                         ),
//                                       ],
//                                     ),
//                                     child: Row(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       children: [
//                                         Container(
//                                           // proceedC2B (2025:4060)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 75.67 * fem, 0 * fem),
//                                           child: Text(
//                                             'Proceed',
//                                             textAlign: TextAlign.center,
//                                             style: SafeGoogleFont(
//                                               'Montserrat',
//                                               fontSize: 24 * ffem,
//                                               fontWeight: FontWeight.w500,
//                                               height: 1.2175 * ffem / fem,
//                                               color: const Color(0xffffffff),
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           // solararrowrightbrokenuBV (2025:4061)
//                                           margin: EdgeInsets.fromLTRB(0 * fem,
//                                               0 * fem, 0 * fem, 4 * fem),
//                                           width: 26.67 * fem,
//                                           height: 20 * fem,
//                                           child: Image.asset(
//                                             'assets/images/solar-arrow-right-broken.png',
//                                             width: 26.67 * fem,
//                                             height: 20 * fem,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
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
