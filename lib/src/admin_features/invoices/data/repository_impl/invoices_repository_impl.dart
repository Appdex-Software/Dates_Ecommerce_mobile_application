import '../../../../core/errors/custom_error.dart';
import '../datasource/invoices_datasource.dart';

abstract class BaseInvoiceRepository {
  Future<String> getInvoices(
      {List<String>? productIDList, String? year, String? month});
}

class InvoiceRepositoryImpl implements BaseInvoiceRepository {
  final InvoiceSourceImpl dataSource = InvoiceSourceImpl();

  @override
  Future<String> getInvoices(
      {List<String>? productIDList, String? year, String? month}) async {
    try {
      return await dataSource
          .getInvoices(month: month, year: year, productIDList: productIDList)
          .then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to get invoice', err: e, stackTrace: stack);
    }
  }
}
