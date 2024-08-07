import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import '../src/core/constants/app_sizes.dart';

import '../src/core/provider/app_startup_provider.dart';
import '../src/core/widgets/widgets.dart';
import 'bottom_bars.dart';

@RoutePage()
class DashboardLayoutPage extends StatefulWidget {
  const DashboardLayoutPage({super.key});

  @override
  State<DashboardLayoutPage> createState() => _DashboardLayoutPageState();
}

class _DashboardLayoutPageState extends State<DashboardLayoutPage> {
  TabsRouter? tabsRouter;
  GlobalKey bottomNavigationBarKey = GlobalKey(debugLabel: 'btm_app_bar');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AppStartupWidget(
      appStartupProvider: appStartupProvider,
      onLoaded: (context) {
        return AutoTabsScaffold(
          backgroundColor: theme.whiteColor,
          resizeToAvoidBottomInset: false,
          
          routes: const [
            HomeUserRoute(),
            DateStoreRoute(),
            CartRoute(),
            HomeUserRoute(),
          ],
          animationCurve: Curves.fastLinearToSlowEaseIn,
          bottomNavigationBuilder: (_, tabsRouter) {
            tabsRouter.addListener(() {
              setState(() {
                this.tabsRouter = tabsRouter;
              });
            });
            return InkWell(
              onDoubleTap: () {
                tabsRouter
                    .stackRouterOfIndex(tabsRouter.activeIndex)
                    ?.popUntilRoot();
              },
              child: BottomAppBar(
                height: 100,
                color: theme.whiteColor,
                surfaceTintColor: theme.primary,
                elevation: 0.0,
                shadowColor: theme.dark600.withOpacity(0.8),
                shape: const CircularNotchedRectangle(),
                notchMargin: 10,
                child: LinearGradientContainer(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      BottomBars(
                        icon: Icons.home,
                        title: l10n.home,
                        isActive: tabsRouter.activeIndex == 0,
                        onTap: () {
                          tabsRouter.setActiveIndex(0);
                        },
                      ),
                      BottomBars(
                        icon: Icons.store,
                        title: l10n.store,
                        isActive: tabsRouter.activeIndex == 1,
                        onTap: () {
                          tabsRouter.setActiveIndex(1);
                        },
                      ),
                      BottomBars(
                        icon: Icons.shopping_cart,
                        title: l10n.cart,
                        isActive: tabsRouter.activeIndex == 2,
                        onTap: () {
                          tabsRouter.setActiveIndex(2);
                        },
                      ),
                      BottomBars(
                        icon: Icons.settings,
                        title: l10n.settings,
                        isActive: tabsRouter.activeIndex == 3,
                        onTap: () {
                          tabsRouter.setActiveIndex(3);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
