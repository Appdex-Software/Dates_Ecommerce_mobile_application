import 'package:auto_route/auto_route.dart';
import 'package:date_farm/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

import '../../screens/screens.dart';
import '../../user_features/news/data/models/news_dto/news_data.dart';
import '../../user_features/store/data/models/date_product_dto/date_data.dart';
import '../constants/constants.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: DashboardLayoutRoute.page, children: [
          AutoRoute(page: HomeUserNavigationRoute.page, children: [
            AutoRoute(
                page: HomeUserRoute.page, initial: true, maintainState: true),
          ]),
          AutoRoute(page: SettingUserNavigationRoute.page, children: [
            AutoRoute(
                page: SettingsRoute.page, initial: true, maintainState: true),
            AutoRoute(page: UserOrderRoute.page, maintainState: true),
            AutoRoute(page: NewsRoute.page, maintainState: true),
            AutoRoute(page: NewsDetailsRoute.page, maintainState: true),
            AutoRoute(page: ContactUsRoute.page, maintainState: true),
          ]),
          AutoRoute(page: DateStoreRoute.page),
          AutoRoute(page: CartRoute.page),
          AutoRoute(
            page: UserOrderRoute.page,
          ),
        ]),
        AutoRoute(page: DateDetailsRoute.page),
        AutoRoute(page: HomeAdminNavigationRoute.page, children: [
          AutoRoute(page: HomeAdminRoute.page, initial: true),
          AutoRoute(
            page: OrdersAdminRoute.page,
          ),
          AutoRoute(
            page: JoinRequestRoute.page,
          ),
          AutoRoute(
            page: InventoryAdminRoute.page,
          ),
          AutoRoute(
            page: InventoryDetailsAdminRoute.page,
          ),
        ]),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
  Widget transition(context, animation, secondaryAnimation, child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }
}

class MyObserver extends AutoRouterObserver {
  @override
  void didPush(Route route, Route? previousRoute) {
    logger.i('New route pushed: ${route.settings.name}');
  }

  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.i('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.i('Tab route re-visited: ${route.name}');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    logger.i('Route popped: ${route.settings.name}');
  }
}
