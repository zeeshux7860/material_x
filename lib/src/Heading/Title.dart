import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class XHeader extends StatelessWidget {
  final double rounded;
  final double blurRadius;
  final Offset offset;
  final double spreadRadius;
  final Color shadowColor;
  final Color color;
  final Widget child;
  final Function onTap;
  const XHeader({
    Key key,
    this.rounded = 5,
    this.blurRadius = 12,
    this.offset = const Offset(0, 8),
    this.spreadRadius = 0.5,
    this.shadowColor = Colors.black,
    this.color = Colors.white,
    this.child,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainer(
        onTap: onTap,
        rounded: rounded,
        blurRadius: blurRadius,
        offset: offset,
        spreadRadius: 0.5,
        shadowColor: shadowColor,
        color: color,
        child: child);
  }
}
