import 'package:auto_route/auto_route.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:date_farm/src/user_features/news/data/models/add_news_body/add_news_body.dart';
import 'package:date_farm/src/user_features/news/presentation/providers/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';

class AdminAddPostUi extends ConsumerStatefulWidget {
  const AdminAddPostUi({super.key});

  @override
  ConsumerState<AdminAddPostUi> createState() => _AdminAddPostUiState();
}

class _AdminAddPostUiState extends ConsumerState<AdminAddPostUi> {
  XFile? image;
  String? imagePath;
  final ImagePicker picker = ImagePicker();

  TextEditingController newsTitleController = TextEditingController();
  TextEditingController newsDetailsController = TextEditingController();

  pickImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath = image?.path;
    } else {
      imagePath = null;
    }
    setState(() {});
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final (theme, l10n) = appSettingsRecord(context);
    final newsService = ref.watch(newsServiceProvider.notifier);
    return LinearGradientContainer(
      borderRadius: BorderRadius.zero,
      listOfColors: [theme.greenChalk, theme.white],
      child: Padding(
        padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(
                l10n.productImage,
                style: theme.bodyMedium,
              ),
              gapH16,
              GestureDetector(
                onTap: () async {
                  await pickImage();
                },
                child: UnconstrainedBox(
                  child: Container(
                    width: 50.sw,
                    height: 50.sw,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                        color: theme.white.withOpacity(0.6),
                        borderRadius: AppSizes.borderRadius8),
                    child: imagePath != null
                        ? Image.asset(
                            imagePath ?? '',
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.add,
                            size: 20.sw,
                          ),
                  ),
                ),
              ),
              gapH16,
              CustomTextField(
                keyboardType: TextInputType.name,
                hint: l10n.productName,
                controller: newsTitleController,
                onChanged: (p0) {
                  newsTitleController.text = p0 ?? '';
                  setState(() {});
                },
                validator: (p0) {
                  if (newsTitleController.text.isEmpty) {
                    return l10n.emptyValidationError;
                  }
                  return null;
                },
              ),
              gapH16,
              CustomTextField(
                maxLines: 8,
                keyboardType: TextInputType.name,
                hint: l10n.productDescription,
                controller: newsDetailsController,
                onChanged: (p0) {
                  newsDetailsController.text = p0 ?? '';
                  setState(() {});
                },
                validator: (p0) {
                  if (newsDetailsController.text.isEmpty) {
                    return l10n.emptyValidationError;
                  }
                  return null;
                },
              ),
              const Spacer(),
              SafeArea(
                child: AsyncValueWidget(
                    value: ref.watch(newsServiceProvider),
                    data: (_) {
                      return CustomButton(
                        title: l10n.submit,
                        onPressed: () async {
                          if (formKey.currentState?.validate() ?? false) {
                            final body = AddNewsBody(
                                body: newsDetailsController.text,
                                image: imagePath,
                                subject: newsTitleController.text);
                            final statusCode =
                                await newsService.addNews(body: body);
                            if (statusCode == 201) {
                              if (context.mounted) {
                                AppToast.successToast(
                                    l10n.theOrderHasBeenEditedSuccessfully,
                                    context);
                                context.maybePop();
                              }
                            } else {
                              context.mounted
                                  ? AppToast.errorToast(
                                      l10n.theOrderHasFailed, context)
                                  : null;
                            }
                          }
                        },
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
