import 'package:date_farm/src/admin_features/invoices/prensentation/pages/invoices_ui.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class InvoicesPage extends StatelessWidget {
  InvoicesPage({super.key});

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: TransparentAppBar(
        elevation: 0,
        title: Text(l10n.invoice),
        centerTitle: true,
        backButton: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const InvoicesUi(),
        tablet: const InvoicesUi(),
        desktop: const InvoicesUi(),
      ),
    );
  }
}
