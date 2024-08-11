import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/settings/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class SettingsUi extends StatefulWidget {
  const SettingsUi({super.key});

  @override
  State<SettingsUi> createState() => _SettingsUiState();
}

class _SettingsUiState extends State<SettingsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return LinearGradientContainer(
      listOfColors: [theme.greenChalk, theme.white],
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
          children: [
            SettingsItemContainer(icon: Icons.newspaper, title: l10n.news,onTap: () {
              context.router.push(const NewsRoute());
            },),
            SettingsItemContainer(icon: Icons.phone, title: l10n.contactUs,onTap: () {
              context.router.push(const ContactUsRoute());
            },),
            SettingsItemContainer(icon: Icons.store, title: l10n.orders,onTap: () {
              context.router.push(const UserOrderRoute());
            },),
          ],
        ),
      ),
    );
  }
}