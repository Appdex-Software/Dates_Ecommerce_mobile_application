import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final (_,l10n) = appSettingsRecord(context);
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: const Icon(Icons.inventory),
              title:  Text(l10n.inventory),
              onTap: () {
                context.router.push(InventoryAdminRoute());
              },
            ),
            ListTile(
              leading: const Icon(Icons.delivery_dining),
              title:  Text(l10n.orders),
              onTap: () {
                context.router.push(const OrdersAdminRoute());
              },
            ),
            ListTile(
              leading: const Icon(Icons.autorenew),
              title:  Text(l10n.ordersInProgress),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.group_add),
              title:  Text(l10n.joinRequests),
              onTap: () {
                context.router.push(JoinRequestRoute());
              },
            ),
            ListTile(
              leading: const Icon(Icons.post_add),
              title:  Text(l10n.newPost),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
