import 'package:date_farm/src/user_features/store/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class DateStoreUi extends StatefulWidget {
  const DateStoreUi({super.key});

  @override
  State<DateStoreUi> createState() => _DateStoreUiState();
}

class _DateStoreUiState extends State<DateStoreUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return CustomScrollView(
      slivers: [
        const CustomSilverAppBar(
          backButton: SizedBox(),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.1.sw, vertical: 2.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.datesProducts,
                  style: theme.bodyMedium,
                ),
                gapH12,
                const DateItemContainer()
              ],
            ),
          ),
        )
      ],
    );
  }
}
