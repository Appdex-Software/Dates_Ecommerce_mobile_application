import 'package:date_farm/src/user_features/settings/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class UserOrderUi extends StatefulWidget {
  const UserOrderUi({super.key});

  @override
  State<UserOrderUi> createState() => _UserOrderUiState();
}

class _UserOrderUiState extends State<UserOrderUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return LinearGradientContainer(
      listOfColors: [theme.greenChalk, theme.white],
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
          children: const [OrderItem()],
        ),
      ),
    );
  }
}
