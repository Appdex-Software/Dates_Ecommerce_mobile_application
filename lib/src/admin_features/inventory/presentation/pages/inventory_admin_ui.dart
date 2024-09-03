
import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/inventory/presentation/providers/inventory_provider.dart';
import 'package:date_farm/src/admin_features/inventory/presentation/widgets/widgets.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';

class InventoryAdminUi extends ConsumerStatefulWidget {
  const InventoryAdminUi({super.key});

  @override
  ConsumerState<InventoryAdminUi> createState() => _InventoryAdminUiState();
}

class _InventoryAdminUiState extends ConsumerState<InventoryAdminUi> {

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initFunction();
    },);
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
        final List<DateData>? productList = inventoryService.getIsAvailable() !=null ? inventoryService.getIsAvailable() ?? false ? productEntity?.data?.where((element) => (element.totalQuantity ?? 0) > 1,).toList() : productEntity?.data?.where((element) => element.totalQuantity == 0,).toList() : productEntity?.data;
        return Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CategoryAvailabilityContainer(),
                  gapH20,
                  Column(
                    children: List.generate(productList?.length ?? 0, (index) {
                      return  GestureDetector(
                        onTap: () {
                          context.pushRoute(InventoryDetailsAdminRoute(data: productList?[index]));
                        },
                        child: InventoryItem(title: productList?[index].name ?? '', quantity: int.parse(productList?[index].totalQuantity.toString() ?? "0") ));
                    },),
                  )
                ],
              ),
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  title: l10n.add,
                  onPressed: () {
                    context.pushRoute(InventoryDetailsAdminRoute());
                  },
                ),
              ),
            )
          ],
        );
      }
    );
  }
}