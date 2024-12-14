import 'package:date_farm/src/admin_features/reports/presentation/product_report_ui.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ProductReportPage extends StatelessWidget {
  const ProductReportPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: const TransparentAppBar(),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const ProductReportUi(),
        tablet: const ProductReportUi(),
        desktop: const ProductReportUi(),
      ),
    );
  }
}
