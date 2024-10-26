
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

abstract class InvoiceSource {
  Future<String> getInvoices({List<String>? productIDList,String? year,String? month});
}

class InvoiceSourceImpl implements InvoiceSource {
  @override
  Future<String> getInvoices({List<String>? productIDList,String? year,String? month}) async {
    try {
      String invoiceFullUrl = "${AppConstants.getInvoicesApiUrl}?${year == null ? '' : "year=$year&"}${month == null ? '' : "month=$month&"}";
      for (var element in productIDList ?? []) {
        invoiceFullUrl = "${invoiceFullUrl}product_id=$element&";
      }
      final response = await DioClient().dio.get(
            options: Options(
              responseType: ResponseType.bytes,
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            invoiceFullUrl,
          );
      logger.d('get Invoice response: ${response.data}');
      if (response.statusCode == 200) {
        return "${AppConstants.apiUrl}media/reports/products_Report.pdf";
      } else {
        return response.statusCode.toString();
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

}
