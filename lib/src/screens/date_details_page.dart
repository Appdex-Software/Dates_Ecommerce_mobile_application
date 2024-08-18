import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../user_features/store/presentation/pages/date_details_ui.dart';
import '../user_features/store/presentation/widgets/widgets.dart';

@RoutePage()
class DateDetailsPage extends StatelessWidget {
  const DateDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const TransparentAppBar(
        color: Colors.transparent,
      ),
      bottomNavigationBar: const BottomNavigationDateDetails(),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const DateDetailsUi(),
        tablet: const DateDetailsUi(),
        desktop: const DateDetailsUi(),
      ),
    );
  }
}
