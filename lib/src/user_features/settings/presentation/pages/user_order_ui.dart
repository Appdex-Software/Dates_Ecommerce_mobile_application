import 'package:date_farm/src/user_features/order/domain/entities/order_user_entity.dart';
import 'package:date_farm/src/user_features/order/presentation/providers/order_provider.dart';
import 'package:date_farm/src/user_features/settings/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/widgets.dart';

class UserOrderUi extends ConsumerWidget {
  const UserOrderUi({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final (theme, _) = appSettingsRecord(context);

    return LinearGradientContainer(
      listOfColors: [theme.greenChalk, theme.white],
      child: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            await ref.watch(orderServiceProvider.notifier).getOrders();
          },
          color: theme.greenChalk,
          child: AsyncValueWidget(
              value: ref.watch(orderServiceProvider),
              data: (OrderUserEntity? orderEntity) {
                return ListView(
                  padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                  children: List.generate(
                    orderEntity?.data?.length ?? 0,
                    (index) {
                      return OrderItem(
                        orderData: orderEntity?.data?[index],
                      );
                    },
                  ),
                );
              }),
        ),
      ),
    );
  }
}
