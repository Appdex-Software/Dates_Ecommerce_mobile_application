import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import '../helpers/helpers.dart';

class CustomSilverAppBar extends StatefulWidget {
  const CustomSilverAppBar({super.key, this.backButton});
  final Widget? backButton;

  @override
  State<CustomSilverAppBar> createState() => _CustomSilverAppBarState();
}

class _CustomSilverAppBarState extends State<CustomSilverAppBar> {
  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return SliverAppBar(
        backgroundColor: theme.greenChalk,
        expandedHeight: 190,
        primary: true,
        snap: true,
        pinned: true,
        floating: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            color: theme.white,
            child: Image.asset(
              AssetsHelper.farmDataBackground,
              fit: BoxFit.cover,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        );
  }
}
