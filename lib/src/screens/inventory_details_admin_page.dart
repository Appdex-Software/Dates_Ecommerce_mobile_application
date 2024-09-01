import 'package:date_farm/src/admin_features/inventory/presentation/pages/inventory_details_ui.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';
import '../user_features/store/data/models/date_product_dto/date_data.dart';

@RoutePage()
class InventoryDetailsAdminPage extends StatelessWidget {
  const InventoryDetailsAdminPage({super.key, this.data});
  final DateData? data;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      appBar:  TransparentAppBar(
        title: Text(l10n.inventory),
       elevation: 0,
      color: theme.greenChalk,
      ),
      backgroundColor: Colors.transparent,
      body: CustomAdaptiveScreen.builder(
        mobile: InventoryDetailsUi(date: data,),
        tablet: InventoryDetailsUi(date: data,),
        desktop: InventoryDetailsUi(date: data,),
      ),
    );
  }
}
