import 'package:date_farm/src/user_features/cart/presentation/providers/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../store/data/models/date_product_dto/date_data.dart';
import '../../../store/presentation/widgets/widgets.dart';

class CartItemContainer extends ConsumerWidget {
  const CartItemContainer({required this.index, super.key, this.dateData});
  final DateData? dateData;
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, _) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.sh),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ProductImage(image: dateData?.image ?? '', size: 15.sw),
            Text(
              dateData?.name ?? '',
              style: theme.titleSmall,
            ),
            DateItemQuantityCounter(
              data: dateData,
            ),
            IconButton(
                onPressed: () {
                  cartService.removeFromCart(index);
                },
                icon: const Icon(Icons.close))
          ],
        ),
      ),
    );
  }
}
