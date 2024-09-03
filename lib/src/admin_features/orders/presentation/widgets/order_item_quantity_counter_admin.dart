import 'package:cart_stepper/cart_stepper.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/order/presentation/providers/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/order/data/models/order_user_dto/product_detail.dart';

class OrderItemQuantityCounterAdmin extends ConsumerStatefulWidget {
  const OrderItemQuantityCounterAdmin( {super.key, this.buttonAspectRatio, this.data,required this.index,});
  final ProductDetail? data;
  final int index;
  final double? buttonAspectRatio;
  @override
  ConsumerState<OrderItemQuantityCounterAdmin> createState() =>
      _DateItemQuantityCounterState();
}

class _DateItemQuantityCounterState
    extends ConsumerState<OrderItemQuantityCounterAdmin> {
  int counter = 1;
  

  @override
  void initState() {
    counter = int.parse(widget.data?.quantity.toString()?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final orderService = ref.watch(orderServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(orderServiceProvider),
        data: (_) {
          return Theme(
            data: ThemeData(splashColor: Colors.transparent),
            child: CartStepperInt(
              value: counter,
              style: CartStepperTheme.of(context).copyWith(
                  backgroundColor: theme.white,
                  activeBackgroundColor: theme.white,
                  foregroundColor: theme.black,
                  activeForegroundColor: theme.black,
                  buttonAspectRatio: widget.buttonAspectRatio ?? 1,
                  textStyle: theme.bodyMedium,
                  shape: BoxShape.rectangle,
                  radius: AppSizes.radius4),
              didChangeCount: (value) {
                if (value >= 1) {
                  if (counter - value == -1) {
                    orderService.incrementQuantity(widget.index);
                  } else {
                    if(value != 0){
                      orderService.decrementQuantity(widget.index);
                    }
                  }
                  counter = value;
                }
              },
            ),
          );
        });
  }
}
