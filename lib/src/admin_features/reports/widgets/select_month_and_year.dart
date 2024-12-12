import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/widgets/widgets.dart';

class SelectMonthAndYear extends StatefulWidget {
  const SelectMonthAndYear({super.key, required this.controller, required this.monthValue,required this.onChanged});
  final TextEditingController controller;
  final int monthValue;
  final void Function(dynamic)? onChanged;
  @override
  State<SelectMonthAndYear> createState() => _SelectMonthAndYearState();
}

class _SelectMonthAndYearState extends State<SelectMonthAndYear> {
  final List<int> monthNumbers = List.generate(12, (index) => index + 1);
  

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.year,
                      style: theme.labelMedium,
                    ),
                    gapH12,
                    CustomTextField(
                      keyboardType: TextInputType.number,
                      controller: widget.controller,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                      ],
                    ),
                  ],
                ),
              ),
              gapW12,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.month,
                      style: theme.labelMedium,
                    ),
                    gapH12,
                    CustomDropDown(
                      hint: '',
                      value: widget.monthValue,
                      items: List.generate(
                        monthNumbers.length,
                        (index) {
                          return DropdownMenuItem(
                            value: index + 1,
                            child: Text(
                              (index + 1).toString(),
                              style: theme.bodyMedium,
                            ),
                          );
                        },
                      ),
                      onChanged: widget.onChanged 
                    )
                  ],
                ),
              )
            ],
          );
  }
}