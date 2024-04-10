import 'package:flutter_flavor/flutter_flavor.dart';

class DigiCoopAPI {
  static String baseUrl = FlavorConfig.instance.variables["hostURL"],
      logIn = "$baseUrl/auth/login",
      createUser = "$baseUrl/persons/user/create",
      regions = "$baseUrl/helpers/regions",
      province = "$baseUrl/helpers/regions/",
      city = "$baseUrl/helpers/provinces/",
      validate = "$baseUrl/persons/validate",
      mpin = "$baseUrl/auth/user-set-credentials",
      register = "$baseUrl/persons/register",
      profile = "$baseUrl/persons/get-profile";
}
