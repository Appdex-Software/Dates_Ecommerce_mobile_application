import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/home/presentation/pages/home_admin_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class HomeAdminPage extends StatefulWidget {
  const HomeAdminPage({super.key});

  @override
  State<HomeAdminPage> createState() => _HomeAdminPageState();
}

class _HomeAdminPageState extends State<HomeAdminPage> {
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
        mobile: const HomeAdminUi(),
        tablet: const HomeAdminUi(),
        desktop: const HomeAdminUi(),
      ),
    );
  }
}
