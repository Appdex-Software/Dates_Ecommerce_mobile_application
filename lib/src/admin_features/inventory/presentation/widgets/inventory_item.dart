import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class InventoryItem extends StatelessWidget {
  const InventoryItem({super.key, required this.title, required this.quantity});
  final String title;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return LinearGradientContainer(
        child: Padding(
            padding: EdgeInsets.only(
                left: 2.sw, right: 2.sw, bottom: 3.sh, top: 1.sh),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.bodyLarge,
                ),
                Text(
                  quantity == 0
                      ? l10n.unavailable
                      : '${l10n.available} $quantity',
                  style: theme.bodySmall,
                ),
              ],
            )));
  }
}
