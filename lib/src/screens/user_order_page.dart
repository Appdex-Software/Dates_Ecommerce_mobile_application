import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../user_features/settings/presentation/pages/user_order_ui.dart';

@RoutePage()
class UserOrderPage extends StatefulWidget {
  const UserOrderPage({super.key});

  @override
  State<UserOrderPage> createState() => _UserOrderPageState();
}

class _UserOrderPageState extends State<UserOrderPage> {
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar:  TransparentAppBar(
        title: Text(l10n.orders),
        centerTitle: true,
        color: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const UserOrderUi(),
        tablet: const UserOrderUi(),
        desktop: const UserOrderUi(),
      ),
    );
  }
}