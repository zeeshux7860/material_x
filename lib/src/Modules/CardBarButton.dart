import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class CardBarButton extends StatelessWidget {
  final double height;
  final double width;
  final double eleavation;
  final Color color;
  final Color shadowColor;
  final Function onTap;
  final double roundedCorner;
  final double middleSpace;
  final Widget title;
  final Widget subtitle;
  const CardBarButton(
      {Key key,
      this.color = Colors.white,
      this.eleavation = 12,
      this.height = 80,
      this.width = 80,
      this.shadowColor = Colors.grey,
      this.onTap,
      this.roundedCorner = 5,
      this.middleSpace = 8,
      @required this.title,
      @required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainer(
      rounded: roundedCorner,
      height: height,
      width: width,
      blurRadius: eleavation,
      shadowColor: shadowColor,
      color: color,
      onTap: onTap,
      //width: 40,
      //  padding: const EdgeInsets.all(10.0),
      child: <Widget>[title, middleSpace.sizedHeight(), subtitle].xcolumnCC(),
    );
  }
}
