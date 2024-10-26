
import 'dart:developer';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/invoices/prensentation/providers/invoices_provider.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class InvoiceItem extends ConsumerWidget {
  const InvoiceItem({super.key, required this.title, required this.productID, });
  final String title;
  final String productID;
  @override
  Widget build(BuildContext context,WidgetRef ref) {
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
                    await invoiceServices.getInvoices(productIDList: [productID]);
                    await launchUrl(Uri.parse(invoiceServices.invoiceReport));
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
