import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/natureWorkModel.dart';
import 'package:digicoop/model/sourceofIncomeModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final natureWork =
    AutoDisposeStateNotifierProvider<natureWorkClass, natureWorkModel>(
        (ref) => natureWorkClass());

class natureWorkClass extends StateNotifier<natureWorkModel> {
  natureWorkClass() : super(natureWorkModel());

  natureWorkModel get natureWork => state;

  Future<void> getNatureWork() async {
    final result = await ServiceHost.getNOW();
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("NOW ${json}");

      state = natureWorkModel.fromJson(json);
    }
  }
}
