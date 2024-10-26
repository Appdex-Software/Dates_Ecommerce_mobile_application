import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository_impl/invoices_repository_impl.dart';
part 'invoices_repository.g.dart';

@Riverpod(keepAlive: true)
class InvoicesRepository extends _$InvoicesRepository {
  @override
  FutureOr<void> build() {
  }

  final InvoiceRepositoryImpl invoicesSourceImpl =
      InvoiceRepositoryImpl();

  String invoiceReport = '';

  Future<String> getInvoices({List<String>? productIDList,String? year,String? month}) async {
    try {
      invoiceReport = await invoicesSourceImpl.getInvoices(month: month,year: year,productIDList: productIDList);
      return invoiceReport;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }


}
