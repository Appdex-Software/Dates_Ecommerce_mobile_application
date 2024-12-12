import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/order/data/models/order_user_dto/order_user_data.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';
import 'order_item_quantity_counter_admin.dart';

class ProductDetailsDataContainer extends ConsumerStatefulWidget {
  const ProductDetailsDataContainer({required this.data, super.key});
  final OrderUserData? data;

  @override
  ConsumerState<ProductDetailsDataContainer> createState() =>
      _ProductDetailsDataContainerState();
}

class _ProductDetailsDataContainerState
    extends ConsumerState<ProductDetailsDataContainer> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Column(
      children: List.generate(
        widget.data?.productDetails?.length ?? 0,
        (index) {
          final productData = ref
              .watch(inventoryServiceProvider.notifier)
              .getDateProductEntity()
              ?.data
              ?.firstWhere(
            (element) {
              return element.id == widget.data?.productDetails?[index].product;
            },
            orElse: () {
              return DateData();
            },
          );

          return Padding(
            padding: EdgeInsets.only(bottom: 1.5.sh),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.quantity,
                  style: theme.labelLarge,
                ),
                OrderItemQuantityCounterAdmin(
                  index: index,
                  limit: widget.data?.user?.customerType == "families"
                      ? productData?.familiesQuantity?.toInt() ?? 0
                      : widget.data?.user?.customerType == "fasting"
                          ? productData?.fastingQuantity?.toInt() ?? 0
                          : productData?.charitiesQuantity?.toInt() ?? 0,
                  data: widget.data?.productDetails?[index],
                ),
                Text(
                  widget.data?.productDetails?[index].productName ?? '',
                  style: theme.labelLarge,
                ),
                Text(
                  (productData?.totalQuantity == null ||
                          productData?.totalQuantity == 0
                      ? l10n.unavailable
                      : "${l10n.quantity}: ${productData?.totalQuantity.toString()}"),
                  style: theme.labelLarge,
                ),
                Text(
                  (productData?.totalQuantity == null ||
                          productData?.totalQuantity == 0
                      ? l10n.unavailable
                      : widget.data?.user?.customerType == "families"
                          ? "${l10n.family}: ${productData?.familiesQuantity.toString()}"
                          : widget.data?.user?.customerType == "fasting"
                              ? "${l10n.fasting}: ${productData?.fastingQuantity.toString()}"
                              : "${l10n.charities}: ${productData?.charitiesQuantity.toString()}"),
                  style: theme.labelLarge,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
