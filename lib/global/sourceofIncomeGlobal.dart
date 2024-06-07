import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/sourceofIncomeModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final sourceofincome =
    AutoDisposeStateNotifierProvider<sourceofincomeClass, sourceofIncomeModel>(
        (ref) => sourceofincomeClass());

class sourceofincomeClass extends StateNotifier<sourceofIncomeModel> {
  sourceofincomeClass() : super(sourceofIncomeModel());

  sourceofIncomeModel get sourceofincome => state;

  Future<void> getSOI() async {
    final result = await ServiceHost.getSOI();
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("SOI ${json}");

      state = sourceofIncomeModel.fromJson(json);
    }
  }
}
