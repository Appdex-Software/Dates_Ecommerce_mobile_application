import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';
import '../user_features/settings/presentation/pages/contact_us_ui.dart';

@RoutePage()
class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return Scaffold(
      appBar:  TransparentAppBar(
        color: Colors.transparent,
        title: Text(l10n.contactUs),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const ContactUsUi(),
        tablet: const ContactUsUi(),
        desktop: const ContactUsUi(),
      ),
    );
  }
}