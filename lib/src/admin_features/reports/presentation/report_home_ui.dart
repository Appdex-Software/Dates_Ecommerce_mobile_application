import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../core/constants/app_sizes.dart';

class ReportHomeUi extends StatelessWidget {
  const ReportHomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Padding(
      padding:  EdgeInsets.only(right: 4.sw,top: 4.sw),
      child: Align(
        alignment: Alignment.topRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomButton(
              title: l10n.ordersReport,
              onPressed: () {
                context.router.push(const OrderReportRoute());
              },
            ),
            gapH12,
        CustomButton(
              title: l10n.productsReport,
              onPressed: () {
                context.router.push(const ProductReportRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}