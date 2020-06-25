import 'package:flutter/material.dart';

class MaterialXButton extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onTap;
  final double rounded;
  final double height;
  final double width;
  final double elavation;
  final double spreadRadius;

  const MaterialXButton(
      {Key key,
      @required this.color,
      @required this.child,
      @required this.onTap,
      this.rounded,
      @required this.width,
      @required this.height,
      this.elavation,
      this.spreadRadius})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: color.withOpacity(0.4),
                blurRadius: elavation == null ? 10.0 : elavation ?? 10.0,
                spreadRadius: spreadRadius == null ? 0.0 : spreadRadius ?? 0.0,

                /// if u want elavation so pass value more tham 5
                offset: elavation == null ? Offset(0, 0) : Offset(0, 8)),
          ],
          color: color,
          borderRadius:
              BorderRadius.circular(rounded == null ? 0 : rounded ?? 0)),
      child: Material(
        shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(rounded == null ? 0 : rounded ?? 0)),
        color: color,
        child: InkWell(
          borderRadius:
              BorderRadius.circular(rounded == null ? 0 : rounded ?? 0),
          onTap: onTap,
          child: Center(child: child),
        ),
      ),
    );
  }
}
