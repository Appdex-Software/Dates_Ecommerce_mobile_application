
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../../user_features/order/data/models/order_user_dto/order_user_data.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../user_features/order/presentation/providers/order_provider.dart';

class OrderConfirmationButton extends ConsumerStatefulWidget {
  const OrderConfirmationButton({required this.onTap,required this.data,this.currentState,  super.key});
  final OrderUserData? data;
  final String? currentState;
  final void Function()? onTap;
  @override
  ConsumerState<OrderConfirmationButton> createState() => _OrderConfirmationButtonState();
}

class _OrderConfirmationButtonState extends ConsumerState<OrderConfirmationButton> {
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
                              value: ref.watch(orderServiceProvider),
                              data: (_) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 10.sh),
                                  child: CustomButton(
                                    title: l10n.submit,
                                    onPressed: widget.onTap,
                                  ),
                                );
                              });
  }
}