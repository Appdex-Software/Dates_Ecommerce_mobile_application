import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';
import '../user_features/home/presentation/pages/home_ui.dart';

@RoutePage()
class HomeUserPage extends StatelessWidget {
  const HomeUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const HomeUserUi(),
        tablet: const HomeUserUi(),
        desktop: const HomeUserUi(),
      ),
    );
  }
}
