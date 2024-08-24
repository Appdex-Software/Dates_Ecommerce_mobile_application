import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/helpers/assets_helper.dart';
import 'package:date_farm/src/core/helpers/session_manager.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginUi extends ConsumerStatefulWidget {
  const LoginUi({super.key});

  @override
  ConsumerState<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends ConsumerState<LoginUi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordField = true;
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authService = ref.watch(authUiServiceProvider.notifier);
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8.sw),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 5.sh),
                child: Image.asset(
                  AssetsHelper.logoImagePng,
                  height: 50.sw,
                ),
              ),
            ),
            gapH80,
            CustomTextField(
              keyboardType: TextInputType.name,
              hint: l10n.email,
              controller: emailController,
            ),
            gapH12,
            CustomTextField(
              keyboardType: TextInputType.name,
              hint: l10n.password,
              controller: passwordController,
              isPasswordField: isPasswordField,
              suffix: IconButton(
                icon: Icon(
                    isPasswordField ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  isPasswordField = !isPasswordField;
                  setState(() {});
                },
              ),
            ),
            gapH16,
            GestureDetector(
                child:
                    Text(l10n.forgotYourPassword, style: theme.displayButton)),
            gapH8,
            GestureDetector(
                onTap: () {
                  context.router.push(const RegisterRoute());
                },
                child:
                    Text(l10n.registerNewAccount, style: theme.displayButton)),
            gapH16,
            Center(
                child: AsyncValueWidget(
                    value: ref.watch(authUiServiceProvider),
                    data: (_) {
                      return CustomButton(
                        title: l10n.enter,
                        onPressed: () async {
                          FocusManager.instance.primaryFocus?.unfocus();

                          if (emailController.text.isEmpty ||
                              passwordController.text.isEmpty) {
                            AppToast.errorToast(
                                l10n.pleaseEnterYourEmailAndPassword, context);
                            return;
                          }
                          await authService.loginUser(
                              email: emailController.text,
                              password: passwordController.text);
                          if (authService.getUserEntity() != null &&
                              authService.getUserEntity()?.statusCode == 200) {
                            await sessionManager.setLogin(statue: true);
                            if (context.mounted) {
                              context.router.replace(const HomeUserRoute());
                            }
                          }
                        },
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
