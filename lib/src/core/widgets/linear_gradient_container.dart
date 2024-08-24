import 'package:flutter/material.dart';

class LinearGradientContainer extends StatelessWidget {
  const LinearGradientContainer(
      {super.key,
      this.listOfColors,
      required this.child,
      this.border,
      this.borderRadius,
      this.width});
  final List<Color>? listOfColors;
  final Widget child;
  final BoxBorder? border;
  final double? width;
  final BorderRadiusGeometry? borderRadius;

  List<Color> get _listOfColors =>
      listOfColors ?? [const Color(0xFFbde18d).withOpacity(0.1), Colors.white];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: _listOfColors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.8]),
          border: border,
          borderRadius: borderRadius ?? BorderRadius.circular(10)),
      child: child,
    );
  }
}
