import 'package:digicoop/app.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
 
  // Initialize the camera
  FlavorConfig(
    variables: {
      // "hostURL": 'https://devapi2.digicoop.ph/api/v1',
      "hostURL": 'https://sitapi2.digicoop.ph/api/v1',
    },
  );
  await SharedPrefs.init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
