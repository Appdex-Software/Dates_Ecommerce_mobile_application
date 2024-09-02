import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../themes/app_themes.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.title,
    this.validator,
    this.maxLines,
    this.readOnly,
    this.isEnabled,
    this.textCapitalization,
    this.controller,
    required this.keyboardType,
    this.icon,
    this.focusNode,
    this.onDone,
    this.isPasswordField = false,
    this.onTap,
    this.hint,
    this.length,
    this.inputFormatters,
    this.prefix,
    this.label,
    this.width,
    this.suffix,
  });
  final TextEditingController? controller;
  final Widget? prefix;
  final String? hint;
  final Function(String?)? onChanged;
  final Function(String?)? onDone;
  final List<TextInputFormatter>? inputFormatters;
  final String? title;
  final TextInputType keyboardType;
  final IconData? icon;
  final Function? onTap;
  final bool? readOnly;
  final bool? isEnabled;
  final bool? isPasswordField;
  final String? Function(String?)? validator;
  final int? length;
  final int? maxLines;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;
  final String? label;
  final double? width;
  final Widget? suffix;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 56.h,
      width: widget.width ?? double.infinity,
      child: TextFormField(
        scrollPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        inputFormatters: widget.inputFormatters,
        onChanged: widget.onChanged,
        controller: widget.controller,
        onFieldSubmitted:
            widget.onDone != null ? widget.onDone as Function(String) : null,
        enabled: widget.isEnabled ?? true,
        keyboardType: widget.keyboardType,
        style: TextStyle(
          color: FlutterFlowTheme.of(context).black,
          fontWeight: FontWeight.w500,
        ),
        maxLines: widget.maxLines ?? 1,
        maxLength: widget.length,
        onTap: widget.onTap != null ? widget.onTap as Function() : null,
        readOnly: widget.readOnly ?? false,
        validator: widget.validator,
        obscureText: widget.isPasswordField!
            ? _showPassword
                ? true
                : false
            : false,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.label,
          hintText: widget.hint,
          suffixIcon: widget.isPasswordField!
              ? IconButton(
                  icon: Icon(
                    _showPassword ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () =>
                      setState(() => _showPassword = !_showPassword),
                )
              : widget.suffix,
          prefixIcon: widget.prefix,
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
      ),
    );
  }
}
