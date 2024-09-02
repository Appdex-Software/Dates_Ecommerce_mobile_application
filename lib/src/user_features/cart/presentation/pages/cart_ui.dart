import 'package:date_farm/src/user_features/cart/presentation/providers/cart_provider.dart';
import 'package:date_farm/src/user_features/cart/presentation/widgets/cart_item_container.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:date_farm/src/user_features/store/presentation/providers/store_provider.dart';
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
  TextEditingController commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final cartService = ref.watch(cartServiceProvider.notifier);
    final storeService = ref.watch(storeServiceProvider.notifier);
    return LinearGradientContainer(
      borderRadius: BorderRadius.zero,
      listOfColors: [theme.greenChalk, theme.white],
      child: Padding(
        padding: EdgeInsets.only(
          left: 12.sw,
          right: 12.sw,
        ),
        child: Column(
          children: [
            AsyncValueWidget(
                value: ref.watch(cartServiceProvider),
                data: (List<DateData> cartItem) {
                  return SizedBox(
                    height: 55.sh,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: cartItem.length,
                      separatorBuilder: (context, index) {
                        return Divider(
                          color: theme.dividerColor.withOpacity(0.5),
                        );
                      },
                      itemBuilder: (context, index) {
                        return CartItemContainer(
                          index: index,
                          dateData: cartItem[index],
                        );
                      },
                    ),
                  );
                }),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(bottom: 2.sh),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      l10n.comment,
                      style: theme.bodyMedium,
                    ),
                    gapH8,
                    CustomTextField(
                      keyboardType: TextInputType.name,
                      controller: commentController,
                      hint: l10n.comment,
                    ),
                    gapH12,
                    AsyncValueWidget(
                        value: ref.watch(cartServiceProvider),
                        data: (List<DateData> cartList) {
                          return CustomButton(
                            width: double.infinity,
                            isDisabled: cartList.isEmpty ? true : false,
                            elevation: 5,
                            title: l10n.confirmOrder,
                            titleStyle:
                                theme.titleSmall.copyWith(color: theme.white),
                            onPressed: () async {
                              cartService.setCreateOrderBody(
                                  comment: commentController.text);
                              await cartService.createOrder();
                              if (cartService
                                      .getCreateOrderResponseEntity()
                                      ?.statusCode ==
                                  201) {
                                commentController.text = '';
                                await storeService.getProducts();
                                context.mounted
                                    ? showSuccessAlert(context,
                                        "${l10n.theOrderHasBeenCreatedSuccessfully}, ${l10n.yourOrderNumberIs} ${cartService.getCreateOrderResponseEntity()?.data?.orderNumber}")
                                    : null;
                              } else {
                                context.mounted
                                    ? AppToast.errorToast(
                                        l10n.theOrderHasFailed, context)
                                    : null;
                              }
                            },
                          );
                        }),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
