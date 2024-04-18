import 'package:flutter_flavor/flutter_flavor.dart';

class DigiCoopAPI {
  static String baseUrl = FlavorConfig.instance.variables["hostURL"],
      logIn = "$baseUrl/auth/login",
      logInMPIN = "$baseUrl/auth/login/pincode",
      logout = "$baseUrl/auth/logout",
      createUser = "$baseUrl/persons/user/create",
      regions = "$baseUrl/helpers/regions",
      province = "$baseUrl/helpers/regions/",
      city = "$baseUrl/helpers/provinces/",
      validate = "$baseUrl/persons/validate",
      mpin = "$baseUrl/auth/user-set-credentials",
      register = "$baseUrl/persons/register",
      profile = "$baseUrl/persons/get-profile",
      changePW = "$baseUrl/auth/update-password/stage",
      generateOTP = "$baseUrl/otp/generate",
      updatePW = "$baseUrl/auth/update-password",
      changePIN = "$baseUrl/auth/update-pincode/stage",
      updatePIN = "$baseUrl/auth/update-pincode",
      getWallet = "$baseUrl/users/get-wallet",
      getPaymentMethod = "$baseUrl/transactions/payment-categories/";
}
