// ignore_for_file: use_build_context_synchronously
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/app_features/authentication/data/models/register_body/register_body.dart';
import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/widgets/widgets.dart';
import '../widget/phone_field.dart';

class RegisterUi extends ConsumerStatefulWidget {
  const RegisterUi({super.key});

  @override
  ConsumerState<RegisterUi> createState() => _RegisterUiState();
}

class _RegisterUiState extends ConsumerState<RegisterUi> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  PhoneNumberInputController? phoneController;
  final formKey = GlobalKey<FormState>();

  TextEditingController zipCodeController = TextEditingController();
  bool isPasswordField = true;

  @override
  void initState() {
    phoneController = PhoneNumberInputController(context);
    phoneController?.phoneNumber = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final authNotifier = ref.watch(authUiServiceProvider.notifier);
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 5.2.sw, right: 5.2.sw, bottom: 4.sh),
      child: Form(
        key: formKey,
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
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.nameAssociationName,
              controller: nameController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.username,
              controller: usernameController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.email,
              controller: emailController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.city,
              controller: cityController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.country,
              controller: countryController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              hint: l10n.street,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              controller: streetController,
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              hint: l10n.zipCode,
              controller: zipCodeController,
            ),
            gapH20,
            PhoneField(
              onPhoneChanged: (val) {
                setState(() {});
                authNotifier.setPhoneNumber(phoneController?.phoneNumber);
              },
              controller:
                  phoneController ?? PhoneNumberInputController(context),
            ),
            gapH20,
            CustomTextField(
              keyboardType: TextInputType.name,
              hint: l10n.password,
              controller: passwordController,
              isPasswordField: isPasswordField,
              validator: (value) {
                if (value!.isEmpty) {
                  return l10n.emptyValidationError;
                }
                return null;
              },
              suffix: IconButton(
                icon: Icon(
                    isPasswordField ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  isPasswordField = !isPasswordField;
                  setState(() {});
                },
              ),
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
              onPressed: () async {
                if (phoneController?.phoneNumber.isEmpty ?? false) {
                  AppToast.errorToast(l10n.phoneNumberIsRequired, context);
                } else {
                  if (formKey.currentState!.validate()) {
                    final registerBody = RegisterBody(
                        city: cityController.text,
                        country: countryController.text,
                        email: emailController.text,
                        isActive: "true",
                        name: nameController.text,
                        password: passwordController.text,
                        phoneNumber:
                            phoneController?.fullPhoneNumber.toString(),
                        role: 'customer',
                        street: streetController.text,
                        username: usernameController.text,
                        zipCode: zipCodeController.text);
                    await authNotifier.registerUser(registerBody: registerBody);
                    if (authNotifier.getUserErrorEntity()?.statusCode == 201) {
                      AppToast.successToast(
                          l10n.youHaveBeenRegisteredSuccessfully, context);
                      context.router.maybePop();
                    } else {
                      showErrorUserAlert(
                          context, authNotifier.getUserErrorEntity());
                    }
                  }
                }
              },
            ))
          ],
        ),
      ),
    );
  }
}
