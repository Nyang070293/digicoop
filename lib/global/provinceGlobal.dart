import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/provinceModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final province = AutoDisposeStateNotifierProvider<provinceClass, provinceModel>(
    (ref) => provinceClass());

class provinceClass extends StateNotifier<provinceModel> {
  provinceClass() : super(provinceModel());

  provinceModel get province => state;

  Future<void> getProvince(
    String? regionId,
  ) async {
    final result = await ServiceHost.getProvince(regionId);
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("province ${json}");

      state = provinceModel.fromJson(json);
    }
  }
}
