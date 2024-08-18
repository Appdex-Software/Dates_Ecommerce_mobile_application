import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/inventory/presentation/pages/inventory_admin_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class InventoryAdminPage extends StatelessWidget {
  InventoryAdminPage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar:  TransparentAppBar(
        color: Colors.transparent,
        title: Text(l10n.inventory),
        backButton: IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu)),
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const InventoryAdminUi(),
        tablet: const InventoryAdminUi(),
        desktop: const InventoryAdminUi(),
      ),
    );
  }
}
