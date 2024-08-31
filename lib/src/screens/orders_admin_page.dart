import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/orders/presentation/pages/orders_admin_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class OrdersAdminPage extends StatefulWidget {
  const OrdersAdminPage({super.key});

  @override
  State<OrdersAdminPage> createState() => _OrdersAdminPageState();
}

class _OrdersAdminPageState extends State<OrdersAdminPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar:  TransparentAppBar(
        color: Colors.transparent,
        
        backButton: IconButton(onPressed: () {
          scaffoldKey.currentState!.openDrawer();
        }, icon: const Icon(Icons.menu)),
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const OrdersAdminUi(),
        tablet: const OrdersAdminUi(),
        desktop: const OrdersAdminUi(),
      ),
    );
  }
}
