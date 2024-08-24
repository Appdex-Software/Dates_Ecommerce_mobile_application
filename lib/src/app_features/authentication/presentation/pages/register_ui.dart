import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/widgets/widgets.dart';

class RegisterUi extends StatefulWidget {
  const RegisterUi({super.key});

  @override
  State<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends State<RegisterUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 5.2.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinearGradientContainer(
            borderRadius: const BorderRadius.only(
                topLeft: AppSizes.radius20, bottomRight: AppSizes.radius40),
            child: Padding(
              padding: EdgeInsets.only(
                  left: 3.sw, right: 3.sw, top: 2.sh, bottom: 4.sh),
              child: Text(
                l10n.afterReceivingYourApplicationWeWillNotifyYouWhenYourApplicationToJoinUsIsAccepted,
                style: theme.labelLarge,
              ),
            ),
          ),
          gapH32,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: l10n.nameAssociationName,
          ),
          gapH20,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: l10n.email,
          ),
          gapH20,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: l10n.address,
          ),
          gapH20,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: l10n.phoneNumber,
          ),
          gapH20,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: l10n.password,
          ),
          gapH20,
          CustomTextField(
            keyboardType: TextInputType.name,
            hint: "${l10n.additionalInformation} (${l10n.optional})",
          ),
          gapH20,
          GestureDetector(
              onTap: () {
                context.router.maybePop();
              },
              child: Text(l10n.logIntoExistingAccount,
                  style: theme.displayButton)),
          gapH16,
          Center(
              child: CustomButton(
            title: l10n.submit,
          ))
        ],
      ),
    );
  }
}
