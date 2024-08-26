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
      final args = routeData.argsAs<DateDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DateDetailsPage(
          key: args.key,
          dateData: args.dateData,
        ),
      );
    },
    DateStoreRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DateStorePage(),
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
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    NewsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<NewsDetailsRouteArgs>(
          orElse: () => const NewsDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: NewsDetailsPage(
          key: args.key,
          newsData: args.newsData,
        ),
      );
    },
    NewsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NewsPage(),
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
class DateDetailsRoute extends PageRouteInfo<DateDetailsRouteArgs> {
  DateDetailsRoute({
    Key? key,
    required DateData dateData,
    List<PageRouteInfo>? children,
  }) : super(
          DateDetailsRoute.name,
          args: DateDetailsRouteArgs(
            key: key,
            dateData: dateData,
          ),
          initialChildren: children,
        );

  static const String name = 'DateDetailsRoute';

  static const PageInfo<DateDetailsRouteArgs> page =
      PageInfo<DateDetailsRouteArgs>(name);
}

class DateDetailsRouteArgs {
  const DateDetailsRouteArgs({
    this.key,
    required this.dateData,
  });

  final Key? key;

  final DateData dateData;

  @override
  String toString() {
    return 'DateDetailsRouteArgs{key: $key, dateData: $dateData}';
  }
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
class NewsDetailsRoute extends PageRouteInfo<NewsDetailsRouteArgs> {
  NewsDetailsRoute({
    Key? key,
    NewsData? newsData,
    List<PageRouteInfo>? children,
  }) : super(
          NewsDetailsRoute.name,
          args: NewsDetailsRouteArgs(
            key: key,
            newsData: newsData,
          ),
          initialChildren: children,
        );

  static const String name = 'NewsDetailsRoute';

  static const PageInfo<NewsDetailsRouteArgs> page =
      PageInfo<NewsDetailsRouteArgs>(name);
}

class NewsDetailsRouteArgs {
  const NewsDetailsRouteArgs({
    this.key,
    this.newsData,
  });

  final Key? key;

  final NewsData? newsData;

  @override
  String toString() {
    return 'NewsDetailsRouteArgs{key: $key, newsData: $newsData}';
  }
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
