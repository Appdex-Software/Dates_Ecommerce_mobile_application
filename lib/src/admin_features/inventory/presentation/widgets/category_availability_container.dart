import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class CategoryAvailabilityContainer extends StatefulWidget {
  const CategoryAvailabilityContainer({super.key});

  @override
  State<CategoryAvailabilityContainer> createState() => _CategoryAvailabilityContainerState();
}

class _CategoryAvailabilityContainerState extends State<CategoryAvailabilityContainer> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(2.sw),
                margin: EdgeInsets.only(left: 2.sw),
                decoration: BoxDecoration(
                  color: theme.greenChalk,
                  borderRadius: AppSizes.borderRadius32
                  ),
                child: Text(l10n.available,style: theme.bodySmall.copyWith(color: theme.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(2.sw),
                margin: EdgeInsets.only(left: 2.sw),
                decoration: BoxDecoration(
                  color: theme.greenChalk,
                  borderRadius: AppSizes.borderRadius32
                  ),
                child: Text(l10n.unavailable,style: theme.bodySmall.copyWith(color: theme.white),
                ),
              ),
            ],
          );
  }
}