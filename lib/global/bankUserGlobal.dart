import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/bankUserModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bankUserGlobal =
    AutoDisposeStateNotifierProvider<bankUserClass, bankUserModel>(
        (ref) => bankUserClass());

class bankUserClass extends StateNotifier<bankUserModel> {
  bankUserClass() : super(bankUserModel());

  bankUserModel get bankUserGlobal => state;

  Future<void> getUserBank() async {
    final result = await ServiceHost.getBankUser();
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("Bank User : $json");

      if (mounted) {
        state = bankUserModel.fromJson(json);
      }
    }
  }
}
