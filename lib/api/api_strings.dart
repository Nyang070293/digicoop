import 'package:flutter_flavor/flutter_flavor.dart';

class DigiCoopAPI {
  static String baseUrl = FlavorConfig.instance.variables["hostURL"],
      logIn = "$baseUrl/photographers/login",
      createUser = "$baseUrl/persons/user/create",
      regions = "$baseUrl/helpers/regions",
      province = "$baseUrl/helpers/regions/",
      city = "$baseUrl/helpers/provinces/";
}
