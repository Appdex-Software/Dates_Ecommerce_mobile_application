import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_farm/src/admin_features/inventory/presentation/providers/inventory_provider.dart';
import 'package:date_farm/src/core/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';

class InventoryDetailsUi extends ConsumerStatefulWidget {
  const InventoryDetailsUi({super.key, this.date});
  final DateData? date;
  @override
  ConsumerState<InventoryDetailsUi> createState() => _InventoryDetailsUiState();
}

class _InventoryDetailsUiState extends ConsumerState<InventoryDetailsUi> {
  final ImagePicker picker = ImagePicker();
  TextEditingController productNameController = TextEditingController();
  TextEditingController productDescriptionController = TextEditingController();
  TextEditingController familyQuantityController = TextEditingController();
  TextEditingController charitiesQantityController = TextEditingController();
  TextEditingController fastingQuantityController = TextEditingController();
  TextEditingController totalQuantityController = TextEditingController();
  XFile? image;
  String? imagePath;
  String? currentCategory;
  final formKey = GlobalKey<FormState>();

  pickImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      imagePath = image?.path;
    } else {
      imagePath = null;
    }
    setState(() {});
  }

  @override
  void initState() {
    widget.date?.name != null
        ? (productNameController.text = widget.date?.name ?? '')
        : null;
    widget.date?.description != null
        ? (productDescriptionController.text = widget.date?.description ?? '')
        : null;
    widget.date?.familiesQuantity != null
        ? (familyQuantityController.text =
            widget.date?.familiesQuantity.toString() ?? '')
        : null;
    widget.date?.charitiesQuantity != null
        ? (charitiesQantityController.text =
            widget.date?.charitiesQuantity.toString() ?? '')
        : null;
    widget.date?.fastingQuantity != null
        ? (fastingQuantityController.text =
            widget.date?.fastingQuantity.toString() ?? '')
        : null;
    widget.date?.totalQuantity != null
        ? (totalQuantityController.text =
            widget.date?.totalQuantity.toString() ?? '')
        : null;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final inventoryService = ref.watch(inventoryServiceProvider.notifier);
    final (theme, l10n) = appSettingsRecord(context);
    return Form(
      key: formKey,
      child: LinearGradientContainer(
          borderRadius: BorderRadius.zero,
          listOfColors: [theme.greenChalk, theme.white],
          child: ListView(
            padding: EdgeInsets.only(left: 5.1.sw, right: 5.1.sw),
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
                        : widget.date?.image != null
                            ? CachedNetworkImage(
                                imageUrl: widget.date?.image ?? '',
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
                controller: productNameController,
                onChanged: (p0) {
                  productNameController.text = p0 ?? '';
                  setState(() {});
                },
                validator: (p0) {
                  if (productNameController.text.isEmpty) {
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
                controller: productDescriptionController,
                onChanged: (p0) {
                  productDescriptionController.text = p0 ?? '';
                  setState(() {});
                },
                validator: (p0) {
                  if (productDescriptionController.text.isEmpty) {
                    return l10n.emptyValidationError;
                  }
                  return null;
                },
              ),
              gapH16,
              Row(
                children: [
                  Expanded(
                      child: CustomTextField(
                    keyboardType: TextInputType.number,
                    hint: l10n.family,
                    controller: familyQuantityController,
                    onChanged: (p0) {
                      familyQuantityController.text = p0 ?? '';
                      setState(() {});
                    },
                    validator: (p0) {
                      if (familyQuantityController.text.isEmpty) {
                        return l10n.emptyValidationError;
                      }
                      return null;
                    },
                  )),
                  gapW4,
                  Expanded(
                      child: CustomTextField(
                    keyboardType: TextInputType.number,
                    hint: l10n.charities,
                    controller: charitiesQantityController,
                    onChanged: (p0) {
                      charitiesQantityController.text = p0 ?? '';
                      setState(() {});
                    },
                    validator: (p0) {
                      if (charitiesQantityController.text.isEmpty) {
                        return l10n.emptyValidationError;
                      }
                      return null;
                    },
                  )),
                  gapW4,
                  Expanded(
                      child: CustomTextField(
                    keyboardType: TextInputType.number,
                    hint: l10n.fasting,
                    controller: fastingQuantityController,
                    onChanged: (p0) {
                      fastingQuantityController.text = p0 ?? '';
                      setState(() {});
                    },
                    validator: (p0) {
                      if (fastingQuantityController.text.isEmpty) {
                        return l10n.emptyValidationError;
                      }
                      return null;
                    },
                  )),
                ],
              ),
              gapH16,
              CustomTextField(
                keyboardType: TextInputType.name,
                hint: l10n.totalQuantity,
                controller: totalQuantityController,
                validator: (p0) {
                  final result = (int.parse(totalQuantityController.text) <
                      (int.parse(familyQuantityController.text) +
                          int.parse(charitiesQantityController.text) +
                          int.parse(fastingQuantityController.text)));
                  if (totalQuantityController.text.isEmpty) {
                    return l10n.emptyValidationError;
                  } else if (result) {
                    return l10n
                        .theSumOfFamiliesQuantityFastingQuantityAndCharitiesQuantityMustBeLessThanOrEqualToTotalQuantity;
                  }
                  return null;
                },
                onChanged: (p0) {
                  totalQuantityController.text = p0 ?? '';
                  setState(() {});
                },
              ),
              gapH16,
             CustomDropDown(
                        value: currentCategory,
                        onChanged: (value) {
                          currentCategory = value;
                          setState(() {});
                        },
                        items: List.generate(
                          inventoryService
                                  .getCategoriesEntity()
                                  ?.data
                                  ?.length ??
                              0,
                          (index) {
                            return DropdownMenuItem(
                                value: inventoryService
                                    .getCategoriesEntity()
                                    ?.data?[index]
                                    .name,
                                child: Text(
                                  inventoryService
                                          .getCategoriesEntity()
                                          ?.data?[index]
                                          .name ??
                                      '',
                                  style: theme.bodyMedium,
                                ));
                          },
                        ),
                        hint: l10n.categories),
              gapH16,
              AsyncValueWidget(
                  value: ref.watch(inventoryServiceProvider),
                  data: (_) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.sh),
                      child: CustomButton(
                        title: l10n.add,
                        onPressed: () async {
                          if (formKey.currentState?.validate() ?? false) {
                            final dateData = DateData(
                                category: "عجوة",
                                charitiesQuantity:
                                    int.parse(charitiesQantityController.text),
                                description: productDescriptionController.text,
                                familiesQuantity:
                                    int.parse(familyQuantityController.text),
                                fastingQuantity:
                                    int.parse(fastingQuantityController.text),
                                image: imagePath,
                                name: productNameController.text,
                                totalQuantity:
                                    int.parse(totalQuantityController.text),
                                id: widget.date?.id);
                            final productStatusCode = widget.date != null
                                ? await inventoryService.patchProducts(
                                    data: dateData)
                                : await inventoryService.createProducts(
                                    data: dateData);
                            if (productStatusCode == 201 ||
                                productStatusCode == 200) {
                              await inventoryService.getDateProducts();
                              if (context.mounted) {
                                context.router.maybePop();
                                AppToast.successToast(
                                    l10n.theItemHasBeenAddedSuccessfully,
                                    context);
                              }
                            } else {
                              context.mounted
                                  ? AppToast.errorToast(
                                      l10n.theOrderHasFailed, context)
                                  : null;
                            }
                          }
                        },
                      ),
                    );
                  }),
            ],
          )),
    );
  }
}
