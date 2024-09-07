import 'package:extended_phone_number_input/consts/enums.dart';
import 'package:extended_phone_number_input/phone_number_controller.dart';
import 'package:extended_phone_number_input/phone_number_input.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/themes/app_themes.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    super.key,
    this.onPhoneChanged,
    required this.controller,
    this.title, this.initialValue,
  });
  final Function(String?)? onPhoneChanged;
  final PhoneNumberInputController controller;
  final String? title;
  final String? initialValue;
  @override
  Widget build(BuildContext context) {
    final (_, l10n) = appSettingsRecord(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PhoneNumberInput(
          initialCountry: 'SA',
          locale: 'ar',
          initialValue: initialValue,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).borderColor.withOpacity(0.2),
            ),
          ),
          hint: l10n.phoneNumber,
          countryListMode: CountryListMode.bottomSheet,
          controller: controller,
          allowPickFromContacts: false,
          onChanged: onPhoneChanged,
          contactsPickerPosition: ContactsPickerPosition.suffix,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).borderColor.withOpacity(0.2),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).borderColor.withOpacity(0.2),
            ),
          ),
        ),

        //539418967
        // 2466988744
      ],
    );
  }
}
