import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class NewsUi extends StatefulWidget {
  const NewsUi({super.key});

  @override
  State<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends State<NewsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return CustomScrollView(
      slivers: [
        const CustomSilverAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    context.router.push(const NewsDetailsRoute());
                  },
                  child: LinearGradientContainer(
                      child: Padding(
                    padding: EdgeInsets.only(
                        left: 3.sw, right: 3.sw, bottom: 5.sh, top: 2.sh),
                    child: Text(
                      "تم زراعة 30 شجرة جديدة في منطقة جديدة ",
                      style: theme.bodySmall,
                    ),
                  )),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
