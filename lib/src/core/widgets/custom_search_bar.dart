import 'package:flutter/material.dart';

import '../themes/app_themes.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar(
      {super.key,
      required this.hint,
      required this.onSearch,
      required this.controller});
  final String hint;
  final void Function(String)? onSearch;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).whiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: FlutterFlowTheme.of(context).grey,
        ),
        boxShadow: [
          BoxShadow(
            color: FlutterFlowTheme.of(context).grey,
            offset: const Offset(0, 4),
            blurRadius: 8,
          )
        ],
      ),
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 16, right: 12),
            child: Icon(Icons.search),
          ),
          hintText: hint,
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(left: 16),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).grey,
            ),
          ),
        ),
        onChanged: onSearch,
      ),
    );
  }
}
