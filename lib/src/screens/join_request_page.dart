import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/join_request/presentation/pages/join_request_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class JoinRequestPage extends StatelessWidget {
  const JoinRequestPage({super.key});

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
        mobile: const JoinRequestUi(),
        tablet: const JoinRequestUi(),
        desktop: const JoinRequestUi(),
      ),
    );
  }
}