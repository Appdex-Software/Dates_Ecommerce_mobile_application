import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/widgets.dart';

class OrdersAdminUi extends StatefulWidget {
  const OrdersAdminUi({super.key});

  @override
  State<OrdersAdminUi> createState() => _OrdersAdminUiState();
}

class _OrdersAdminUiState extends State<OrdersAdminUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 4.1.sw, right: 4.1.sw),
      child: Column(
        children: [
          LinearGradientContainer(
              child: Padding(
            padding: EdgeInsets.only(
                top: 2.sh, bottom: 10.sh, left: 3.sw, right: 3.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(text: 'جمعية البر ', style: theme.titleLarge),
                    TextSpan(
                        text: 'طلب رقم 5 للجمعية', style: theme.labelLarge),
                  ]),
                ),
                gapH16,
                const OrderRequestItem(),
                gapH30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButton(
                      title: l10n.accept,
                      width: 20.sw,
                    ),
                    CustomButton(
                      title: l10n.decline,
                      backgroundColor: theme.decline,
                      width: 20.sw,
                    )
                  ],
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
