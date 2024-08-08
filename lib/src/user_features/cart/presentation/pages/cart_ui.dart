import 'package:date_farm/src/core/helpers/helpers.dart';
import 'package:date_farm/src/user_features/store/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class CartUi extends StatefulWidget {
  const CartUi({super.key});

  @override
  State<CartUi> createState() => _CartUiState();
}

class _CartUiState extends State<CartUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return LinearGradientContainer(
      listOfColors: [theme.greenChalk, theme.white],
      child: Padding(
        padding: EdgeInsets.only(left: 15.sw, right: 15.sw,bottom: 8.sh),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemCount: 2,
              separatorBuilder: (context, index) {
                return Divider(
                  color: theme.dividerColor.withOpacity(0.5),
                );
              },
              itemBuilder: (context, index) {
                return SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 1.sh),
                        width: 15.sw,
                        height: 15.sw,
                        decoration:  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(AssetsHelper.date))),
                      ),
                      Text(
                        l10n.greenDates,
                        style: theme.titleSmall,
                      ),
                      const DateItemQuantityCounter()
                    ],
                  ),
                );
              },
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    elevation: 5,
                    title: l10n.confirmOrder,
                    titleStyle: theme.titleSmall.copyWith(color: theme.white),
                  ),
                ),
                

              ],
            )
          ],
        ),
      ),
    );
  }
}
