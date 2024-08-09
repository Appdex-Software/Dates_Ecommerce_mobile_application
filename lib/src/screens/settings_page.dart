import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';
import '../user_features/settings/presentation/pages/settings_ui.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      
      appBar: const TransparentAppBar(
        color: Colors.transparent,
        backButton: SizedBox(),
      ),
      body: CustomAdaptiveScreen.builder(
        mobile: const SettingsUi(),
        tablet: const SettingsUi(),
        desktop: const SettingsUi(),
      ),
    );
  }
}