// import 'package:digicoop/main.dart';
// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';

// class CameraScreen12 extends StatefulWidget {
//   @override
//   _CameraScreenState createState() => _CameraScreenState();
// }

// class _CameraScreenState extends State<CameraScreen12> {
//   late CameraController _controller;
//   late Future<void> _initializeControllerFuture;

//   @override
//   void initState() {
//     super.initState();
//     _controller = CameraController(cameras[1], ResolutionPreset.medium);
//     _initializeControllerFuture = _controller.initialize();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Camera Preview')),
//       body: Stack(
//         children: [
//           FutureBuilder<void>(
//             future: _initializeControllerFuture,
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.done) {
//                 return CameraPreview(_controller);
//               } else {
//                 return Center(child: CircularProgressIndicator());
//               }
//             },
//           ),
//           Center(
//             child: Container(
//               width: 200, // Adjust size as needed
//               height: 200, // Adjust size as needed
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(color: Colors.red, width: 2.0),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
