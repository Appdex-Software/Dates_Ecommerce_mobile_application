import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/orders/presentation/pages/order_progress_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class OrderProgressPage extends StatelessWidget {
  OrderProgressPage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: TransparentAppBar(
        color: Colors.transparent,
        title: Text(l10n.ordersInProgress),
        centerTitle: true,
        backButton: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const OrderProgressUi(),
        tablet: const OrderProgressUi(),
        desktop: const OrderProgressUi(),
      ),
    );
  }
}
