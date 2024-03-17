import 'package:digicoop/app.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    variables: {
      "hostURL": 'https://devapi2.digicoop.ph/api/v1',
    },
  );
  await SharedPrefs.init();

  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}
