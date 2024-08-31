import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/settings/presentation/pages/news_ui.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: const TransparentAppBar(
      //   color: Colors.transparent,
      // ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const NewsUi(),
        tablet: const NewsUi(),
        desktop: const NewsUi(),
      ),
    );
  }
}
