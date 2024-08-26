import 'package:date_farm/src/user_features/order/data/models/order_user_dto/order_user_data.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key, this.orderData});
  final OrderUserData? orderData;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final orderDate = orderData?.orderDate.toString().split(' ')[0];
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(3.sw),
      margin: EdgeInsets.only(bottom: 1.sh),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                orderData?.orderNumber.toString() ?? '',
                style: theme.bodyMedium,
              ),
              Text(
                orderDate ?? '',
                style: theme.bodyMedium,
              ),
            ],
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                orderData?.productDetails?.length ?? 0,
                (index) {
                  return Text(
                    orderData?.productDetails?[index].productName ?? '',
                    style: theme.bodyMedium,
                  );
                },
              )),
          Text(
            orderData?.status.toString() ?? '',
            style: theme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
