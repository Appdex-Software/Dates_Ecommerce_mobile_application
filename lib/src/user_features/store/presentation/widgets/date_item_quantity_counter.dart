import 'package:cart_stepper/cart_stepper.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class DateItemQuantityCounter extends StatefulWidget {
  const DateItemQuantityCounter({super.key, this.buttonAspectRatio});

  final double? buttonAspectRatio;
  @override
  State<DateItemQuantityCounter> createState() => _DateItemQuantityCounterState();
}

class _DateItemQuantityCounterState extends State<DateItemQuantityCounter> {
    int counter = 1;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

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
                counter = value;
              }
              setState(() {
                
              });
            },
          ),
    );
  }
}