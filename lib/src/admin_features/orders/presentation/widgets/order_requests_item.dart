import 'package:date_farm/src/user_features/order/data/models/order_user_dto/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class OrderRequestItem extends StatefulWidget {
  const OrderRequestItem({this.data, super.key, required this.index});
  final List<ProductDetail>? data;
  final int index;
  @override
  State<OrderRequestItem> createState() => _OrderRequestItemState();
}

class _OrderRequestItemState extends State<OrderRequestItem> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(
        widget.data?.length ?? 0,
        (index) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: 1.sh,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.data?[index].productName ?? '',
                  style: theme.labelLarge,
                ),
                Text(
                  "${l10n.quantity} ${widget.data?[index].quantity}",
                  style: theme.labelSmall,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
