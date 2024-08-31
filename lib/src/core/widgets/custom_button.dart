import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';

class CustomButton extends StatelessWidget {
  /// [title] argument is required
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = const Color(0xf1bde18d),
    this.shape,
    this.width = 190,
    this.height = 48,
    this.loading = false,
    this.isDisabled = false,
    this.icon,
    this.elevation = 0,
    this.gap = 17,
    this.splashColor,
  });

  final String? title;
  final Widget? icon;

  final double gap;

  final double elevation;

  final VoidCallback? onPressed;

  /// [titleStyle] is used to style the button text
  final TextStyle? titleStyle;

  /// [backgroundColor] for enabled state of button
  final Color backgroundColor;

  /// [shape] is used to apply border radius on button,
  final ShapeBorder? shape;

  /// [width] button width, defaults is 140
  final double width;

  /// [height] button height, defaults is 44
  final double height;

  /// [loading] is used to display circular progress indicator on loading event, default is false
  final bool loading;

  /// [isDisabled] is used to disable to button, default is true
  final bool isDisabled;

  final Color? splashColor;

  TextStyle get _titleStyle =>
      titleStyle ??
      const TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);

  ShapeBorder get _shape =>
      shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  Color get _splashColor =>
      splashColor != null ? splashColor! : backgroundColor.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    final (theme, _) = appSettingsRecord(context);

    return Material(
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      color: isDisabled ? theme.black : backgroundColor,
      shape: _shape,
      elevation: isDisabled ? 0 : elevation,
      shadowColor: theme.black,
      child: InkWell(
        splashColor: _splashColor,
        onTap: isDisabled || loading ? null : onPressed,
        child: ConstrainedBox(
          constraints: _constraints,
          child: Ink(
            decoration: ShapeDecoration(
              shape: _shape,
              color:
                  isDisabled ? theme.white.withOpacity(0.7) : backgroundColor,
            ),
            child: loading
                ? Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: backgroundColor == theme.whiteColor ||
                                backgroundColor == Colors.transparent
                            ? theme.black
                            : theme.whiteColor,
                        strokeWidth: 2,
                      ),
                    ),
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        icon!,
                        if (title != null) SizedBox(width: gap),
                      ],
                      if (title != null)
                        Text(
                          title!,
                          style: _titleStyle,
                        ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
