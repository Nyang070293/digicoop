import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/regionModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final region = AutoDisposeStateNotifierProvider<regionClass, regionModel>(
    (ref) => regionClass());

class regionClass extends StateNotifier<regionModel> {
  regionClass() : super(regionModel());

  regionModel get region => state;

  Future<void> getRegion() async {
    final result = await ServiceHost.getRegion();
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("yang ${json}");

      state = regionModel.fromJson(json);
    }
  }
}
