import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class MxCardBanner extends StatelessWidget {
  final Function onTap;
  final Color color;
  final Color shadowColor;
  final Widget title;
  final Widget subTitle;
  final double rounded;
  final double blurRadius;
  final double spreadRadius;
  final double width;
  final Widget rightSideChild;
  final Widget button;
  final EdgeInsetsGeometry margin;

  const MxCardBanner(
      {Key key,
      this.onTap,
      @required this.color,
      this.shadowColor,
      @required this.title,
      @required this.subTitle,
      this.rounded,
      this.blurRadius,
      this.spreadRadius,
      this.width,
      this.rightSideChild,
      this.margin,
      this.button})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MxContainer(
      margin: margin,
      onTap: onTap,
      rounded: rounded,
      padding: EdgeInsets.all(20.0),
      blurRadius: blurRadius,
      spreadRadius: spreadRadius,
      shadowColor: shadowColor,
      color: color,
      child: Row(
        mainAxisAlignment: rightSideChild == null
            ? MainAxisAlignment.start
            : MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                title == null ? Container() : title,
                5.0.sizedHeight(),
                subTitle == null ? new Container() : subTitle,
                10.0.sizedHeight(),
                button == null ? new Container() : button
              ],
            ),
          ),
          rightSideChild == null ? Container() : rightSideChild
        ],
      ),
    );
  }
}
