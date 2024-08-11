import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/helpers/assets_helper.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
  final (theme, l10n) = appSettingsRecord(context);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 5.sh),
                child: Image.asset(AssetsHelper.logoImagePng,height: 50.sw,),
              ),
            ),
            gapH80,
             CustomTextField(keyboardType: TextInputType.name,hint: l10n.email,),
            gapH12,
             CustomTextField(keyboardType: TextInputType.name,hint: l10n.password,),
             gapH16,
             GestureDetector(child: Text(l10n.forgotYourPassword,style: theme.displayButton)),
             gapH8,
             GestureDetector(
              onTap: () {
                context.router.push(const RegisterRoute());
              },
              child: Text(l10n.registerNewAccount,style: theme.displayButton)),
             gapH16,
             Center(child: CustomButton(
              title: l10n.enter,
              onPressed: () {
                context.router.replace(const HomeUserRoute());
              },
             ))
          ],
        ),
      ),
    );
  }
}