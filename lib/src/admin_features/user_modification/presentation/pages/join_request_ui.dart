import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/admin_features/user_modification/presentation/provider/user_modification_provider.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/routes/app_router.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../domain/entities/user_modification_entity.dart';

class JoinRequestUi extends ConsumerStatefulWidget {
  const JoinRequestUi({super.key});

  @override
  ConsumerState<JoinRequestUi> createState() => _JoinRequestUiState();
}

class _JoinRequestUiState extends ConsumerState<JoinRequestUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AsyncValueWidget(
            value: ref.watch(userModificationServiceProvider),
            data: (UserModificationEntity? userModEntity) {
              return ListView(
                padding: EdgeInsets.symmetric(horizontal: 5.1.sw),
                children: List.generate(
                  userModEntity?.data?.length ?? 0,
                  (index) {
                    final userData = userModEntity?.data?[index];
                    return GestureDetector(
                      onTap: () {
                        context.router
                            .push(JoinRequestDetailsRoute(data: userData));
                      },
                      child: Padding(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        userData?.name ?? '',
                                        style: theme.labelLarge,
                                      ),
                                      Text(
                                        userData?.city ?? '',
                                        style: theme.labelLarge,
                                      ),
                                    ],
                                  ),
                                  gapH12,
                                  Text(
                                    userData?.email ?? '',
                                    style: theme.labelLarge,
                                  ),
                                  gapH12,
                                  Text(
                                    userData?.city ?? '',
                                    style: theme.labelLarge,
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
        SafeArea(
          child: CustomButton(
            title: l10n.add,
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
