import 'package:date_farm/src/admin_features/user_modification/data/models/user_modification_dto/user_modification_data.dart';
import 'package:date_farm/src/admin_features/user_modification/presentation/pages/join_request_details_ui.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import '../core/constants/adaptive.dart';
import '../core/constants/app_sizes.dart';
import '../core/widgets/widgets.dart';

@RoutePage()
class JoinRequestDetailsPage extends StatelessWidget {
  const JoinRequestDetailsPage({super.key, this.data});
  final UserModificationData? data;

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Scaffold(
      appBar: TransparentAppBar(
        title: Text(l10n.inventory),
        elevation: 0,
        color: theme.greenChalk,
      ),
      backgroundColor: Colors.transparent,
      body: CustomAdaptiveScreen.builder(
        mobile: JoinRequestDetailsUi(
          data: data,
        ),
        tablet: JoinRequestDetailsUi(
          data: data,
        ),
        desktop: JoinRequestDetailsUi(
          data: data,
        ),
      ),
    );
  }
}
