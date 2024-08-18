import 'package:flutter/material.dart';
import '../constants/app_sizes.dart';

showAppBottomSheet(BuildContext context, Widget child) {
  final (theme, _) = appSettingsRecord(context);

  return showModalBottomSheet(
    backgroundColor: theme.whiteColor,
    context: context,
    builder: (context) => child,
    isScrollControlled: true,
    isDismissible: true,
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(33),
        topRight: Radius.circular(33),
      ),
    ),
  );
}
