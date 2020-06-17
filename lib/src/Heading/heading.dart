import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

class HeaderTitle extends StatelessWidget {
  final Widget title;
  final Widget subtitle;
  final EdgeInsetsGeometry padding;
  final double middileSpace;
  const HeaderTitle(
      {Key key,
      this.title,
      this.subtitle,
      this.padding = const EdgeInsets.all(20.0),
      this.middileSpace = 5})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: <Widget>[title, middileSpace.sizedHeight(), subtitle].mxcolumnSS(),
    );
  }
}
