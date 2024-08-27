import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransparentAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TransparentAppBar(
      {super.key,
      this.title,
      this.systemOverlayStyle,
      this.centerTitle = false,
      this.backButton,
      this.actions,
      this.leadingWidth,
      this.iconColor,
      this.color,
      this.elevation,
      this.bottom});
  final Widget? title;
  final bool centerTitle;
  final Widget? backButton;
  final List<Widget>? actions;
  final double? leadingWidth;
  final Widget? bottom;
  final Color? color;
  final Color? iconColor;
  final double? elevation;
  final SystemUiOverlayStyle? systemOverlayStyle;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: systemOverlayStyle,
      //toolbarHeight: 100,
      surfaceTintColor: Colors.transparent,
      leadingWidth: leadingWidth,
      leading: backButton ??
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: iconColor,
            ),
            onPressed: () {
              context.router.maybePop();
            },
          ),
      // ??
      // Padding(
      //     padding: EdgeInsets.only(left: 25.w, right: 25.w),
      //     child: CustomIconButton(
      //       icon: AssetsHelper.arrowLeft,
      //       function: () {
      //         context.router.pop();
      //       },
      //     )
      //     ),
      backgroundColor: color ?? Colors.white,
      title: title ?? Container(),
      elevation: 0,
      centerTitle: centerTitle,
      actions: actions,
      bottom: PreferredSize(
          preferredSize: preferredSize, child: bottom ?? Container()),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
