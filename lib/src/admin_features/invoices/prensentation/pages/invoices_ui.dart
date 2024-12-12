import 'dart:io';

import 'package:date_farm/src/admin_features/invoices/prensentation/providers/invoices_provider.dart';
import 'package:date_farm/src/admin_features/invoices/prensentation/widgets/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:open_filex/open_filex.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';
import '../../../../user_features/store/domain/entities/date_product_entity.dart';
import '../../../inventory/presentation/providers/inventory_provider.dart';

class InvoicesUi extends ConsumerStatefulWidget {
  const InvoicesUi({super.key});

  @override
  ConsumerState<InvoicesUi> createState() => _InvoicesUiState();
}

class _InvoicesUiState extends ConsumerState<InvoicesUi> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        initFunction();
      },
    );
    super.initState();
  }

  initFunction() async {
    await ref.watch(inventoryServiceProvider.notifier).getCategories();
  }

  @override
  Widget build(BuildContext context) {
    final inventoryService = ref.watch(inventoryServiceProvider.notifier);
    final invoiceServices = ref.watch(invoicesServiceProvider.notifier);
    final (theme, l10n) = appSettingsRecord(context);

    return SafeArea(
      child: AsyncValueWidget(
          value: ref.watch(inventoryServiceProvider),
          data: (DateProductEntity? productEntity) {
            final List<DateData>? productList =
                inventoryService.getIsAvailable() != null
                    ? inventoryService.getIsAvailable() ?? false
                        ? productEntity?.data
                            ?.where(
                              (element) => (element.totalQuantity ?? 0) > 1,
                            )
                            .toList()
                        : productEntity?.data
                            ?.where(
                              (element) => element.totalQuantity == 0,
                            )
                            .toList()
                    : productEntity?.data;
            return SingleChildScrollView(
              padding:
                  EdgeInsets.only(left: 5.1.sw, right: 5.1.sw, bottom: 2.sh),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  gapH20,
                  Column(
                    children: List.generate(
                      productList?.length ?? 0,
                      (index) {
                        return InvoiceItem(
                          productID: productList?[index].id ?? '',
                          title: productList?[index].name ?? '',
                        );
                      },
                    ),
                  ),
                  gapH16,
                  productList?.isEmpty ?? true
                      ? Container()
                      : Padding(
                          padding: EdgeInsets.only(bottom: 5.sh),
                          child: CustomButton(
                            title: l10n.printAll,
                            onPressed: () async {
                              ProgressDialog pd =
                                  ProgressDialog(context: context);
                              pd.show(
                                msg: l10n.fileIsOpening,
                                backgroundColor: theme.white,
                                borderRadius: radius12,
                                msgColor: theme.black,
                                progressBgColor: theme.primary,
                                progressValueColor: theme.white,
                              );
                              await invoiceServices.getInvoices();
                              final url = invoiceServices.invoiceReport;
                              final filename =
                                  url.substring(url.lastIndexOf("/") + 1);
                              var request =
                                  await HttpClient().getUrl(Uri.parse(url));
                              var response = await request.close();
                              var bytes =
                                  await consolidateHttpClientResponseBytes(
                                      response);
                              var dir =
                                  await getApplicationDocumentsDirectory();
                              File file = File("${dir.path}/$filename");
                              await file.writeAsBytes(bytes, flush: true);
                              pd.close();
                              await OpenFilex.open(file.path);
                            },
                          ),
                        )
                ],
              ),
            );
          }),
    );
  }
}
