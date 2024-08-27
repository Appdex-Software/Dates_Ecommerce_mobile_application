import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/cart/presentation/pages/cart_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Scaffold(
      appBar: TransparentAppBar(
        centerTitle: true,
        title: Text(l10n.cart),
        elevation: 0,
        color: theme.greenChalk,
        backButton: const SizedBox(),
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const CartUi(),
        tablet: const CartUi(),
        desktop: const CartUi(),
      ),
    );
  }
}
