import 'package:timezone/standalone.dart' as tz;

const String refreshToken = "refreshToken",
    totp = "totp",
    user_name = "user_name",
    tripCode = "tripCode",
    countCompleteTrip = "countCompleteTrip",
    MobileNum = "MobileNum",
    personCode = "personCode",
    userCode = "userCode",
    accessToken = "accessToken";

const String firstname = "firstname",
    lastname = "lastname",
    middlename = "middlename",
    suffix = "suffix",
    birthday = "birthday",
    birthplace = "birthplace",
    gender = "gender",
    civilstatus = "civilstatus",
    contactOptionId = "contactOptionId",
    contactOptionValue = "contactOptionValue",
    address1 = "address1",
    address2 = "address2",
    cityId = "cityId",
    addressTypeId = "addressTypeId",
    zipCode = "zipCode",
    d_gender = "d_gender",
    d_cs = "d_cs",
    fullName = "fullName";

DateTime lastCheckedDate = DateTime(1970);

DateTime returnDateTime(DateTime? timedate) {
  var ph = tz.getLocation('Asia/Manila');
  var now = tz.TZDateTime.from(timedate!, ph);
  return now;
}
