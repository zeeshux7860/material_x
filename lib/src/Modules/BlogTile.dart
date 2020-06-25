import 'package:flutter/material.dart';
import 'package:material_x/src/Container/Container.dart';

class MxBlogTile extends StatelessWidget {
  final Function onTap;
  final Widget child;
  final Color backSideBackgroundColor;
  final double cardElevation;
  final double imageHeight;
  final Widget title;
  final Widget subTitle;
  final Widget trailing;
  final ShapeBorder shape;
  final Widget leading;
  final EdgeInsetsGeometry margin;
  final Function tileOnTap;
  final double backrounded;
  final DecorationImage image;
  final Color color;
  final BorderRadiusGeometry backBorderRadius;
  final double rounded;
  const MxBlogTile(
      {Key key,
      this.onTap,
      this.child,
      this.backSideBackgroundColor,
      this.cardElevation,
      this.imageHeight,
      this.title,
      this.subTitle,
      this.trailing,
      this.leading,
      this.margin,
      this.tileOnTap,
      this.image,
      this.backrounded,
      this.backBorderRadius,
      this.shape,
      this.color,
      this.rounded})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MxContainer(
      rounded: backrounded,
      onTap: () {},
      color: backSideBackgroundColor,
      margin: margin,
      borderRadius: backBorderRadius,
      child: Card(
        shape: shape,
        color: color,
        elevation: cardElevation,
        child: Column(
          children: <Widget>[
            MxContainer(
              rounded: rounded,
              onTap: onTap,
              child: child,
              height: imageHeight,
              width: MediaQuery.of(context).size.width,
              image: image,
            ),
            ListTile(
              onTap: tileOnTap,
              title: title,
              subtitle: subTitle,
              trailing: trailing,
              leading: leading,
            )
          ],
        ),
      ),
    );
  }
}
