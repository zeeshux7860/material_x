import 'package:flutter/material.dart';

class XCircleView extends StatelessWidget {
  final double pagerHeight;
  final double scale;
  final double elevation;
  final Color borderColor;
  final double borderWidth;
  final Widget child;

  const XCircleView(
      {Key key,
      this.pagerHeight,
      this.scale,
      this.elevation,
      this.borderColor,
      this.borderWidth,
      this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: pagerHeight * scale,
        width: pagerHeight * scale,
        child: Card(
          elevation: elevation,
          clipBehavior: Clip.antiAlias,
          shape: CircleBorder(
              side: BorderSide(color: borderColor, width: borderWidth)),
          child: child,
        ),
      ),
    );
  }
}
