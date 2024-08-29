import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/store/presentation/widgets/widgets.dart';

class OrderRequestItem extends StatefulWidget {
  const OrderRequestItem({super.key});

  @override
  State<OrderRequestItem> createState() => _OrderRequestItemState();
}

class _OrderRequestItemState extends State<OrderRequestItem> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Text(
              "الكمية المتاحة 20",
              style: theme.labelSmall,
            ),
            gapH30,
            Text(
              "الكمية المتاحة 20",
              style: theme.labelSmall,
            ),
          ],
        ),
        const Column(
          children: [
            DateItemQuantityCounter(),
            gapH16,
            DateItemQuantityCounter(),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "تمر خضري",
              style: theme.labelLarge,
            ),
            gapH26,
            Text(
              "صفاوي",
              style: theme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
