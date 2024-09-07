import 'package:logger/web.dart';

class AppConstants {
  const AppConstants._();

  static const String apiBaseUrl = 'https://waqfmohammedhail.org/api/v1';

  static const String refreshToken = 'refresh-token';
  static const cartKey = 'cartKey';
  static const String loginApiUrl = '/iam/login';
  static const String registerApiUrl = '/iam/users';
  static const String getUserApiUrl = '/iam/users';
  static const String getProductUrl = '/products/products';
  static const String getCategoriesUrl = '/products/categories';
  static const String createOrderUrl = '/orders/orders';
  static const String getNewsUrl = '/products/news';
  static const String postNewsUrl = '/products/news';
  static const String getOrdersUrl = '/orders/orders';
  static const String expiryTime = 'expiry-time';
  static const String defaultLocale = 'default-locale';
  static const String userId = 'userId';
  static const String deviceToken = 'DeviceToken';
}

List<String> orderStatus = [
  'pending approval',
  'pending fulfilment',
  'fulfilled',
  'purtily fulfilled',
  'shipped',
  'delivered',
  'canceled',
];
List<String> userRole = [
  'super user',
  'admin',
  'preparer',
  'tracker',
  'shipped',
  'customer',
];
List<String> customerType = [
  'families',
  'fasting',
  'charities',
];

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

const userInfoBox = 'userInfoBox';
const dateCartItemBox = 'dateCartItemBox';
