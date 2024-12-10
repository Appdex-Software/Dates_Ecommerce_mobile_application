// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/orders/presentation/widgets/widgets.dart';
import 'package:date_farm/src/core/constants/constants.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:date_farm/src/user_features/order/data/models/order_user_dto/product_detail.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/order/data/models/order_user_dto/order_user_data.dart';
import '../../../../user_features/order/presentation/providers/order_provider.dart';

class OrderAdminDetailsUi extends ConsumerStatefulWidget {
  OrderAdminDetailsUi(
      {super.key, required this.data, required this.productDetailsIndex});
  OrderUserData? data;
  final int productDetailsIndex;
  @override
  ConsumerState<OrderAdminDetailsUi> createState() =>
      _OrderAdminDetailsUiState();
}

class _OrderAdminDetailsUiState extends ConsumerState<OrderAdminDetailsUi> {
  String? currentState;
  @override
  void initState() {
    currentState = widget.data?.status;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) async {
        ref
            .read(orderServiceProvider.notifier)
            .setProductDetail(widget.data?.productDetails ?? []);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final orderService = ref.watch(orderServiceProvider.notifier);

    return LinearGradientContainer(
        borderRadius: BorderRadius.zero,
        listOfColors: [theme.greenChalk, theme.white],
        child: AsyncValueWidget(
            value: ref.watch(orderServiceProvider),
            data: (_) {
              return Padding(
                padding:
                    EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 1.sh),
                child: SafeArea(
                  child: Column(
                    children: [
                      ProductDetailsDataContainer(data: widget.data),
                      gapH20,
                      CustomDropDown(
                          value: currentState,
                          items: List.generate(
                            orderStatus.length,
                            (index) {
                              return DropdownMenuItem(
                                value: orderStatus[index],
                                child: Text(
                                  orderStatus[index],
                                  style: theme.labelLarge,
                                ),
                              );
                            },
                          ),
                          onChanged: (value) {
                            currentState = value;
                            setState(() {});
                          },
                          hint: l10n.orderStatus),
                      const Spacer(),
                      OrderConfirmationButton(
                        data: widget.data,
                        currentState: currentState,
                        onTap: () async {
                          final OrderUserData orderBody = OrderUserData(
                              comment: widget.data?.comment,
                              deliveryImage: widget.data?.deliveryImage,
                              id: widget.data?.id,
                              orderDate: widget.data?.orderDate,
                              orderNumber: widget.data?.orderNumber,
                              productDetails: List.generate(
                                orderService.getProductDetails().length,
                                (index) {
                                  return ProductDetail(
                                    id: orderService
                                        .getProductDetails()[index]
                                        .id,
                                    product: orderService
                                        .getProductDetails()[index]
                                        .product,
                                    productName: orderService
                                        .getProductDetails()[index]
                                        .productName,
                                    quantity: orderService
                                        .getProductDetails()[index]
                                        .quantity,
                                  );
                                },
                              ),
                              status: currentState,
                              user: widget.data?.user);
                          final statusCode =
                              await orderService.updateOrders(body: orderBody);

                          if (statusCode == 200) {
                            if (context.mounted) {
                              context.router.maybePop();
                              AppToast.successToast(
                                  l10n.theOrderHasBeenEditedSuccessfully,
                                  context);
                            }
                          } else {
                            context.mounted
                                ? AppToast.errorToast(
                                    l10n.theOrderHasFailed, context)
                                : null;
                          }
                        },
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

