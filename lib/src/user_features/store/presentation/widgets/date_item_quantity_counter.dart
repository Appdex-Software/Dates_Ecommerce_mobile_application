

import 'package:cart_stepper/cart_stepper.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/cart/presentation/providers/cart_provider.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';

class DateItemQuantityCounter extends ConsumerStatefulWidget {
  const DateItemQuantityCounter({super.key, this.buttonAspectRatio, this.data});
  final DateData? data;
  final double? buttonAspectRatio;
  @override
  ConsumerState<DateItemQuantityCounter> createState() =>
      _DateItemQuantityCounterState();
}

class _DateItemQuantityCounterState extends ConsumerState<DateItemQuantityCounter> {
  int counter = 1;


 

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);
    counter =  ref.watch(cartServiceProvider.notifier).checkAddedToCart(widget.data ?? DateData()) ?? 1;
    return AsyncValueWidget(
      value: ref.watch(cartServiceProvider),
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
                if(counter - value == -1) {
                  cartService.addToCart(widget.data ?? DateData());
                } else {
                  cartService.decrementQuantity(widget.data ?? DateData());
                }
                counter = value;
              }
            },
          ),
        );
      }
    );
  }
}
