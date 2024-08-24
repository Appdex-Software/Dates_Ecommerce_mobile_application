import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import 'widgets.dart';

class BottomNavigationDateDetails extends StatefulWidget {
  const BottomNavigationDateDetails({super.key});

  @override
  State<BottomNavigationDateDetails> createState() =>
      _BottomNavigationDateDetailsState();
}

class _BottomNavigationDateDetailsState
    extends State<BottomNavigationDateDetails> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return BottomAppBar(
      color: theme.white,
      child: SizedBox(
        height: 20.sh,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomButton(
              title: l10n.add,
              onPressed: () {},
            ),
            const DateItemQuantityCounter(
              buttonAspectRatio: 1.5,
            )
          ],
        ),
      ),
    );
  }
}
