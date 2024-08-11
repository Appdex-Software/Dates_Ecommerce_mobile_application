import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../app_features/authentication/presentation/pages/login_ui.dart';
import '../core/constants/adaptive.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const LoginUi(),
        tablet: const LoginUi(),
        desktop: const LoginUi(),
      ),
    );
  }
}
