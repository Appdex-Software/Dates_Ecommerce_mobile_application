import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/app_features/authentication/domain/entities/user_authentication_error_entity.dart';
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
            Icon(
              Icons.info_outline,
              size: 10.sw,
            ),
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

showErrorUserAlert(
    BuildContext context, UserAuthenticationErrorEntity? userError) async {
  return showDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      final (theme, l10n) = appSettingsRecord(context);
      log((userError?.error?.phoneNumber?.isNotEmpty).toString());
      return AlertDialog(
        backgroundColor: theme.whiteColor,
        scrollable: true,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.info_outline,
              size: 10.sw,
            ),
            Text(
              l10n.youHaveToErrorInOneOfTheFollowingFields,
              textAlign: TextAlign.center,
              style: theme.headlineSmall.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            userError?.error?.email != null
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${l10n.email}: ",
                        style: theme.bodySmall,
                      ),
                      gapW12,
                      Expanded(
                        child: Text(
                          userError?.error?.email?[0] ?? '',
                          style: theme.bodySmall,
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
            userError?.error?.username != null
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${l10n.username}: ",
                        style: theme.bodySmall,
                      ),
                      gapW12,
                      Expanded(
                        child: Text(
                          userError?.error?.username?[0] ?? '',
                          style: theme.bodySmall,
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
            userError?.error?.phoneNumber != null
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${l10n.phoneNumber}: ",
                        style: theme.bodySmall,
                      ),
                      gapW12,
                      Expanded(
                        child: Text(
                          userError?.error?.phoneNumber?[0] ?? '',
                          style: theme.bodySmall,
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
            userError?.error?.password != null
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${l10n.password}: ",
                        style: theme.bodySmall,
                      ),
                      gapW12,
                      Expanded(
                        child: Text(
                          userError?.error?.password?[0] ?? '',
                          style: theme.bodySmall,
                        ),
                      )
                    ],
                  )
                : const SizedBox(),
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
