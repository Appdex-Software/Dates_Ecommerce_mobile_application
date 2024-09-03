import 'package:date_farm/src/user_features/order/data/models/order_user_dto/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import 'order_item_quantity_counter_admin.dart';

class OrderRequestItem extends StatefulWidget {
  const OrderRequestItem({this.data,super.key, required this.index});
  final List<ProductDetail>? data;
  final int index;
  @override
  State<OrderRequestItem> createState() => _OrderRequestItemState();
}

class _OrderRequestItemState extends State<OrderRequestItem> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: List.generate(widget.data?.length ?? 0, (index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 1.sh,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "الكمية المتاحة ${widget.data?[index].quantity}",
                style: theme.labelSmall,
              ),
              gapW32,
               OrderItemQuantityCounterAdmin(data: widget.data?[index],index: widget.index,productDetailsindex: index,),
              gapW32,
              Text(
                widget.data?[index].productName ?? '',
                style: theme.labelLarge,
              ),
            ],
          ),
        );
      },),
    );
  }
}
