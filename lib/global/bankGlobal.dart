import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/bankModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final bankGlobal = AutoDisposeStateNotifierProvider<bankClass, bankModel>(
    (ref) => bankClass());

class bankClass extends StateNotifier<bankModel> {
  bankClass() : super(bankModel());

  bankModel get bankGlobal => state;

  Future<void> getBank() async {
    final result = await ServiceHost.getBankList();
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("Bank : $json");

      if (mounted) {
        state = bankModel.fromJson(json);
      }
    }
  }
}
