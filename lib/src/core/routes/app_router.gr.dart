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
    AdminAddPostRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminAddPostPage(),
      );
    },
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
    InventoryDetailsAdminRoute.name: (routeData) {
      final args = routeData.argsAs<InventoryDetailsAdminRouteArgs>(
          orElse: () => const InventoryDetailsAdminRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: InventoryDetailsAdminPage(
          key: args.key,
          data: args.data,
        ),
      );
    },
    InvoicesRoute.name: (routeData) {
      final args = routeData.argsAs<InvoicesRouteArgs>(
          orElse: () => const InvoicesRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: InvoicesPage(key: args.key),
      );
    },
    JoinRequestDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<JoinRequestDetailsRouteArgs>(
          orElse: () => const JoinRequestDetailsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: JoinRequestDetailsPage(
          key: args.key,
          data: args.data,
        ),
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
    OrderDetailsAdminRoute.name: (routeData) {
      final args = routeData.argsAs<OrderDetailsAdminRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OrderDetailsAdminPage(
          key: args.key,
          data: args.data,
          productDetailsIndex: args.productDetailsIndex,
        ),
      );
    },
    OrdersAdminRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OrdersAdminPage(),
      );
    },
    PdfViewerRoute.name: (routeData) {
      final args = routeData.argsAs<PdfViewerRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: PdfViewerPage(
          key: args.key,
          pdfData: args.pdfData,
        ),
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
/// [AdminAddPostPage]
class AdminAddPostRoute extends PageRouteInfo<void> {
  const AdminAddPostRoute({List<PageRouteInfo>? children})
      : super(
          AdminAddPostRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminAddPostRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [InventoryDetailsAdminPage]
class InventoryDetailsAdminRoute
    extends PageRouteInfo<InventoryDetailsAdminRouteArgs> {
  InventoryDetailsAdminRoute({
    Key? key,
    DateData? data,
    List<PageRouteInfo>? children,
  }) : super(
          InventoryDetailsAdminRoute.name,
          args: InventoryDetailsAdminRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'InventoryDetailsAdminRoute';

  static const PageInfo<InventoryDetailsAdminRouteArgs> page =
      PageInfo<InventoryDetailsAdminRouteArgs>(name);
}

class InventoryDetailsAdminRouteArgs {
  const InventoryDetailsAdminRouteArgs({
    this.key,
    this.data,
  });

  final Key? key;

  final DateData? data;

  @override
  String toString() {
    return 'InventoryDetailsAdminRouteArgs{key: $key, data: $data}';
  }
}

/// generated route for
/// [InvoicesPage]
class InvoicesRoute extends PageRouteInfo<InvoicesRouteArgs> {
  InvoicesRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          InvoicesRoute.name,
          args: InvoicesRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'InvoicesRoute';

  static const PageInfo<InvoicesRouteArgs> page =
      PageInfo<InvoicesRouteArgs>(name);
}

class InvoicesRouteArgs {
  const InvoicesRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'InvoicesRouteArgs{key: $key}';
  }
}

/// generated route for
/// [JoinRequestDetailsPage]
class JoinRequestDetailsRoute
    extends PageRouteInfo<JoinRequestDetailsRouteArgs> {
  JoinRequestDetailsRoute({
    Key? key,
    UserModificationData? data,
    List<PageRouteInfo>? children,
  }) : super(
          JoinRequestDetailsRoute.name,
          args: JoinRequestDetailsRouteArgs(
            key: key,
            data: data,
          ),
          initialChildren: children,
        );

  static const String name = 'JoinRequestDetailsRoute';

  static const PageInfo<JoinRequestDetailsRouteArgs> page =
      PageInfo<JoinRequestDetailsRouteArgs>(name);
}

class JoinRequestDetailsRouteArgs {
  const JoinRequestDetailsRouteArgs({
    this.key,
    this.data,
  });

  final Key? key;

  final UserModificationData? data;

  @override
  String toString() {
    return 'JoinRequestDetailsRouteArgs{key: $key, data: $data}';
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
/// [OrderDetailsAdminPage]
class OrderDetailsAdminRoute extends PageRouteInfo<OrderDetailsAdminRouteArgs> {
  OrderDetailsAdminRoute({
    Key? key,
    required OrderUserData? data,
    required int productDetailsIndex,
    List<PageRouteInfo>? children,
  }) : super(
          OrderDetailsAdminRoute.name,
          args: OrderDetailsAdminRouteArgs(
            key: key,
            data: data,
            productDetailsIndex: productDetailsIndex,
          ),
          initialChildren: children,
        );

  static const String name = 'OrderDetailsAdminRoute';

  static const PageInfo<OrderDetailsAdminRouteArgs> page =
      PageInfo<OrderDetailsAdminRouteArgs>(name);
}

class OrderDetailsAdminRouteArgs {
  const OrderDetailsAdminRouteArgs({
    this.key,
    required this.data,
    required this.productDetailsIndex,
  });

  final Key? key;

  final OrderUserData? data;

  final int productDetailsIndex;

  @override
  String toString() {
    return 'OrderDetailsAdminRouteArgs{key: $key, data: $data, productDetailsIndex: $productDetailsIndex}';
  }
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
/// [PdfViewerPage]
class PdfViewerRoute extends PageRouteInfo<PdfViewerRouteArgs> {
  PdfViewerRoute({
    Key? key,
    required dynamic pdfData,
    List<PageRouteInfo>? children,
  }) : super(
          PdfViewerRoute.name,
          args: PdfViewerRouteArgs(
            key: key,
            pdfData: pdfData,
          ),
          initialChildren: children,
        );

  static const String name = 'PdfViewerRoute';

  static const PageInfo<PdfViewerRouteArgs> page =
      PageInfo<PdfViewerRouteArgs>(name);
}

class PdfViewerRouteArgs {
  const PdfViewerRouteArgs({
    this.key,
    required this.pdfData,
  });

  final Key? key;

  final dynamic pdfData;

  @override
  String toString() {
    return 'PdfViewerRouteArgs{key: $key, pdfData: $pdfData}';
  }
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
