import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/app_features/authentication/presentation/pages/register_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TransparentAppBar(),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const RegisterUi(),
        tablet: const RegisterUi(),
        desktop: const RegisterUi(),
      ),
    );
  }
}
