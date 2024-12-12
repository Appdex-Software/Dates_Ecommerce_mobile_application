import 'package:date_farm/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
      required this.items,
      required this.onChanged,
      this.onTap,
      this.value,
      required this.hint,
      this.validator});
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final dynamic value;
  final String hint;
  final String? Function(dynamic)? validator;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return DropdownButtonFormField(
      items: items,
      validator: validator,
      decoration: InputDecoration(
        label: Text(hint,style: theme.bodyMedium,),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintText: hint,
        errorMaxLines: 3,
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).redApple,
            style: BorderStyle.solid,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).borderColor.withOpacity(0.2),
          ),
        ),
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
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: FlutterFlowTheme.of(context).borderColor.withOpacity(0.4),
          ),
        ),
      ),
      onChanged: onChanged,
      hint: Text(
        hint,
      ),
      value: value,
    );
  }
}
