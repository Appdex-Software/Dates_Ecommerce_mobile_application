import 'package:date_farm/src/admin_features/invoices/domain/repositories/invoices_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';
import '../../../../user_features/order/data/models/order_pdf_model/order_pdf_model.dart';

part 'invoices_provider.g.dart';

@Riverpod(keepAlive: true)
class InvoicesService extends _$InvoicesService {
  @override
  FutureOr<void> build() async {}

  String? invoiceReport = '';

  Future<String?> getInvoices(
      {OrderPdfModel? body}) async {
    try {
      invoiceReport = await ref
          .watch(invoicesRepositoryProvider.notifier)
          .getInvoices(body: body);
      return invoiceReport;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }
}
