import '../../../../core/errors/custom_error.dart';
import '../../../../user_features/order/data/models/order_pdf_model/order_pdf_model.dart';
import '../datasource/invoices_datasource.dart';

abstract class BaseInvoiceRepository {
  Future<String?> getInvoices(
      {OrderPdfModel? body});
}

class InvoiceRepositoryImpl implements BaseInvoiceRepository {
  final InvoiceSourceImpl dataSource = InvoiceSourceImpl();

  @override
  Future<String?> getInvoices(
      {OrderPdfModel? body}) async {
    try {
      return await dataSource
          .getInvoices(body: body)
          .then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to get invoice', err: e, stackTrace: stack);
    }
  }
}
