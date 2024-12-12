import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/reports/presentation/order_report_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class OrderReportPage extends StatelessWidget {
  const OrderReportPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TransparentAppBar(),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const OrderReportUi(),
        tablet: const OrderReportUi(),
        desktop: const OrderReportUi(),
      ),
    );
  }
}
