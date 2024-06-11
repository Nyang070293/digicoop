import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:path/path.dart' as path;

class FaceCapturePage extends StatefulWidget {
  @override
  _FaceCapturePageState createState() => _FaceCapturePageState();
}

class _FaceCapturePageState extends State<FaceCapturePage> {
  CameraController? _cameraController;
  FaceDetector? _faceDetector;
  bool _isDetectingFaces = false;
  bool _isProcessingImage = false;
  bool _faceDetected = false;
  String _status = 'Initializing...';

  @override
  void initState() {
    super.initState();
    _initializeCamera();
    _initializeFaceDetector();
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
    return Scaffold(
      appBar: AppBar(title: Text('Face Capture')),
      body: Column(
        children: [
          Expanded(
            child: _cameraController == null ||
                    !_cameraController!.value.isInitialized
                ? Center(child: CircularProgressIndicator())
                : Stack(
                    children: [
                      CameraPreview(_cameraController!),
                      if (_faceDetected)
                        Positioned(
                          top: 10,
                          right: 10,
                          child:
                              Icon(Icons.face, color: Colors.green, size: 50),
                        ),
                    ],
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(_status, style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}
