
import 'package:date_farm/src/admin_features/inventory/presentation/providers/inventory_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class CategoryAvailabilityContainer extends ConsumerStatefulWidget {
  const CategoryAvailabilityContainer({super.key});

  @override
  ConsumerState<CategoryAvailabilityContainer> createState() =>
      _CategoryAvailabilityContainerState();
}

class _CategoryAvailabilityContainerState
    extends ConsumerState<CategoryAvailabilityContainer> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final inventoryService = ref.watch(inventoryServiceProvider.notifier);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            if(inventoryService.getIsAvailable() == null) {
              inventoryService.setIsAvailable(true);
            } else {
              inventoryService.setIsAvailable(null);
            }
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(2.sw),
            margin: EdgeInsets.only(left: 2.sw),
            decoration: BoxDecoration(
                color: inventoryService.getIsAvailable() ?? false
                    ? theme.redApple
                    : theme.greenChalk,
                borderRadius: AppSizes.borderRadius32),
            child: Text(
              l10n.available,
              style: theme.bodySmall.copyWith(color: theme.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            if(inventoryService.getIsAvailable() == null) {
              inventoryService.setIsAvailable(false);
            } else {
              inventoryService.setIsAvailable(null);
            }
            setState(() {});
          },
          child: Container(
            padding: EdgeInsets.all(2.sw),
            margin: EdgeInsets.only(left: 2.sw),
            decoration: BoxDecoration(
                color: !(inventoryService.getIsAvailable() ?? true)
                    ? theme.redApple
                    : theme.greenChalk,
                borderRadius: AppSizes.borderRadius32),
            child: Text(
              l10n.unavailable,
              style: theme.bodySmall.copyWith(color: theme.white),
            ),
          ),
        ),
      ],
    );
  }
}
