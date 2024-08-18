import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class OrderItem extends StatefulWidget {
  const OrderItem({super.key});

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(3.sw),
      decoration: BoxDecoration(
        color: theme.white,
        border: Border.all(color: theme.black.withOpacity(0.2)),
        borderRadius: AppSizes.borderRadius20,
        boxShadow: [
          BoxShadow(
            color: theme.black.withOpacity(0.2),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "#2022312",
                style: theme.bodyMedium,
              ),
              Text(
                "14/7/2024",
                style: theme.bodyMedium,
              ),
            ],
          ),
          gapH20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "تمر خضري * 3",
                style: theme.bodyMedium,
              ),
              Text(
                "قيد التنفيذ",
                style: theme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
