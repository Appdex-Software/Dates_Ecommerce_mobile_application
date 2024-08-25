import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/news/data/models/news_dto/news_data.dart';
import 'package:date_farm/src/user_features/settings/presentation/pages/news_details_ui.dart';
import 'package:flutter/material.dart';
import '../core/constants/adaptive.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key, this.newsData});
  final NewsData? newsData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: const TransparentAppBar(
      //   color: Colors.transparent,
      // ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile:  NewsDetailsUi(newsData: newsData,),
        tablet:  NewsDetailsUi(newsData: newsData),
        desktop:  NewsDetailsUi(newsData: newsData),
      ),
    );
  }
}
