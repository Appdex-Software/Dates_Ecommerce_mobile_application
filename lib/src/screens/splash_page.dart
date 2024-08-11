import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../app_features/splash/presentation/pages/splash_ui.dart';
import '../core/constants/adaptive.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const SplashUi(),
        tablet: const SplashUi(),
        desktop: const SplashUi(),
      ),
    );
  }
}
