import 'package:digicoop/api/services.dart';
import 'package:digicoop/constant/shared_pref.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; 

enum AuthStatus { blank, unknowSkip, authenticated, unauthenticated }

final authScene = ChangeNotifierProvider((ref) => AuthGlobal());
final isDuplicate = StateProvider<bool>((ref) => false);

class AuthGlobal extends ChangeNotifier {
  AuthStatus state = AuthStatus.blank;

  AuthStatus get statusAuth => state;

  // void status() {
  //   final token = SharedPrefs.read(tokenuser);
  //   if (token != "") {
  //     state = AuthStatus.authenticated;
  //   } else {
  //     state = AuthStatus.unknowSkip;
  //   }

  //   notifyListeners();
  // }

  void signIn(
      {String? username,
      String? password,
      void Function(String)? onError,
      void Function(Map<String, String>)? onSuccess}) async {
    final response = await ServiceHost.login(
        data: {"username": username!, "password": password});

    if (response.statusCode == 200) {
      try { 
      //  await SharedPrefs.write(tokenuser, response.data["token"]); 

        state = AuthStatus.authenticated;
        notifyListeners();
      } finally {
        onSuccess!({
          "fullname": response.data["photographer"]["name"],
          "id": response.data["photographer"]["_id"]
        });
      }
    } else {
      final data = response.data["error"];
      if (data is Map<String, dynamic>) {
        final list = response.data["error"]["msg"];

        onError!(list);
      } else {
        final String msg = response.data["error"];

        onError!(msg);
      }
    }
  }

  void signOut() {
   // SharedPrefs.remove(tokenuser);
    state = AuthStatus.unauthenticated;
    //status();
  }
}