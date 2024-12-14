import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../../user_features/order/data/models/order_pdf_model/order_pdf_model.dart';

abstract class InvoiceSource {
  Future<String?> getInvoices(
      {OrderPdfModel? body});
}

class InvoiceSourceImpl implements InvoiceSource {
  @override
  Future<String?> getInvoices(
      {OrderPdfModel? body}) async {
    try {
       final response = await DioClient().dio.get(
            data: body,
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getInvoicesApiUrl}?start_year=${body?.startYear}&start_month=${body?.startMonth}&end_year=${body?.endYear}&end_month=${body?.endMonth}&product_id=${body?.orderId ?? ''}&customer_type=${body?.customerType ?? ''}&customer_email=${body?.customerEmail ?? ''}",
          );
      logger.d('patchOrdersresponse: ${response.data}');
       if (response.statusCode == 200) {
        return response.data["file_path"];
      } else {
        return null;
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
