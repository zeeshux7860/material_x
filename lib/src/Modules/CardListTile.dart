import 'package:flutter/material.dart';
import 'package:material_x/src/Container/Container.dart';

class XCardListTile extends StatelessWidget {
  final double width;
  final Widget title;
  final Widget subTitle;
  final Widget leading;
  final Function onTap;
  final Color color;
  final double rounded;
  final double blurRadius;
  final Widget trailing;
  final EdgeInsetsGeometry padding;
  final DecorationImage image;
  const XCardListTile(
      {Key key,
      this.width,
      this.title,
      this.subTitle,
      this.leading,
      this.onTap,
      this.color,
      this.rounded = 10.0,
      this.blurRadius = 15,
      this.trailing,
      this.padding,
      this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return XContainer(
        image: image,
        padding: padding,
        rounded: rounded,
        width: width,
        onTap: onTap,
        blurRadius: blurRadius,
        shadowColor: color,
        color: color,
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subTitle,
          trailing: trailing,
        ));
  }
}
