import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/news/presentation/providers/news_provider.dart';
import 'package:date_farm/src/user_features/settings/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../news/domain/entities/news_entity.dart';

class NewsUi extends ConsumerStatefulWidget {
  const NewsUi({super.key});

  @override
  ConsumerState<NewsUi> createState() => _NewsUiState();
}

class _NewsUiState extends ConsumerState<NewsUi> {
  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        const CustomSilverAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
            child: AsyncValueWidget(
              value: ref.watch(newsServiceProvider),
              data: (NewsEntity? newsEntity) {
                return Column(
                  children: List.generate(newsEntity?.data?.length ?? 0, (index) {
                    return NewsContainer(data: newsEntity?.data?[index],);
                  },),
                );
              }
            )
          ),
        )
      ],
    );
  }
}
