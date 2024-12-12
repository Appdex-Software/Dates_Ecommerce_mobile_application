import 'dart:io';

import 'package:date_farm/src/admin_features/invoices/prensentation/providers/invoices_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/progress_dialog.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';
import 'package:open_filex/open_filex.dart';

class InvoiceItem extends ConsumerWidget {
  const InvoiceItem({
    super.key,
    required this.title,
    required this.productID,
  });
  final String title;
  final String productID;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, l10n) = appSettingsRecord(context);
    final invoiceServices = ref.watch(invoicesServiceProvider.notifier);
    return LinearGradientContainer(
        child: Padding(
            padding: EdgeInsets.only(
                left: 2.sw, right: 2.sw, bottom: 3.sh, top: 1.sh),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: theme.bodyLarge,
                ),
                CustomButton(
                  onPressed: () async {
                    ProgressDialog pd = ProgressDialog(context: context);
                    pd.show(
                      msg: l10n.fileIsOpening,
                      backgroundColor: theme.white,
                      borderRadius: radius12,
                      msgColor: theme.black,
                      progressBgColor: theme.primary,
                      progressValueColor: theme.white,
                    );
                    await invoiceServices
                        .getInvoices(productIDList: [productID]);

                    final url = invoiceServices.invoiceReport;
                    final filename = url.substring(url.lastIndexOf("/") + 1);
                    var request = await HttpClient().getUrl(Uri.parse(url));
                    var response = await request.close();
                    var bytes =
                        await consolidateHttpClientResponseBytes(response);
                    var dir = await getApplicationDocumentsDirectory();
                    File file = File("${dir.path}/$filename");
                    await file.writeAsBytes(bytes, flush: true);
                    pd.close();
                    await OpenFilex.open(file.path);
                    // print("wwwwwqweqweqweqweqweqweqwewdsfcsdcfsdfvadsfbvdfghdfyhjgh${invoiceServices.invoiceReport}");
                    // log("qwdq");
                    // context.router.push(PdfViewerRoute(pdfData: invoiceServices.invoiceReport));
                  },
                  title: l10n.print,
                  width: 30.sw,
                  icon: const Icon(Icons.print),
                )
              ],
            )));
  }
}
