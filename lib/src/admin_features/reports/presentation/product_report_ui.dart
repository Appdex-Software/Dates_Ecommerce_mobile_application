// ignore_for_file: use_build_context_synchronously, unnecessary_nullable_for_final_variable_declarations

import 'dart:io';

import 'package:date_farm/src/admin_features/reports/widgets/select_month_and_year.dart';
import 'package:date_farm/src/admin_features/user_modification/presentation/provider/user_modification_provider.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import '../../../core/constants/app_sizes.dart';
import '../../../core/constants/constants.dart';
import '../../../core/widgets/widgets.dart';
import '../../../user_features/order/data/models/order_pdf_model/order_pdf_model.dart';
import '../../invoices/prensentation/providers/invoices_provider.dart';

class ProductReportUi extends ConsumerStatefulWidget {
  const ProductReportUi({super.key});

  @override
  ConsumerState<ProductReportUi> createState() => _ProductReportUiState();
}

class _ProductReportUiState extends ConsumerState<ProductReportUi> {
  TextEditingController startYearController = TextEditingController();
  TextEditingController endYearController = TextEditingController();
  String? selectedUserEmail;
  int startMonth = DateTime.now().month;
  int endMonth = DateTime.now().month;
  String? currentCustomType;
  SingleValueDropDownController userEmailController =
      SingleValueDropDownController();
  @override
  void initState() {
    startYearController.text = DateTime.now().year.toString();
    endYearController.text = DateTime.now().year.toString();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        final userService = ref.watch(userModificationServiceProvider.notifier);
        await userService.getUser(queryParameter: "?role=customer");
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(userModificationServiceProvider),
        data: (userModificationEntity) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 4.sw, vertical: 4.sw),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.beginDate,
                  style: theme.bodyMedium,
                ),
                gapH12,
                SelectMonthAndYear(
                  controller: startYearController,
                  monthValue: startMonth,
                  onChanged: (value) {
                    setState(() {
                      startMonth = value ?? 1;
                    });
                  },
                ),
                gapH20,
                Text(
                  l10n.endDate,
                  style: theme.bodyMedium,
                ),
                gapH12,
                SelectMonthAndYear(
                  controller: endYearController,
                  monthValue: endMonth,
                  onChanged: (value) {
                    setState(() {
                      endMonth = value ?? 1;
                    });
                  },
                ),
                gapH30,
                CustomDropDown(
                    validator: (p0) {
                      if (currentCustomType?.isEmpty ?? true) {
                        return l10n.emptyValidationError;
                      }
                      return null;
                    },
                    value: currentCustomType,
                    onChanged: (value) {
                      currentCustomType = value;
                      setState(() {});
                    },
                    items: List.generate(
                      customerType.length,
                      (index) {
                        return DropdownMenuItem(
                            value: customerType[index],
                            child: Text(
                              customerType[index],
                              style: theme.bodyMedium
                                  .copyWith(fontWeight: FontWeight.w500),
                            ));
                      },
                    ),
                    hint: l10n.customerType),
                gapH20,
                Text(
                  l10n.userEmail,
                  style: theme.bodyMedium,
                ),
                gapH12,
                DropDownTextField(
                    controller: userEmailController,
                    enableSearch: true,
                    keyboardType: TextInputType.emailAddress,
                    textFieldDecoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: theme.redApple,
                          style: BorderStyle.solid,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: theme.borderColor.withOpacity(0.2),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: theme.borderColor.withOpacity(0.2),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: theme.borderColor.withOpacity(0.2),
                        ),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: theme.borderColor.withOpacity(0.4),
                        ),
                      ),
                    ),
                    dropDownList: List.generate(
                      userModificationEntity?.data?.length ?? 0,
                      (index) {
                        return DropDownValueModel(
                            name: userModificationEntity?.data?[index].email ??
                                '',
                            value: userModificationEntity?.data?[index].email);
                      },
                    )),
                gapH64,
                CustomButton(
                  width: double.infinity,
                  title: l10n.print,
                  onPressed: () async {
                    final productService =
                        ref.watch(invoicesServiceProvider.notifier);
                    ProgressDialog pd = ProgressDialog(context: context);
                    pd.show(
                      msg: l10n.fileIsOpening,
                      backgroundColor: theme.white,
                      borderRadius: radius12,
                      msgColor: theme.black,
                      progressBgColor: theme.primary,
                      progressValueColor: theme.white,
                    );
                    final String? url = await productService.getInvoices(
                        body: OrderPdfModel(
                            startMonth: startMonth,
                            startYear: num.parse(startYearController.text),
                            endMonth: endMonth,
                            endYear: num.parse(endYearController.text),
                            customerEmail:
                                userEmailController.dropDownValue?.value,
                            customerType: currentCustomType));
                    if (url == null) {
                      pd.close();
                      AppToast.errorToast(l10n.dataNotFound, context);
                    } else {
                      final filename = url.substring(url.lastIndexOf("/") + 1);
                      var request = await HttpClient()
                          .getUrl(Uri.parse("${AppConstants.apiUrl}/$url"));
                      var response = await request.close();
                      var bytes =
                          await consolidateHttpClientResponseBytes(response);
                      var dir = await getApplicationDocumentsDirectory();
                      File file = File("${dir.path}/$filename");
                      await file.writeAsBytes(bytes, flush: true);
                      pd.close();
                      await OpenFilex.open(file.path);
                    }
                  },
                )
              ],
            ),
          );
        });
  }
}
