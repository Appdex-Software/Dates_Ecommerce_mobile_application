import 'package:date_farm/src/admin_features/invoices/prensentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';
import '../../../../user_features/store/domain/entities/date_product_entity.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';

class InvoicesUi extends ConsumerStatefulWidget {
  const InvoicesUi({super.key});

  @override
  ConsumerState<InvoicesUi> createState() => _InvoicesUiState();
}

class _InvoicesUiState extends ConsumerState<InvoicesUi> {
   @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        initFunction();
      },
    );
    super.initState();
  }

  initFunction() async {
    await ref.watch(inventoryServiceProvider.notifier).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    final inventoryService = ref.watch(inventoryServiceProvider.notifier);
    final (_, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(inventoryServiceProvider),
        data: (DateProductEntity? productEntity) {
          final List<DateData>? productList =
              inventoryService.getIsAvailable() != null
                  ? inventoryService.getIsAvailable() ?? false
                      ? productEntity?.data
                          ?.where(
                            (element) => (element.totalQuantity ?? 0) > 1,
                          )
                          .toList()
                      : productEntity?.data
                          ?.where(
                            (element) => element.totalQuantity == 0,
                          )
                          .toList()
                  : productEntity?.data;
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                gapH20,
                Column(
                  children: List.generate(
                    productList?.length ?? 0,
                    (index) {
                      return InvoiceItem(
                          productID: productList?[index].id ?? '',
                          title: productList?[index].name ?? '',
                          );
                    },
                  ),
                ),
                gapH16,
                CustomButton(
                  title: l10n.printAll,
                )
              ],
            ),
          );
        });
  }
}