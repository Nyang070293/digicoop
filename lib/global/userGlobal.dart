import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/userModel.dart';
import 'package:digicoop/routes/route_generator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userCreate = AutoDisposeStateNotifierProvider<userClass, createUserModel>(
    (ref) => userClass());

class userClass extends StateNotifier<createUserModel> {
  userClass() : super(createUserModel());

  createUserModel get user => state;

  Future<void> createUser(String num) async {
    final result = await ServiceHost.regNum(num);
    if (result.statusCode == 201) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("sign $json");
      state = createUserModel.fromJson(json);

      // if( state.statusCode == 201){
      // await SharedPrefs.write(MobileNum, num);
      // await SharedPrefs.write(personCode, person_Code);

      // context.pushNamed(vCode);
      // }
    }
  }
}
