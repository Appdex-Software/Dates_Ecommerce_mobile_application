import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../user_features/store/presentation/pages/date_store_ui.dart';

@RoutePage()
class DateStorePage extends StatelessWidget {
  const DateStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const DateStoreUi(),
        tablet: const DateStoreUi(),
        desktop: const DateStoreUi(),
      ),
    );
  }
}