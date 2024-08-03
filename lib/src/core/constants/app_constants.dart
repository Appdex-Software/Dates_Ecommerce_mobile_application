import 'package:logger/web.dart';

class AppConstants {
  const AppConstants._();

  static const String apiBaseUrl = '';

  static const String refreshToken = 'refresh-token';
  static const String expiryTime = 'expiry-time';
  static const String defaultLocale = 'default-locale';
  static const String userId = 'userId';
  static const String deviceToken = 'DeviceToken';
}
Logger logger = Logger(
  printer: HybridPrinter(
    PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    error: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    fatal: PrettyPrinter(
      methodCount: 15,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    trace: PrettyPrinter(
      methodCount: 25,
      errorMethodCount: 5,
      lineLength: 140,
    ),
    warning: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 5,
      lineLength: 140,
    ),
  ),
);