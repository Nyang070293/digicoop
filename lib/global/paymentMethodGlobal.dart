import 'dart:convert';

import 'package:digicoop/Function/aes.dart';
import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/keys.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:digicoop/model/paymentmethodModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final paymentMethodGlobal =
    AutoDisposeStateNotifierProvider<paymentMethodClass, paymentmethodModel>(
        (ref) => paymentMethodClass());

class paymentMethodClass extends StateNotifier<paymentmethodModel> {
  paymentMethodClass() : super(paymentmethodModel());

  paymentmethodModel get paymentMethodGlobal => state;

  Future<void> getPaymentMethod(
    String categoryId,
  ) async {
    final result = await ServiceHost.getPaymentMethod(categoryId);
    if (result.statusCode == 200) {
      String sentence = result.data.toString();
      List<String> words = sentence.split(': ');

      String modifiedString = words[1].substring(0, words[1].length - 1);

      final decrypt = Aes256.decrypt(modifiedString, SharedPrefs.read(totp));
      Map<String, dynamic> json = jsonDecode(decrypt!);
      print("PaymentMethod : $json");

      if (mounted) {
        state = paymentmethodModel.fromJson(json);
      }
    }
  }
}
