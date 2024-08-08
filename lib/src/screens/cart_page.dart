import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/cart/presentation/pages/cart_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const TransparentAppBar(
        color: Colors.transparent,
        backButton: SizedBox(),
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