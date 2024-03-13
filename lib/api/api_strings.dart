import 'package:flutter_flavor/flutter_flavor.dart';

class DigiCoopAPI {
  static String baseUrl = FlavorConfig.instance.variables["hostURL"],
      logIn = "$baseUrl/photographers/login",
      createUser = "$baseUrl/persons/user/create",
      cancelTrip = "$baseUrl/booking/get-cancelled-bookings-by-photographer",
      pendingTrip = "$baseUrl/trip-images/get-today-trips",
      pendingBooking = "$baseUrl/booking/get-paid-bookings-by-photographer",
      backpackingTrip = "$baseUrl/trip-images/get-backpack-trips",
      createTrip = "$baseUrl/trip-images/upload/create-trip",
      uploadImg = "$baseUrl/trip-images/upload",
      photographer = "$baseUrl/photographers/get-all-photographers",
      addPhotographer = "$baseUrl/trip-images/add-photographer-to-trip",
      updateTrip = "$baseUrl/trip-images/get-completed-trips";
}
