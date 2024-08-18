// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CartRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CartPage(),
      );
    },
    ContactUsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ContactUsPage(),
      );
    },
    DashboardLayoutRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DashboardLayoutPage(),
      );
    },
    DateDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DateDetailsPage(),
      );
    },
    DateStoreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DateStorePage(),
      );
    },
    HomeAdminNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeAdminNavigationPage(),
      );
    },
    HomeAdminRoute.name: (routeData) {
      final args = routeData.argsAs<HomeAdminRouteArgs>(
          orElse: () => const HomeAdminRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: HomeAdminPage(key: args.key),
      );
    },
    HomeUserNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeUserNavigationPage(),
      );
    },
    HomeUserRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeUserPage(),
      );
    },
    InventoryAdminRoute.name: (routeData) {
      final args = routeData.argsAs<InventoryAdminRouteArgs>(
          orElse: () => const InventoryAdminRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: InventoryAdminPage(key: args.key),
      );
    },
    JoinRequestRoute.name: (routeData) {
      final args = routeData.argsAs<JoinRequestRouteArgs>(
          orElse: () => const JoinRequestRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: JoinRequestPage(key: args.key),
      );
    },
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    NewsDetailsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsDetailsPage(),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
      );
    },
    OrdersAdminRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersAdminPage(),
      );
    },
    RegisterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const RegisterPage(),
      );
    },
    SettingUserNavigationRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingUserNavigationPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    UserOrderRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserOrderPage(),
      );
    },
  };
}

/// generated route for
/// [CartPage]
class CartRoute extends PageRouteInfo<void> {
  const CartRoute({List<PageRouteInfo>? children})
      : super(
          CartRoute.name,
          initialChildren: children,
        );

  static const String name = 'CartRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ContactUsPage]
class ContactUsRoute extends PageRouteInfo<void> {
  const ContactUsRoute({List<PageRouteInfo>? children})
      : super(
          ContactUsRoute.name,
          initialChildren: children,
        );

  static const String name = 'ContactUsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DashboardLayoutPage]
class DashboardLayoutRoute extends PageRouteInfo<void> {
  const DashboardLayoutRoute({List<PageRouteInfo>? children})
      : super(
          DashboardLayoutRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardLayoutRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DateDetailsPage]
class DateDetailsRoute extends PageRouteInfo<void> {
  const DateDetailsRoute({List<PageRouteInfo>? children})
      : super(
          DateDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'DateDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DateStorePage]
class DateStoreRoute extends PageRouteInfo<void> {
  const DateStoreRoute({List<PageRouteInfo>? children})
      : super(
          DateStoreRoute.name,
          initialChildren: children,
        );

  static const String name = 'DateStoreRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeAdminNavigationPage]
class HomeAdminNavigationRoute extends PageRouteInfo<void> {
  const HomeAdminNavigationRoute({List<PageRouteInfo>? children})
      : super(
          HomeAdminNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeAdminNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeAdminPage]
class HomeAdminRoute extends PageRouteInfo<HomeAdminRouteArgs> {
  HomeAdminRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          HomeAdminRoute.name,
          args: HomeAdminRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeAdminRoute';

  static const PageInfo<HomeAdminRouteArgs> page =
      PageInfo<HomeAdminRouteArgs>(name);
}

class HomeAdminRouteArgs {
  const HomeAdminRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeAdminRouteArgs{key: $key}';
  }
}

/// generated route for
/// [HomeUserNavigationPage]
class HomeUserNavigationRoute extends PageRouteInfo<void> {
  const HomeUserNavigationRoute({List<PageRouteInfo>? children})
      : super(
          HomeUserNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeUserNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeUserPage]
class HomeUserRoute extends PageRouteInfo<void> {
  const HomeUserRoute({List<PageRouteInfo>? children})
      : super(
          HomeUserRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeUserRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InventoryAdminPage]
class InventoryAdminRoute extends PageRouteInfo<InventoryAdminRouteArgs> {
  InventoryAdminRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          InventoryAdminRoute.name,
          args: InventoryAdminRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'InventoryAdminRoute';

  static const PageInfo<InventoryAdminRouteArgs> page =
      PageInfo<InventoryAdminRouteArgs>(name);
}

class InventoryAdminRouteArgs {
  const InventoryAdminRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'InventoryAdminRouteArgs{key: $key}';
  }
}

/// generated route for
/// [JoinRequestPage]
class JoinRequestRoute extends PageRouteInfo<JoinRequestRouteArgs> {
  JoinRequestRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          JoinRequestRoute.name,
          args: JoinRequestRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'JoinRequestRoute';

  static const PageInfo<JoinRequestRouteArgs> page =
      PageInfo<JoinRequestRouteArgs>(name);
}

class JoinRequestRouteArgs {
  const JoinRequestRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'JoinRequestRouteArgs{key: $key}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsDetailsPage]
class NewsDetailsRoute extends PageRouteInfo<void> {
  const NewsDetailsRoute({List<PageRouteInfo>? children})
      : super(
          NewsDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NewsPage]
class NewsRoute extends PageRouteInfo<void> {
  const NewsRoute({List<PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OrdersAdminPage]
class OrdersAdminRoute extends PageRouteInfo<void> {
  const OrdersAdminRoute({List<PageRouteInfo>? children})
      : super(
          OrdersAdminRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrdersAdminRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterPage]
class RegisterRoute extends PageRouteInfo<void> {
  const RegisterRoute({List<PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingUserNavigationPage]
class SettingUserNavigationRoute extends PageRouteInfo<void> {
  const SettingUserNavigationRoute({List<PageRouteInfo>? children})
      : super(
          SettingUserNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingUserNavigationRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UserOrderPage]
class UserOrderRoute extends PageRouteInfo<void> {
  const UserOrderRoute({List<PageRouteInfo>? children})
      : super(
          UserOrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserOrderRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
