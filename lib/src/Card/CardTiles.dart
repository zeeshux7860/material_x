import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class CardTile extends StatelessWidget {
  final double blurRadius;
  final Color shadowColor;
  final double rounded;
  final Color color;
  final Color lineColor;
  final EdgeInsetsGeometry padding;
  final Widget title;
  final Function onTap;
  final Widget subtitle;
  final EdgeInsetsGeometry margin;
  final Radius bottomLeft;
  final Radius bottomRight;
  const CardTile(
      {Key key,
      this.bottomLeft = Radius.zero,
      this.bottomRight = Radius.zero,
      this.blurRadius = 12,
      this.shadowColor = Colors.grey,
      this.rounded = 10,
      this.color = Colors.white,
      this.lineColor = Colors.black,
      this.padding = const EdgeInsets.all(0.0),
      this.title,
      this.subtitle,
      this.margin,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MxContainer(
      onTap: onTap,
      margin: margin,
      blurRadius: blurRadius,
      shadowColor: shadowColor,
      rounded: rounded,
      color: color,
      padding: padding,
      child: IntrinsicHeight(
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Flexible(
              flex: 2,
              child: MxContainer(
                borderRadius: BorderRadius.only(
                  bottomLeft: bottomLeft,
                  bottomRight: bottomRight,
                ),
                margin: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
                color: lineColor,
                width: 20.0,
              )),
          Flexible(
            flex: 10,
            child: MxContainer(
                padding: EdgeInsets.all(15),
                child: <Widget>[
                  title == null ? Container() : title ?? Container(),
                  title == null
                      ? Container()
                      : 7.0.sizedHeight() ?? Container(),
                  subtitle == null ? Container() : subtitle ?? Container()
                ].mxcolumnSS()),
          )
        ]),
      ),
    );
  }
}
