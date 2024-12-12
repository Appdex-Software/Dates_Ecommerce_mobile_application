// ignore_for_file: use_build_context_synchronously
import 'dart:io';

import 'package:date_farm/src/admin_features/orders/presentation/provider/search_order_provider.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/constants/constants.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/order/data/models/order_pdf_model/order_pdf_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:open_filex/open_filex.dart';
import 'package:path_provider/path_provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sn_progress_dialog/sn_progress_dialog.dart';

import '../../../../user_features/order/domain/entities/order_user_entity.dart';
import '../../../../user_features/order/presentation/providers/order_provider.dart';
import '../widgets/widgets.dart';

class OrderProgressUi extends ConsumerStatefulWidget {
  const OrderProgressUi({super.key});

  @override
  ConsumerState<OrderProgressUi> createState() => _OrderProgressUiState();
}

class _OrderProgressUiState extends ConsumerState<OrderProgressUi> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.watch(searchOrderServiceProvider.notifier).searchOrders([]);
      },
    );
    super.initState();
  }
  final List<int> statusList = [];
  final List<String> statusNamelist = [];
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final orderService = ref.watch(orderServiceProvider.notifier);
    final orderSearchService = ref.watch(searchOrderServiceProvider.notifier);
    return AsyncValueWidget(
        value: ref.watch(orderServiceProvider),
        data: (OrderUserEntity? orderEntity) {
          return Column(
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (!statusList.contains(0)) {
                          statusList.add(0);
                          statusNamelist.add("cancelled");
                        } else {
                          statusList.remove(0);
                          statusNamelist.remove("cancelled");
                        }
                        orderSearchService.searchOrders(statusNamelist);
                        setState(() {});
                      },
                      child: StatusButton(
                        text: "ملغي",
                        isSelected: statusList.contains(0),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        if (!statusList.contains(1)) {
                          statusList.add(1);
                          statusNamelist.add("pending fulfilled");
                        } else {
                          statusList.remove(1);
                          statusNamelist.remove("pending fulfilled");
                        }
                        orderSearchService.searchOrders(statusNamelist);

                        setState(() {});
                      },
                      child: StatusButton(
                        text: "غير معبئة",
                        isSelected: statusList.contains(1),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        if (!statusList.contains(2)) {
                          statusList.add(2);
                          statusNamelist.add("fulfilled");

                        } else {
                          statusList.remove(2);
                          statusNamelist.remove("fulfilled");

                        }
                        orderSearchService.searchOrders(statusNamelist);

                        setState(() {});
                      },
                      child: StatusButton(
                        text: "تم التعبئة",
                        isSelected: statusList.contains(2),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        if (!statusList.contains(3)) {
                          statusList.add(3);
                          statusNamelist.add("shipped");
                        } else {
                          statusList.remove(3);
                          statusNamelist.remove("shipped");

                        }
                        orderSearchService.searchOrders(statusNamelist);

                        setState(() {});
                      },
                      child: StatusButton(
                        text: "تم الشحن",
                        isSelected: statusList.contains(3),
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        if (!statusList.contains(4)) {
                          statusList.add(4);
                          statusNamelist.add("delivered");

                        } else {
                          statusList.remove(4);
                          statusNamelist.remove("delivered");

                        }
                        orderSearchService.searchOrders(statusNamelist);

                        setState(() {});
                      },
                      child: StatusButton(
                        text: "تم الاستلام",
                        isSelected: statusList.contains(4),
                      ),
                    ),
                  ],
                ),
              ),
              gapH12,
              AsyncValueWidget(
                value: ref.watch(searchOrderServiceProvider),
                data: (orderList) {
                  return ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                    children: List.generate(
                      orderList?.length ?? 0,
                      (index) {
                        // final userData = orderEntity?.data?[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 2.sh),
                          child: LinearGradientContainer(
                              border:
                                  Border.all(color: theme.black.withOpacity(0.2)),
                              child: Padding(
                                padding: EdgeInsets.all(2.sw),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              orderList?[index].user?.username ?? '',
                                              style: theme.labelLarge,
                                            ),
                                            gapH12,
                                            Text(
                                              orderList?[index].user?.email ?? '',
                                              style: theme.labelLarge,
                                            ),
                                            gapH12,
                                            Text(
                                              orderList?[index].user?.phoneNumber ?? '',
                                              style: theme.labelLarge,
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: List.generate(
                                            orderEntity?.data?[index].productDetails
                                                    ?.length ??
                                                0,
                                            (productIndex) {
                                              return Text(
                                                "${orderEntity?.data?[index].productDetails?[productIndex].productName} * ${orderEntity?.data?[index].productDetails?[productIndex].quantity}",
                                                style: theme.labelLarge,
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () async {
                                            ProgressDialog pd =
                                                ProgressDialog(context: context);
                                            pd.show(
                                              msg: l10n.fileIsOpening,
                                              backgroundColor: theme.white,
                                              borderRadius: radius12,
                                              msgColor: theme.black,
                                              progressBgColor: theme.primary,
                                              progressValueColor: theme.white,
                                            );
                  
                                            final String url =
                                                await orderService.getPdfOrders(
                                                    body: OrderPdfModel(
                                                        startMonth: 9,
                                                        startYear: 2024,
                                                        endMonth: DateTime.now().month,
                                                        endYear: DateTime.now().year,
                                                        customerEmail: orderEntity
                                                            ?.data?[index]
                                                            .user
                                                            ?.email,
                                                        customerType: orderEntity
                                                            ?.data?[index]
                                                            .user
                                                            ?.customerType,
                                                        orderId: orderEntity
                                                            ?.data?[index].id));
                                            final filename = url.substring(
                                                url.lastIndexOf("/") + 1);
                                            var request = await HttpClient().getUrl(
                                                Uri.parse(
                                                    "${AppConstants.apiUrl}/$url"));
                                            var response = await request.close();
                                            var bytes =
                                                await consolidateHttpClientResponseBytes(
                                                    response);
                                            var dir =
                                                await getApplicationDocumentsDirectory();
                                            File file =
                                                File("${dir.path}/$filename");
                                            await file.writeAsBytes(bytes,
                                                flush: true);
                                            pd.close();
                                            await OpenFilex.open(file.path);
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 0.6.sw, horizontal: 2.sw),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    AppSizes.borderRadius8,
                                                color: theme.warning),
                                            child: const Icon(Icons.print),
                                          ),
                                        ),
                                        gapW12,
                                        GestureDetector(
                                          onTap: () async {
                                            final statusCode = await orderService
                                                .updateOrders(body: {
                                              'id': orderEntity?.data?[index].id,
                                              'status': 'fulfilled'
                                            });
                                            if (statusCode == 200) {
                                              AppToast.successToast(
                                                  l10n.orderStatusHasBeenChanged,
                                                  context);
                                            } else {
                                              AppToast.errorToast(
                                                  l10n.failedToUpdateTheStatusOfTheOrder,
                                                  context);
                                            }
                                          },
                                          child: Container(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 1.sw, horizontal: 2.sw),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    AppSizes.borderRadius8,
                                                color: theme.primary),
                                            child: Text(l10n.fulfilment,
                                                style: theme.labelLarge),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )),
                        );
                      },
                    ),
                  );
                }
              ),
            ],
          );
        });
  }
}
