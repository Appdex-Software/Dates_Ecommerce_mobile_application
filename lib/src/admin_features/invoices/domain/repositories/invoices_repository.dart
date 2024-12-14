import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../user_features/order/data/models/order_pdf_model/order_pdf_model.dart';
import '../../data/repository_impl/invoices_repository_impl.dart';
part 'invoices_repository.g.dart';

@Riverpod(keepAlive: true)
class InvoicesRepository extends _$InvoicesRepository {
  @override
  FutureOr<void> build() {}

  final InvoiceRepositoryImpl invoicesSourceImpl = InvoiceRepositoryImpl();

  String? invoiceReport = '';

  Future<String?> getInvoices(
      {OrderPdfModel? body}) async {
    try {
      invoiceReport = await invoicesSourceImpl.getInvoices(body: body);
      return invoiceReport;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }
}
