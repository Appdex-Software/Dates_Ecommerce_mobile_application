import 'package:date_farm/src/core/constants/constants.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/order/data/models/order_user_dto/order_user_data.dart';
import '../widgets/order_item_quantity_counter_admin.dart';

class OrderAdminDetailsUi extends StatefulWidget {
  const OrderAdminDetailsUi(
      {super.key, required this.data, required this.productDetailsIndex});
  final OrderUserData? data;
  final int productDetailsIndex;
  @override
  State<OrderAdminDetailsUi> createState() => _OrderAdminDetailsUiState();
}

class _OrderAdminDetailsUiState extends State<OrderAdminDetailsUi> {
  String? currentState;
  @override
  void initState() {
    currentState = widget.data?.status;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return LinearGradientContainer(
      borderRadius: BorderRadius.zero,
      listOfColors: [theme.greenChalk, theme.white],
      child: ListView(
        padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.sh),
        children: [
          Column(
            children: List.generate(
              widget.data?.productDetails?.length ?? 0,
              (index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 1.5.sh),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "الكمية المتاحة ${widget.data?.productDetails?[index].quantity}",
                        style: theme.labelLarge,
                      ),
                      gapW24,
                      OrderItemQuantityCounterAdmin(
                        index: index,
                        productDetailsindex: widget.productDetailsIndex,
                        data: widget.data?.productDetails?[index],
                      ),
                      gapW24,
                      Text(
                        widget.data?.productDetails?[index].productName ?? '',
                        style: theme.labelLarge,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          gapH20,
          CustomDropDown(
            value: currentState,
            items: List.generate(orderStatus.length, (index) {
            return DropdownMenuItem(
              value: orderStatus[index],
              child: Text(orderStatus[index],style: theme.labelLarge,),
            );
          },), onChanged: (value){
            currentState = value;
            setState(() {
              
            });
          }, hint: l10n.orderStatus)
        ],
      ),
    );
  }
}
