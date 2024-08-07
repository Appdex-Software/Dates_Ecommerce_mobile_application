import 'package:date_farm/src/core/helpers/helpers.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class DateDetailsUi extends StatefulWidget {
  const DateDetailsUi({super.key});

  @override
  State<DateDetailsUi> createState() => _DateDetailsUiState();
}

class _DateDetailsUiState extends State<DateDetailsUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return LinearGradientContainer(
      listOfColors: [theme.greenChalk,theme.white],
      child: SingleChildScrollView(
        padding: EdgeInsets.only(left: 5.1.sw,right: 5.1.sw,top: 15.sh),
        child: Column(
          children: [
            Image.asset(AssetsHelper.date,width: 40.sw,),
            gapH20,
            Text(l10n.greenDates,style: theme.bodyLarge,),
            gapH20,
            Text("خواص تمر الخضري: غني بالألياف: يساعد في تحسين عملية الهضم ويمنع الإمساك. مصدر جيد للطاقة: يحتوي على نسبة عالية من السكريات الطبيعية مثل الفركتوز والجلوكوز، مما يمنح طاقة سريعة للجسم. غني بالفيتامينات والمعادن: يحتوي على فيتامينات مثل فيتامين B6 و K، بالإضافة إلى معادن مثل البوتاسيوم والمغنيسيوم والحديد. مضادات الأكسدة: يحتوي على مضادات الأكسدة التي",style: theme.bodySmall,),
            
          ],
        ),
      ),
    );
  }
}