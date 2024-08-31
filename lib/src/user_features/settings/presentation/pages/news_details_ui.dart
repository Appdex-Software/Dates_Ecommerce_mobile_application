import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/news/data/models/news_dto/news_data.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class NewsDetailsUi extends StatelessWidget {
  const NewsDetailsUi({super.key, this.newsData});
  final NewsData? newsData;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return CustomScrollView(
      slivers: [
        CustomSilverAppBar(
          image: newsData?.image == null
              ? null
              : Image.network(newsData?.image ?? ''),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                gapH12,
                Text(
                  newsData?.subject ?? '',
                  style: theme.bodySmall,
                ),
                gapH20,
                LinearGradientContainer(
                    child: Padding(
                  padding: EdgeInsets.only(
                      left: 3.sw, right: 3.sw, bottom: 5.sh, top: 2.sh),
                  child: Text(
                    newsData?.body ?? '',
                    style: theme.bodySmall,
                  ),
                )),
                const SizedBox(
                  height: 4000,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
