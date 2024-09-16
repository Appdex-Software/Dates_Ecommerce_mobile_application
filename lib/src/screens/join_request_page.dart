import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/user_modification/presentation/pages/join_request_ui.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/routes/app_router.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class JoinRequestPage extends StatelessWidget {
  JoinRequestPage({super.key});
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      appBar: TransparentAppBar(
        color: Colors.transparent,
        title: Text(l10n.joinRequests),
        centerTitle: true,
        backButton: IconButton(
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.menu)),
      ),
      bottomNavigationBar: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(4.sw),
            child: CustomButton(
              title: l10n.add,
              onPressed: () {
                context.router.push(JoinRequestDetailsRoute());
              },
            ),
          ),
        ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const JoinRequestUi(),
        tablet: const JoinRequestUi(),
        desktop: const JoinRequestUi(),
      ),
    );
  }
}
