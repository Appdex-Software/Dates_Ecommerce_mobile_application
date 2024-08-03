import 'package:flutter/material.dart';

import '../themes/app_themes.dart';

class CustomButton extends StatelessWidget {
  /// [title] argument is required
  const CustomButton({
    super.key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = const Color(0xff1A53A5),
    this.shape,
    this.width = 190,
    this.height = 48,
    this.loading = false,
    this.isDisabled = true,
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

  ShapeBorder get _shape =>
      shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(8));

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  Color get _splashColor =>
      splashColor != null ? splashColor! : backgroundColor.withOpacity(0.1);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      clipBehavior: Clip.antiAlias,
      color: isDisabled ? FlutterFlowTheme.of(context).darkText : backgroundColor,
      shape: _shape,
      elevation: elevation,
      shadowColor: FlutterFlowTheme.of(context).darkText,
      child: InkWell(
        splashColor: _splashColor,
        onTap: isDisabled || loading ? null : onPressed,
        child: ConstrainedBox(
          constraints: _constraints,
          child: Ink(
            decoration: ShapeDecoration(
              shape: _shape,
              color: isDisabled ? FlutterFlowTheme.of(context).gray600 : backgroundColor,
            ),
            child: loading
                ? Center(
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        color: backgroundColor == FlutterFlowTheme.of(context).whiteColor ||
                                backgroundColor == Colors.transparent
                            ? FlutterFlowTheme.of(context).darkText
                            : FlutterFlowTheme.of(context).whiteColor,
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
                          style: titleStyle,
                        ),
                    ],
                  ),
          ),
        ),
      ),
    );
  }
}
