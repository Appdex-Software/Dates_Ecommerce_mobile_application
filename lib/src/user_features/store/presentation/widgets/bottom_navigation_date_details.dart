import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/cart/presentation/providers/cart_provider.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class BottomNavigationDateDetails extends ConsumerWidget {
  const BottomNavigationDateDetails({required this.dateData, super.key});
  final DateData dateData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);

    return AsyncValueWidget(
        value: ref.watch(cartServiceProvider),
        data: (_) {
          return BottomAppBar(
            color: theme.white,
            child: SizedBox(
              height: 20.sh,
              child: CustomButton(
                title: cartService.getCartList().contains(dateData)
                    ? l10n.thisItemHasBeenAddedAlready
                    : l10n.add,
                isDisabled:
                    cartService.getCartList().contains(dateData) ? true : false,
                width: double.infinity,
                onPressed: () {
                  ref.watch(cartServiceProvider.notifier).addToCart(dateData);
                  // context.router.maybePop();
                  AppToast.successToast(
                      l10n.theItemHasBeenAddedSuccessfully, context);
                },
              ),
            ),
          );
        });
  }
}
