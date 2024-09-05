import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/order/presentation/providers/order_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../user_features/order/domain/entities/order_user_entity.dart';
import '../widgets/widgets.dart';

class OrdersAdminUi extends ConsumerStatefulWidget {
  const OrdersAdminUi({super.key});

  @override
  ConsumerState<OrdersAdminUi> createState() => _OrdersAdminUiState();
}

class _OrdersAdminUiState extends ConsumerState<OrdersAdminUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 4.1.sw, right: 4.1.sw),
      child: AsyncValueWidget(
          value: ref.watch(orderServiceProvider),
          data: (OrderUserEntity? orderEntity) {
            return Column(
              children: List.generate(
                orderEntity?.data?.length ?? 0,
                (index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 3.sw),
                    child: GestureDetector(
                      onTap: () {
                        context.router.push(OrderDetailsAdminRoute(
                            data: orderEntity?.data?[index],
                            productDetailsIndex: index));
                      },
                      child: LinearGradientContainer(
                          border:
                              Border.all(color: theme.black.withOpacity(0.2)),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 2.sh,
                                bottom: 2.sh,
                                left: 3.sw,
                                right: 3.sw),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: 'جمعية البر ',
                                        style: theme.titleLarge),
                                    TextSpan(
                                        text: 'طلب رقم 5 للجمعية',
                                        style: theme.labelLarge),
                                  ]),
                                ),
                                gapH16,
                                OrderRequestItem(
                                  data:
                                      orderEntity?.data?[index].productDetails,
                                  index: index,
                                ),
                              ],
                            ),
                          )),
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
