// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/user_modification/data/models/user_modification_dto/user_modification_data.dart';
import 'package:date_farm/src/admin_features/user_modification/presentation/provider/user_modification_provider.dart';
import 'package:date_farm/src/core/constants/constants.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../../l10n/generated/l10n.dart';
import '../../../../app_features/authentication/presentation/widget/phone_field.dart';
import '../../../../core/constants/app_sizes.dart';

class JoinRequestDetailsUi extends ConsumerStatefulWidget {
  const JoinRequestDetailsUi({super.key, this.data});
  final UserModificationData? data;
  @override
  ConsumerState<JoinRequestDetailsUi> createState() =>
      _JoinRequestDetailsUiState();
}

class _JoinRequestDetailsUiState extends ConsumerState<JoinRequestDetailsUi> {
  TextEditingController userFirstNameController = TextEditingController();
  TextEditingController userLastNameController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController userCountryController = TextEditingController();
  TextEditingController userCityController = TextEditingController();
  TextEditingController userStreetController = TextEditingController();
  TextEditingController userZipCodeController = TextEditingController();
  TextEditingController userEmailController = TextEditingController();
  PhoneNumberInputController? phoneController;
  String? newPhone;
  String? currentCustomType;
  String? currentRole;
  final formKey = GlobalKey<FormState>();
  @override
  void initState() {
    log(widget.data?.registrationStatus?.toString() ?? '');
    newPhone = widget.data?.phoneNumber;
    currentCustomType = widget.data?.customerType?.isEmpty ?? true
        ? null
        : widget.data?.customerType;
    currentRole = widget.data?.role?.isEmpty ?? true ? null : widget.data?.role;
    widget.data?.firstName != null
        ? (userFirstNameController.text = widget.data?.firstName ?? '')
        : null;
    widget.data?.lastName != null
        ? (userLastNameController.text = widget.data?.lastName ?? '')
        : null;
    widget.data?.username != null
        ? (userNameController.text = widget.data?.username ?? '')
        : null;
    widget.data?.city != null
        ? (userCityController.text = widget.data?.city ?? '')
        : null;
    widget.data?.country != null
        ? (userCountryController.text = widget.data?.country ?? '')
        : null;
    widget.data?.street != null
        ? (userStreetController.text = widget.data?.street ?? '')
        : null;
    widget.data?.zipCode != null
        ? (userZipCodeController.text = widget.data?.zipCode ?? '')
        : null;
    widget.data?.email != null
        ? (userEmailController.text = widget.data?.email ?? '')
        : null;

    super.initState();
  }

  void sendData(String registerationData) async {
    final userModificationService =
        ref.watch(userModificationServiceProvider.notifier);

    if (formKey.currentState?.validate() ?? false) {
      final body = UserModificationData(
        city: userCityController.text,
        country: userCountryController.text,
        customerType: currentCustomType,
        role: currentRole,
        email: userEmailController.text,
        firstName: userFirstNameController.text,
        lastName: userLastNameController.text,
        name: "${userFirstNameController.text} ${userLastNameController.text}",
        phoneNumber: newPhone,
        dateJoined: widget.data?.dateJoined,
        isActive: widget.data?.isActive,
        isStaff: widget.data?.isStaff,
        isSuperuser: widget.data?.isSuperuser,
        lastLogin: widget.data?.lastLogin,
        registrationDatetime: widget.data?.registrationDatetime,
        registrationStatus: registerationData,
        street: userStreetController.text,
        username: userNameController.text,
        zipCode: userZipCodeController.text,
      );
      widget.data?.id == null
          ? await userModificationService.addUser(body: body)
          : await userModificationService.patchUser(
              body: body.copyWith(id: widget.data?.id));
      if (userModificationService
                  .getUserAuthenticationErrorEntity()
                  ?.statusCode ==
              201 ||
          userModificationService
                  .getUserAuthenticationErrorEntity()
                  ?.statusCode ==
              200) {
        await userModificationService.getUser();
        if (context.mounted) {
          context.router.maybePop();
          widget.data?.id == null
              ? AppToast.successToast(
                  AppLocalizations.of(context).theUserHasBeenAddedSuccessfully,
                  context)
              : AppToast.successToast(
                  AppLocalizations.of(context)
                      .theUserDataHasBeenEditedSuccessfully,
                  context);
          setState(() {});
        }
      } else {
        context.mounted
            ? showErrorUserAlert(context,
                userModificationService.getUserAuthenticationErrorEntity())
            : null;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Form(
      key: formKey,
      child: LinearGradientContainer(
          borderRadius: BorderRadius.zero,
          listOfColors: [theme.greenChalk, theme.white],
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
              children: [
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.userFirstName,
                  controller: userFirstNameController,
                  onChanged: (p0) {
                    userFirstNameController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userFirstNameController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.userLastName,
                  controller: userLastNameController,
                  onChanged: (p0) {
                    userLastNameController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userLastNameController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.username,
                  controller: userNameController,
                  onChanged: (p0) {
                    userNameController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userNameController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.email,
                  controller: userEmailController,
                  onChanged: (p0) {
                    userEmailController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userEmailController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                PhoneField(
                  initialValue: widget.data?.phoneNumber,
                  onPhoneChanged: (val) {
                    newPhone = val;
                    setState(() {});
                  },
                  controller:
                      phoneController ?? PhoneNumberInputController(context),
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.country,
                  controller: userCountryController,
                  onChanged: (p0) {
                    userCountryController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userCountryController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.city,
                  controller: userCityController,
                  onChanged: (p0) {
                    userCityController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userCityController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.street,
                  controller: userStreetController,
                  onChanged: (p0) {
                    userStreetController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userStreetController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomTextField(
                  keyboardType: TextInputType.name,
                  hint: l10n.zipCode,
                  controller: userZipCodeController,
                  onChanged: (p0) {
                    userZipCodeController.text = p0 ?? '';
                    setState(() {});
                  },
                  validator: (p0) {
                    if (userZipCodeController.text.isEmpty) {
                      return l10n.emptyValidationError;
                    }
                    return null;
                  },
                ),
                gapH16,
                CustomDropDown(
                    value: currentRole,
                    validator: (p0) {
                      if (currentRole?.isEmpty ?? true) {
                        return l10n.emptyValidationError;
                      }
                      return null;
                    },
                    onChanged: (value) {
                      currentRole = value;
                      setState(() {});
                    },
                    items: List.generate(
                      userRole.length,
                      (index) {
                        return DropdownMenuItem(
                            value: userRole[index],
                            child: Text(
                              userRole[index],
                              style: theme.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w500),
                            ));
                      },
                    ),
                    hint: l10n.role),
                currentRole != null
                    ? Column(
                        children: [
                          gapH16,
                          CustomDropDown(
                              validator: (p0) {
                                if (currentCustomType?.isEmpty ?? true) {
                                  return l10n.emptyValidationError;
                                }
                                return null;
                              },
                              value: currentCustomType,
                              onChanged: (value) {
                                currentCustomType = value;
                                setState(() {});
                              },
                              items: List.generate(
                                customerType.length,
                                (index) {
                                  return DropdownMenuItem(
                                      value: customerType[index],
                                      child: Text(
                                        customerType[index],
                                        style: theme.bodyMedium.copyWith(
                                            fontWeight: FontWeight.w500),
                                      ));
                                },
                              ),
                              hint: l10n.customerType),
                        ],
                      )
                    : const SizedBox(),
                gapH16,
                Padding(
                  padding: EdgeInsets.only(bottom: 5.sh),
                  child: AsyncValueWidget(
                      value: ref.watch(userModificationServiceProvider),
                      data: (_) {
                        return widget.data?.registrationStatus ==
                                "not_registered"
                            ? Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    child: CustomButton(
                                        title: l10n.accept,
                                        onPressed: () {
                                          sendData("registered");
                                        }),
                                  ),
                                  gapW20,
                                  Expanded(
                                    child: CustomButton(
                                        backgroundColor: theme.redApple,
                                        title: l10n.decline,
                                        onPressed: () {
                                          sendData("rejected");
                                        }),
                                  ),
                                ],
                              )
                            : CustomButton(
                                title: l10n.confirm,
                                onPressed: () => sendData("registered"));
                      }),
                ),
              ],
            ),
          )),
    );
  }
}
