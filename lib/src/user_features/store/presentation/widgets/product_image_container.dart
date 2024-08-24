import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key, required this.image, required this.size});
  final String image;
  final double size;
  @override
  Widget build(BuildContext context) {
    // final (theme, _) = appSettingsRecord(context);

    return CachedNetworkImage(
      imageUrl: image,
      width: size,
      height: size,
      fit: BoxFit.cover,
      imageBuilder: (context, imageProvider) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius4),
          
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => const CircularProgressIndicator(),
      errorWidget: (context, url, error) => const Icon(
        Icons.error,
      ),
    );
  }
}
