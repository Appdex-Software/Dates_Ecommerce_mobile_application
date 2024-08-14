import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class JoinRequestUi extends StatefulWidget {
  const JoinRequestUi({super.key});

  @override
  State<JoinRequestUi> createState() => _JoinRequestUiState();
}

class _JoinRequestUiState extends State<JoinRequestUi> {
  @override
  Widget build(BuildContext context) {
    final (theme,l10n) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: 4.1.sw),
      child: Column(
        children: [
          LinearGradientContainer(
            child: Padding(
              padding: EdgeInsets.all(2.sw),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("جمعية البر",style: theme.labelLarge,),
                      Text("المدينة ",style: theme.labelLarge,),
                    ],
                  ),
                  gapH12,
                  Text("zeyad@gmail.com ",style: theme.labelLarge,),
                  gapH12,
                  Text("01097875582 ",style: theme.labelLarge,),
                  gapH12,
                  Text("نود الانضمام لمساعدة الاطفال ",style: theme.labelLarge,),
                  gapH24,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomButton(
                      title: l10n.accept,
                      width: 20.sw,
                    ),
                      CustomButton(
                      title: l10n.review,
                      width: 20.sw,
                      backgroundColor: theme.accent3,
                    ),
                      CustomButton(
                      title: l10n.accept,
                      width: 20.sw,
                      backgroundColor: theme.decline,
                    ),
                    ],
                  )
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}