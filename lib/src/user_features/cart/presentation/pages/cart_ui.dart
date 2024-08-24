import 'package:date_farm/src/user_features/cart/presentation/providers/cart_provider.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:date_farm/src/user_features/store/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class CartUi extends ConsumerStatefulWidget {
  const CartUi({super.key});

  @override
  ConsumerState<CartUi> createState() => _CartUiState();
}

class _CartUiState extends ConsumerState<CartUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);
    return LinearGradientContainer(
      listOfColors: [theme.greenChalk, theme.white],
      child: Padding(
        padding: EdgeInsets.only(left: 12.sw, right: 12.sw, bottom: 8.sh),
        child: Column(
          children: [
            AsyncValueWidget(
              value: ref.watch(cartServiceProvider),
              data: (List<DateData> cartItem) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: cartItem.length,
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: theme.dividerColor.withOpacity(0.5),
                    );
                  },
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.sh),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductImage(image: cartItem[index].image ?? '', size: 15.sw),
                            Text(
                              cartItem[index].name ?? '',
                              style: theme.titleSmall,
                            ),
                            DateItemQuantityCounter(data: cartItem[index],),
                            IconButton(onPressed: (){
                              cartService.removeFromCart(index);
                            }, icon: const Icon(Icons.close))
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    elevation: 5,
                    title: l10n.confirmOrder,
                    titleStyle: theme.titleSmall.copyWith(color: theme.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
