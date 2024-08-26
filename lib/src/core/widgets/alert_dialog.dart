import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../constants/app_sizes.dart';

showSuccessAlert(BuildContext context, String text) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      final (theme, l10n) = appSettingsRecord(context);

      return AlertDialog(
        backgroundColor: theme.whiteColor,
        scrollable: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.info_outline,size: 10.sw,),
            Text(
              text,
              textAlign: TextAlign.center,
              style: theme.headlineSmall.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              CustomButton(
                width: double.infinity,
                title: l10n.confirm,
                titleStyle: theme.bodyMedium.copyWith(color: theme.whiteColor),
                backgroundColor: theme.greenChalk,
                onPressed: () {
                  context.router.maybePop();
                },
              ),
            ],
          )
        ],
      );
    },
  );
}