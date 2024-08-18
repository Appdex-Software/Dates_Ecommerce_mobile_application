import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({this.iconColor, super.key});
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return InkWell(
        onTap: () {
          // context.router.push(const NotificationRoute());
        },
        child: Icon(Icons.notifications_active,
            color: iconColor ?? theme.dark600));
  }
}
