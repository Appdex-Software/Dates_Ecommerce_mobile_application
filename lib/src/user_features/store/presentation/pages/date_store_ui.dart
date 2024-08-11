import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/helpers/helpers.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class DateStoreUi extends StatefulWidget {
  const DateStoreUi({super.key});

  @override
  State<DateStoreUi> createState() => _DateStoreUiState();
}

class _DateStoreUiState extends State<DateStoreUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return CustomScrollView(
      slivers: [
        const CustomSilverAppBar(),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.1.sw,vertical: 2.sh),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.datesProducts,
                  style: theme.bodyMedium,
                ),
                gapH12,
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 3.sw,childAspectRatio: 0.8),
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(const DateDetailsRoute());
                      },
                      child: LinearGradientContainer(
                        listOfColors: [theme.greenChalk.withOpacity(0.7),theme.white],
                        child: Padding(
                          padding: EdgeInsets.all(2.sw),
                          child: Column(
                            children: [
                            Image.asset(AssetsHelper.date,width: 20.sw,),
                            gapH12,
                            Text(l10n.greenDates,style: theme.bodySmall,)  
                          ],),
                        )
                        ),
                    );
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}