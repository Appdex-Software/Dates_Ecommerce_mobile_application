
import 'package:date_farm/src/admin_features/invoices/domain/repositories/invoices_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/custom_error.dart';

part 'invoices_provider.g.dart';

@Riverpod(keepAlive: true)
class InvoicesService extends _$InvoicesService {
  @override
  FutureOr<void> build() async {
  }

  String invoiceReport = '';


  Future<String> getInvoices({List<String>? productIDList,String? year,String? month}) async {
    try {
      invoiceReport = await ref.watch(invoicesRepositoryProvider.notifier).getInvoices(month: month,year: year,productIDList: productIDList);
      return invoiceReport;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }

}
