import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/widgets/widgets.dart';
import '../../domain/entities/date_product_entity.dart';
import '../providers/store_provider.dart';
import 'widgets.dart';

class DateItemContainer extends ConsumerStatefulWidget {
  const DateItemContainer({super.key});

  @override
  ConsumerState<DateItemContainer> createState() => _DateItemContainerState();
}

class _DateItemContainerState extends ConsumerState<DateItemContainer> {
  @override
  void initState() {
    getProducts();
    super.initState();
  }

  getProducts() async {
    await ref.read(storeServiceProvider.notifier).getProducts();
  }

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return AsyncValueWidget(
        value: ref.watch(storeServiceProvider),
        data: (DateProductEntity? dateProductEntity) {
          return GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 3.sw,
                childAspectRatio: 0.8),
            itemCount: dateProductEntity?.data?.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  context.router.push(DateDetailsRoute(
                      dateData: dateProductEntity?.data?[index] ?? DateData()));
                },
                child: LinearGradientContainer(
                    listOfColors: [
                      theme.greenChalk.withOpacity(0.7),
                      theme.white
                    ],
                    child: Padding(
                      padding: EdgeInsets.all(2.sw),
                      child: Column(
                        children: [
                          ProductImage(
                            image: dateProductEntity?.data?[index].image ?? '',
                            size: 20.screenWidth,
                          ),
                          // CachedNetworkImage(imageUrl: dateProductEntity?.data?[index].image ?? '',width: 20.screenWidth,),
                          gapH12,
                          Text(
                            dateProductEntity?.data?[index].name ?? '',
                            style: theme.bodySmall,
                          )
                        ],
                      ),
                    )),
              );
            },
          );
        });
  }
}
