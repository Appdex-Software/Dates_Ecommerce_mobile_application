
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:date_farm/src/user_features/store/presentation/providers/store_provider.dart';
import 'package:date_farm/src/user_features/store/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class DateDetailsUi extends ConsumerStatefulWidget {
  const DateDetailsUi({super.key, this.data});
  final DateData? data;
  @override
  ConsumerState<DateDetailsUi> createState() => _DateDetailsUiState();
}

class _DateDetailsUiState extends ConsumerState<DateDetailsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return AsyncValueWidget(
      value: ref.watch(storeServiceProvider),
      data: (p0) {
        return LinearGradientContainer(
        listOfColors: [theme.greenChalk, theme.white],
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, top: 15.sh),
          child: Column(
            children: [
              ProductImage(image: widget.data?.image ?? '', size: 40.sw),
              gapH20,
              Text(
                widget.data?.name ?? '',
                style: theme.bodyLarge,
              ),
              gapH20,
              Text(
                widget.data?.description ?? '',
                style: theme.bodySmall,
              ),
            ],
          ),
        ),
      );
      },
    );
  }
}
