import 'package:camera/camera.dart';
import 'package:digicoop/page/verified/frontId.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:digicoop/util/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _scanfaceScreenState();
}

class _scanfaceScreenState extends State<CameraScreen> {
  CameraController? _cameraController;
  FaceDetector? _faceDetector;
  bool _isDetectingFaces = false;
  bool _isProcessingImage = false;
  bool _faceDetected = false;
  String _status = 'Initializing...';
  String imagePath = "";
  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _initializeFaceDetector();
    // loadFilePath();
  }

  Future<void> _initializeCamera() async {
    try {
      final cameras = await availableCameras();
      final frontCamera = cameras.firstWhere(
          (camera) => camera.lensDirection == CameraLensDirection.front);

      _cameraController = CameraController(frontCamera, ResolutionPreset.high);
      await _cameraController!.initialize();
      _cameraController!.startImageStream((CameraImage image) {
        if (!_isDetectingFaces) {
          _isDetectingFaces = true;
          _detectFaces(image);
        }
      });

      setState(() {
        _status = 'Camera Initialized';
      });
    } catch (e) {
      setState(() {
        _status = 'Error initializing camera: $e';
      });
    }
  }

  Future<void> loadFilePath() async {
    final path = await getFilePath('photo.jpg');
    setState(() {
      imagePath = path;
    });
  }

  void deleteImage(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    String path = '${directory.path}/$fileName';
    final file = File(path);

    try {
      if (await file.exists()) {
        await file.delete();
        print('File deleted successfully');
      } else {
        print('File not found');
      }
    } catch (e) {
      print('Error occurred while deleting the file: $e');
    }
  }

  Future<String> getFilePath(String fileName) async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/$fileName';
  }

  void _initializeFaceDetector() {
    _faceDetector = GoogleMlKit.vision.faceDetector(
      FaceDetectorOptions(
        enableTracking: true,
        performanceMode: FaceDetectorMode.accurate,
      ),
    );
    setState(() {
      _status = 'Face Detector Initialized';
    });
  }

  Future<void> _detectFaces(CameraImage image) async {
    if (_isProcessingImage) {
      _isDetectingFaces = false;
      return;
    }

    _isProcessingImage = true;

    final WriteBuffer allBytes = WriteBuffer();
    for (Plane plane in image.planes) {
      allBytes.putUint8List(plane.bytes);
    }
    final bytes = allBytes.done().buffer.asUint8List();

    final InputImageData inputImageData = InputImageData(
      size: Size(image.width.toDouble(), image.height.toDouble()),
      imageRotation: InputImageRotation.rotation0deg,
      inputImageFormat: InputImageFormatValue.fromRawValue(image.format.raw) ??
          InputImageFormat.nv21,
      planeData: image.planes.map(
        (Plane plane) {
          return InputImagePlaneMetadata(
            bytesPerRow: plane.bytesPerRow,
            height: plane.height,
            width: plane.width,
          );
        },
      ).toList(),
    );

    final inputImage =
        InputImage.fromBytes(bytes: bytes, inputImageData: inputImageData);

    final List<Face> faces = await _faceDetector!.processImage(inputImage);

    if (faces.isNotEmpty) {
      setState(() {
        _faceDetected = true;
        _status = 'Face Detected';
      });
      await _capturePhoto();
    } else {
      setState(() {
        _faceDetected = false;
        _status = 'No Face Detected';
      });
    }

    _isProcessingImage = false;
    _isDetectingFaces = false;
  }

  Future<void> _capturePhoto() async {
    if (_cameraController!.value.isTakingPicture) {
      return;
    }
    try {
      await _cameraController!.stopImageStream();
      final image = await _cameraController!.takePicture();
      final directory = await getApplicationDocumentsDirectory();
      final filePath = path.join(directory.path, 'photo.jpg');
      await image.saveTo(filePath);
      setState(() {
        _status = 'Photo captured and saved to $filePath';
        imagePath = filePath;
      });
    } catch (e) {
      setState(() {
        _status = 'Error capturing photo: $e';
      });
    } finally {
      await _cameraController!.startImageStream((CameraImage image) {
        if (!_isDetectingFaces) {
          _isDetectingFaces = true;
          _detectFaces(image);
        }
      });
    }
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    _faceDetector?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            // step2aboutyourselfBvX (75:116)
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xffffffff),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  // autogroupqjsbK19 (Ga7kW1LnPD874LtBUYQJSb)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 55 * fem),
                  padding: EdgeInsets.fromLTRB(
                      33.22 * fem, 25 * fem, 20 * fem, 23 * fem),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x3fb0b0b0),
                        offset: Offset(0 * fem, 4 * fem),
                        blurRadius: 2 * fem,
                      ),
                    ],
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.pushReplacementNamed(SOI);
                        },
                        child: Container(
                          // arrow1y5h (75:714)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 73.22 * fem, 4.22 * fem),
                          width: 29.57 * fem,
                          height: 17 * fem,
                          child: Image.asset(
                            'assets/images/arrow-left.png',
                            width: 29.57 * fem,
                            height: 17 * fem,
                          ),
                        ),
                      ),
                      Container(
                        // createaccountUHM (75:716)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 84 * fem, 0 * fem),
                        child: Text(
                          'Get Verified',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 18 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff231f20),
                          ),
                        ),
                      ),
                      Container(
                        // authenticationyE7 (75:717)
                        margin: EdgeInsets.fromLTRB(
                            40 * fem, 0 * fem, 0 * fem, 4 * fem),
                        child: Text(
                          '2 / 4',
                          style: SafeGoogleFont(
                            'Montserrat',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xffc1c1c1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //Personal Information
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          // autogrouptasqeoy (LJfYyyY1rYPbKkG7hVTAsq)
                          padding: EdgeInsets.fromLTRB(
                              29 * fem, 0 * fem, 30 * fem, 280 * fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // autogroupfj1qxpf (LJfYjUxAUhLp5unM4pFj1q)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 89 * fem, 53 * fem),
                                width: 262 * fem,
                                height: 48 * fem,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      // authenticationV3u (2025:4055)
                                      left: 0 * fem,
                                      top: 0 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 124 * fem,
                                          height: 30 * fem,
                                          child: Text(
                                            'Scan Face',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 24 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xff262626),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      // thiswillonlybeusedtoverifyyour (2025:4056)
                                      left: 0 * fem,
                                      top: 29 * fem,
                                      child: Align(
                                        child: SizedBox(
                                          width: 262 * fem,
                                          height: 19 * fem,
                                          child: Text(
                                            'This will only be used to verify your ID',
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 14 * ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.3318751199 * ffem / fem,
                                              color: const Color(0xff828282),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // autogroupygbyEfh (LJfYp4es5wBMicmnqjygBy)
                                margin: EdgeInsets.fromLTRB(
                                    0 * fem, 0 * fem, 37 * fem, 22 * fem),
                                width: 318 * fem,
                                height: 229 * fem,
                                child: Stack(
                                  children: [
                                    _faceDetected == false
                                        ? Positioned(
                                            // ellipse75YRV (2025:4208)
                                            left: 60 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 250 * fem,
                                                height: 250 * fem,
                                                child: _cameraController ==
                                                            null ||
                                                        !_cameraController!
                                                            .value.isInitialized
                                                    ? const Center(
                                                        child:
                                                            CircularProgressIndicator())
                                                    : Stack(
                                                        children: [
                                                          ClipOval(
                                                            child: AspectRatio(
                                                              aspectRatio:
                                                                  _cameraController!
                                                                      .value
                                                                      .aspectRatio,
                                                              child: CameraPreview(
                                                                  _cameraController!),
                                                            ),
                                                          ),
                                                          // if (_faceDetected)
                                                          //   Positioned(
                                                          //     top: 10,
                                                          //     right: 10,
                                                          //     child: Icon(Icons.face,
                                                          //         color: Colors.green,
                                                          //         size: 50),
                                                          //   ),
                                                        ],
                                                      ),
                                              ),
                                            ),
                                          )
                                        : Positioned(
                                            // ellipse75YRV (2025:4208)
                                            left: 60 * fem,
                                            top: 0 * fem,
                                            child: Align(
                                              child: SizedBox(
                                                width: 250 * fem,
                                                height: 250 * fem,
                                                child: Stack(
                                                  children: [
                                                    ClipOval(
                                                      child: AspectRatio(
                                                        aspectRatio:
                                                            _cameraController!
                                                                .value
                                                                .aspectRatio,
                                                        child: File(imagePath)
                                                                .existsSync()
                                                            ? Image.file(
                                                                File(imagePath),
                                                                width:
                                                                    250 * fem,
                                                                height:
                                                                    250 * fem,
                                                                fit: BoxFit
                                                                    .cover,
                                                              )
                                                            : const Text(
                                                                'No image selected.'),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                              // File(imagePath).existsSync()
                              //     ? GestureDetector(
                              //         onTap: () {
                              //           // context.pushReplacementNamed(
                              //           //     CameraVerifiedScreen);
                              //           setState(() {
                              //             _faceDetected = false;
                              //             imagePath = "";
                              //             deleteImage("photo.jpg");
                              //           });
                              //         },
                              //         child: Container(
                              //           // yourfacialinformationwascollec (2025:4210)
                              //           margin: EdgeInsets.fromLTRB(7 * fem,
                              //               0 * fem, 0 * fem, 82 * fem),
                              //           constraints: BoxConstraints(
                              //             maxWidth: 301 * fem,
                              //           ),
                              //           child: Text(
                              //             'Try Again',
                              //             textAlign: TextAlign.center,
                              //             style: SafeGoogleFont(
                              //               'Montserrat',
                              //               fontSize: 12 * ffem,
                              //               fontWeight: FontWeight.w400,
                              //               height: 1.3318751199 * ffem / fem,
                              //               color: const Color(0xff828282),
                              //             ),
                              //           ),
                              //         ),
                              //       )
                              //     : SizedBox(),
                              Container(
                                // yourfacialinformationwascollec (2025:4210)
                                margin: EdgeInsets.fromLTRB(
                                    7 * fem, 0 * fem, 0 * fem, 82 * fem),
                                constraints: BoxConstraints(
                                  maxWidth: 301 * fem,
                                ),
                                child: Text(
                                  'Your facial information was collected when you wen through the verification process.',
                                  textAlign: TextAlign.center,
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.3318751199 * ffem / fem,
                                    color: const Color(0xff828282),
                                  ),
                                ),
                              ),
                              Container(
                                // group410kvs (2025:4058)
                                margin: EdgeInsets.fromLTRB(
                                    2 * fem, 0 * fem, 0 * fem, 0 * fem),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => const frontIdScreen(),
                                      ),
                                    );
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(126 * fem,
                                        15 * fem, 23.67 * fem, 10 * fem),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: _faceDetected
                                          ? const Color.fromARGB(
                                              255, 37, 237, 70)
                                          : const Color(0xff259ded),
                                      borderRadius:
                                          BorderRadius.circular(100 * fem),
                                      boxShadow: [
                                        BoxShadow(
                                          color: const Color(0x3f000000),
                                          offset: Offset(0 * fem, 4 * fem),
                                          blurRadius: 2 * fem,
                                        ),
                                      ],
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // proceedC2B (2025:4060)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 75.67 * fem, 0 * fem),
                                          child: Text(
                                            'Proceed',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont(
                                              'Montserrat',
                                              fontSize: 24 * ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2175 * ffem / fem,
                                              color: const Color(0xffffffff),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // solararrowrightbrokenuBV (2025:4061)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 4 * fem),
                                          width: 26.67 * fem,
                                          height: 20 * fem,
                                          child: Image.asset(
                                            'assets/images/solar-arrow-right-broken.png',
                                            width: 26.67 * fem,
                                            height: 20 * fem,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
