import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class NewsDetailsUi extends StatefulWidget {
  const NewsDetailsUi({super.key});

  @override
  State<NewsDetailsUi> createState() => _NewsDetailsUiState();
}

class _NewsDetailsUiState extends State<NewsDetailsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return CustomScrollView(
      slivers: [
        const CustomSilverAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH12,
                Text(
                  l10n.newDetails,
                  style: theme.bodySmall,
                ),
                gapH20,
                LinearGradientContainer(
                    child: Padding(
                  padding: EdgeInsets.only(
                      left: 3.sw, right: 3.sw, bottom: 5.sh, top: 2.sh),
                  child: Text(
                    "تم زراعة 30 شجرة جديدة في منطقة جديدة ",
                    style: theme.bodySmall,
                  ),
                ))
              ],
            ),
          ),
        )
      ],
    );
  }
}
