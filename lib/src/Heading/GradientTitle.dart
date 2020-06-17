import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class MxHeaderGradient extends StatelessWidget {
  final double rounded;
  final double blurRadius;
  final Offset offset;
  final double spreadRadius;
  final Color shadowColor;
  final Gradient gradient;
  final Widget child;
  final Function onTap;
  const MxHeaderGradient({
    Key key,
    this.rounded = 5,
    this.blurRadius = 12,
    this.offset = const Offset(0, 8),
    this.spreadRadius = 0.5,
    this.shadowColor = Colors.black,
    this.gradient = const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
      colors: [Colors.red, Colors.pink], // whitish to gray
      tileMode: TileMode.mirror, // repeats the gradient over the canvas
    ),
    this.child,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MxContainerGradient(
        onTap: onTap,
        rounded: rounded,
        blurRadius: blurRadius,
        offset: offset,
        spreadRadius: 0.5,
        shadowColor: shadowColor,
        gradient: gradient,
        child: child);
  }
}
