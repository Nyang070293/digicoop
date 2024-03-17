import 'package:timezone/standalone.dart' as tz;

const String tokenuser = "userToken",
    totp = "totp",
    user_name = "user_name",
    email = "email",
    tripCode = "tripCode",
    countCompleteTrip = "countCompleteTrip",
    MobileNum = "MobileNum",
    personCode = "personCode";

DateTime lastCheckedDate = DateTime(1970);

DateTime returnDateTime(DateTime? timedate) {
  var ph = tz.getLocation('Asia/Manila');
  var now = tz.TZDateTime.from(timedate!, ph);
  return now;
}
