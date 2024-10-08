import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../user_features/store/data/models/date_product_dto/date_data.dart';
import '../user_features/store/presentation/pages/date_details_ui.dart';
import '../user_features/store/presentation/widgets/widgets.dart';

@RoutePage()
class DateDetailsPage extends StatelessWidget {
  const DateDetailsPage({super.key, required this.dateData});
  final DateData dateData;
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Scaffold(
      appBar: TransparentAppBar(
        color: theme.greenChalk,
      ),
      bottomNavigationBar: BottomNavigationDateDetails(dateData: dateData),
      backgroundColor: Colors.white,
      body: CustomAdaptiveScreen.builder(
        mobile: DateDetailsUi(
          data: dateData,
        ),
        tablet: DateDetailsUi(
          data: dateData,
        ),
        desktop: DateDetailsUi(
          data: dateData,
        ),
      ),
    );
  }
}
