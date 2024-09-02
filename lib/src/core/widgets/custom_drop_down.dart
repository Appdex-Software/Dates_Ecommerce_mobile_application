import 'package:date_farm/src/core/themes/app_themes.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({super.key, required this.items, required this.onChanged, this.onTap, this.value, required this.hint});
  final List<DropdownMenuItem> items;
  final void Function(dynamic)? onChanged;
  final void Function()? onTap;
  final dynamic value;
  final String hint;
  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: widget.items,
      decoration:InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: widget.hint,
          
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
      onChanged: widget.onChanged,
      hint: Text(widget.hint,),
      value: widget.value,      
    );
  }
}