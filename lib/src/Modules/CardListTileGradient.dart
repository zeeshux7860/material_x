import 'package:flutter/material.dart';
import 'package:material_x/src/Container/GradientContainer.dart';

class MxCardListTileGradient extends StatelessWidget {
  final double width;
  final Widget title;
  final Widget subTitle;
  final Widget leading;
  final Function onTap;
  final Gradient gradient;
  final Color shadowColor;
  final double blurRadius;
  final double rounded;
  final Widget trailing;
  const MxCardListTileGradient(
      {Key key,
      this.width = 300,
      this.title,
      this.subTitle,
      this.leading,
      this.onTap,
      @required this.gradient,
      this.shadowColor,
      this.blurRadius = 12,
      this.rounded,
      this.trailing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MxContainerGradient(
        rounded: rounded,
        width: width,
        onTap: onTap,
        blurRadius: blurRadius,
        shadowColor: shadowColor,
        gradient: gradient,
        child: ListTile(
          leading: leading,
          title: title,
          subtitle: subTitle,
          trailing: trailing,
        ));
  }
}
