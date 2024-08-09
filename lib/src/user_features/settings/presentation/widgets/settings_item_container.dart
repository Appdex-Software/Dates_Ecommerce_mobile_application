import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class SettingsItemContainer extends StatelessWidget {
  const SettingsItemContainer({super.key, required this.icon, required this.title});

  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(3.sw),
        margin: EdgeInsets.only(bottom: 3.sw),
        decoration: BoxDecoration(
          border: Border.all(
            color: theme.black.withOpacity(0.2)
          )
        ),
        child: Row(
          children: [
            Icon(icon,size: 7.sw,),
            gapW20,
            Text(title,style: theme.titleLarge,)
          ],
        ),
      ),
    );
  }
}