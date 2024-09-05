import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/orders/presentation/pages/order_admin_details_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';
import '../user_features/order/data/models/order_user_dto/order_user_data.dart';

@RoutePage()
class OrderDetailsAdminPage extends StatelessWidget {
  const OrderDetailsAdminPage(
      {super.key, required this.data, required this.productDetailsIndex});
  final OrderUserData? data;
  final int productDetailsIndex;

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Scaffold(
      appBar: TransparentAppBar(
        elevation: 0,
        color: theme.greenChalk,
      ),
      backgroundColor: Colors.transparent,
      body: CustomAdaptiveScreen.builder(
        mobile: OrderAdminDetailsUi(
          data: data,
          productDetailsIndex: productDetailsIndex,
        ),
        tablet: OrderAdminDetailsUi(
          data: data,
          productDetailsIndex: productDetailsIndex,
        ),
        desktop: OrderAdminDetailsUi(
          data: data,
          productDetailsIndex: productDetailsIndex,
        ),
      ),
    );
  }
}
