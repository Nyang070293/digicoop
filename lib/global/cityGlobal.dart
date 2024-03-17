import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/cityModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final city = AutoDisposeStateNotifierProvider<cityClass, cityModel>(
    (ref) => cityClass());

class cityClass extends StateNotifier<cityModel> {
  cityClass() : super(cityModel());

  cityModel get city => state;

  Future<void> getCity(
    String? provinceId,
  ) async {
    final result = await ServiceHost.getCity(provinceId);
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      // print("city $json");

      state = cityModel.fromJson(json);
    }
  }
}
