import 'package:date_farm/src/admin_features/inventory/presentation/widgets/category_availability_container.dart';
import 'package:date_farm/src/admin_features/inventory/presentation/widgets/widgets.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class InventoryAdminUi extends StatefulWidget {
  const InventoryAdminUi({super.key});

  @override
  State<InventoryAdminUi> createState() => _InventoryAdminUiState();
}

class _InventoryAdminUiState extends State<InventoryAdminUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CategoryAvailabilityContainer(),
          gapH20,
          Column(
            children: [
              InventoryItem(title: "title", quantity: 0)
            ],
          )
        ],
      ),
    );
  }
}