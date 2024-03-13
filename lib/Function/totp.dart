import 'package:otp/otp.dart';
import 'package:timezone/data/latest.dart' as timezone;
import 'package:timezone/timezone.dart' as timezone;

void main() {
  final now = DateTime.now();
  timezone.initializeTimeZones();

  final pacificTimeZone = timezone.getLocation('Asia/Manila');
  final date = timezone.TZDateTime.from(now, pacificTimeZone);

  final code = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', date.millisecondsSinceEpoch,
      algorithm: Algorithm.SHA1, isGoogle: true);
  print("code ${code}");

  final code2 = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
      interval: 43200);
  print(code2);

  final code3 = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
      interval: 20, algorithm: Algorithm.SHA512);
  print(code3);

  final code4 = OTP.generateHOTPCodeString('PPZPJDZGNGXELNVL', 1);
  print(code4);

  final code5 = OTP.generateTOTPCodeString('PPZPJDZGNGXELNVL', 1362302550000);
  print(code5);

  final code6 = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch,
      interval: 60);
  print(code6);
  print(OTP.remainingSeconds(interval: 60));

  final code7 = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch);
  print(code7);
  print(OTP.remainingSeconds());

  final code8 = OTP.generateTOTPCodeString(
      'PPZPJDZGNGXELNVL', DateTime.now().millisecondsSinceEpoch);
  print(code8);
  print(OTP.remainingSeconds());

  final code9 = OTP.generateTOTPCodeString(
      'sdfsdf', DateTime.now().millisecondsSinceEpoch,
      algorithm: Algorithm.SHA1); // This should throw an exception.
  print(code9);
}
