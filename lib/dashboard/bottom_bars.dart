// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../src/core/constants/app_sizes.dart';

class BottomBars extends StatelessWidget {
  const BottomBars({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
    required this.isActive,
  });
  final IconData icon;
  final String title;
  final bool isActive;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return Column(
      children: [
        IconButton(
            icon: Icon(icon),
            onPressed: onTap,
            color:
                isActive ? theme.black : theme.secondaryText.withOpacity(0.5)),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: theme.bodySmall.copyWith(
              color:
                  isActive ? theme.black : theme.secondaryText.withOpacity(0.5),
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
