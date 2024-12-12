import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../admin_features/posts/presentation/pages/admin_add_post_ui.dart';
import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class ProductReportPage extends StatelessWidget {
  const ProductReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Scaffold(
      appBar: TransparentAppBar(
        elevation: 0,
        color: theme.greenChalk,
        title: Text(l10n.newPost),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const AdminAddPostUi(),
        tablet: const AdminAddPostUi(),
        desktop: const AdminAddPostUi(),
      ),
    );
  }
}
