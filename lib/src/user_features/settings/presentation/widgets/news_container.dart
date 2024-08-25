import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../news/data/models/news_dto/news_data.dart';

class NewsContainer extends StatelessWidget {
  const NewsContainer({super.key, this.data});
  final NewsData? data;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return GestureDetector(
        onTap: () {
          context.router.push(NewsDetailsRoute(newsData: data));
        },
        child: LinearGradientContainer(
            child: Padding(
          padding: EdgeInsets.only(
              left: 3.sw, right: 3.sw, bottom: 5.sh, top: 2.sh),
          child: Text(
            data?.subject ?? '',
            style: theme.bodySmall,
          ),
        )),
      );
  }
}