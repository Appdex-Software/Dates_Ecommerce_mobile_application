import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';
import 'package:date_farm/src/core/constants/app_sizes.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/news/presentation/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../news/domain/entities/news_entity.dart';

class HomeUserUi extends ConsumerStatefulWidget {
  const HomeUserUi({super.key});

  @override
  ConsumerState<HomeUserUi> createState() => _HomeUserUiState();
}

class _HomeUserUiState extends ConsumerState<HomeUserUi> {
  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    return AsyncValueWidget(
        value: ref.watch(authUiServiceProvider),
        data: (context) {
          return CustomScrollView(
            slivers: [
              const CustomSilverAppBar(
                backButton: SizedBox(),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 5.1.sw, vertical: 2.sh),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.visionAndMission,
                      style: theme.bodyMedium,
                    ),
                    LinearGradientContainer(
                        child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 5.1.sw, vertical: 5.1.sw),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${l10n.vision}:",
                            style: theme.bodySmall,
                          ),
                          Text(
                            l10n.visionBody,
                            style: theme.bodySmall,
                          ),
                          Text(
                            "\n${l10n.mission}:",
                            style: theme.bodySmall,
                          ),
                          Text(
                            l10n.missionBody,
                            style: theme.bodySmall,
                          ),
                        ],
                      ),
                    )),
                    gapH12,
                    Text(
                      l10n.news,
                      style: theme.bodyMedium,
                    ),
                    AsyncValueWidget(
                        value: ref.watch(newsServiceProvider),
                        data: (NewsEntity? newEntity) {
                          return LinearGradientContainer(
                              child: Padding(
                            padding: EdgeInsets.only(
                                left: 5.1.sw,
                                right: 5.1.sw,
                                top: 5.1.sw,
                                bottom: 9.sw),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: List.generate(
                                  1,
                                  (index) {
                                    return Text(
                                      newEntity?.data?[index].body ?? '',
                                      style: theme.bodySmall,
                                    );
                                  },
                                )
                                // [
                                //   Text(
                                //     l10n.anAgreementHasBeenEstablishedWithTheAlBirAssociationToDistributeDatesToPilgrimsForTheSeason,
                                //     style: theme.bodySmall,
                                //   ),
                                //   Text(
                                //     "\n${l10n.thirtyNewTreesWerePlantedInANewArea}",
                                //     style: theme.bodySmall,
                                //   ),
                                //   Text(
                                //     "\n${l10n.anAgreementHasBeenReachedWithGovernmentAgenciesToDistributeDatesToEmployeesThroughoutTheMonthOfRamadan}",
                                //     style: theme.bodySmall,
                                //   ),
                                // ],
                                ),
                          ));
                        }),
                  ],
                ),
              ))
            ],
          );
        });
  }
}
