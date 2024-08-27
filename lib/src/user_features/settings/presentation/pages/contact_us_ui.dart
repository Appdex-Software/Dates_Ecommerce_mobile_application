import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class ContactUsUi extends StatefulWidget {
  const ContactUsUi({super.key});

  @override
  State<ContactUsUi> createState() => _ContactUsUiState();
}

class _ContactUsUiState extends State<ContactUsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.phone,
            style: theme.bodySmall,
          ),
          gapH12,
          LinearGradientContainer(
              child: Padding(
            padding: EdgeInsets.only(
                left: 2.sw, right: 2.sw, top: 2.sh, bottom: 5.sh),
            child: const Text("من داخل السعودية"
                "\n01212541151515"
                "\nمن خارج السعودية"
                "\n23123123123123"),
          )),
          gapH12,
          Text(
            l10n.address,
            style: theme.bodySmall,
          ),
          gapH12,
          LinearGradientContainer(
              child: Padding(
            padding: EdgeInsets.only(
                left: 2.sw, right: 2.sw, top: 2.sh, bottom: 5.sh),
            child: const Text("5 شارع المدينة السعودية "),
          )),
          gapH12,
          Text(
            l10n.phone,
            style: theme.bodySmall,
          ),
          gapH12,
          LinearGradientContainer(
              child: Padding(
            padding: EdgeInsets.only(
                left: 2.sw, right: 2.sw, top: 2.sh, bottom: 5.sh),
            child: const Text("zsdas@gmail.com"),
          )),
          gapH12,
        ],
      ),
    );
  }
}
