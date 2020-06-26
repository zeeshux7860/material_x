import 'package:flutter/material.dart';

class MxContainerGradient extends StatelessWidget {
  final double width;
  final Gradient gradient;
  final EdgeInsetsGeometry padding;
  final Color shadowColor;
  final double rounded;
  final Widget child;
  final DecorationImage image;
  final double height;
  final double blurRadius;
  final double spreadRadius;
  final Offset offset;
  final Function onTap;
  final EdgeInsetsGeometry margin;
  final BorderRadiusGeometry borderRadius;
  const MxContainerGradient(
      {Key key,
      this.height,
      this.width,
      @required this.gradient,
      this.shadowColor,
      this.rounded,
      this.padding,
      @required this.child,
      this.blurRadius,
      this.spreadRadius,
      this.offset,
      this.onTap,
      this.margin,
      this.borderRadius,
      this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: borderRadius == null
                  ? BorderRadius.circular(rounded == null ? 0 : rounded)
                  : borderRadius),
          child: InkWell(
              borderRadius: borderRadius == null
                  ? BorderRadius.circular(rounded == null ? 0 : rounded)
                  : borderRadius,
              onTap: onTap,
              child: Padding(
                padding: padding == null ? EdgeInsets.all(10.0) : padding,
                child: child,
              ))),
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: image,
          gradient: gradient,
          boxShadow: [
            BoxShadow(
                color: shadowColor == null
                    ? Colors.white
                    : shadowColor.withOpacity(0.4),
                blurRadius: blurRadius == null ? 0 : blurRadius,
                spreadRadius: spreadRadius == null ? 0.0 : spreadRadius,
                offset: offset == null ? Offset(0, 0) : offset),
          ],
          // color: shadowColor,
          borderRadius: borderRadius == null
              ? BorderRadius.circular(rounded == null ? 0 : rounded)
              : borderRadius),
    );
  }
}
