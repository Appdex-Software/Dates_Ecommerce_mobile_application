import 'package:auto_route/auto_route.dart';
import 'package:date_farm/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CloseAlertDialog extends StatelessWidget {
  const CloseAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AlertDialog(
      title: Text(
        l10n.alert,
      ),
      content: Text(
        l10n.doUWantToExitTheApp,
      ),
      actions: [
        TextButton(
            onPressed: () => context.router.maybePop(false),
            child: Text(
              l10n.no,
            )),
        TextButton(
            onPressed: () => SystemNavigator.pop(),
            child: Text(
              l10n.yes,
            )),
      ],
    );
  }
}
