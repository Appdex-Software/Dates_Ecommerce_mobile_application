import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/settings/presentation/pages/news_details_ui.dart';
import 'package:flutter/material.dart';
import '../core/constants/adaptive.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class NewsDetailsPage extends StatelessWidget {
  const NewsDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const TransparentAppBar(
        color: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: const NewsDetailsUi(),
        tablet: const NewsDetailsUi(),
        desktop: const NewsDetailsUi(),
      ),
    );
  }
}
