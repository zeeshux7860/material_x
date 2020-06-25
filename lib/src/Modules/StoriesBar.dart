import 'package:flutter/material.dart';
import 'package:material_x/src/Container/Container.dart';
import 'package:material_x/src/Text/text_material.dart';

class MxStorieBar extends StatelessWidget {
  final Color color;
  final Color circleColor;
  final double circleRadius;
  final Widget child;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final Color textColor;
  final double verticalSpace;
  final Function onTap;
  final ImageProvider<dynamic> backgroundImage;

  const MxStorieBar(
      {Key key,
      this.color,
      this.circleRadius,
      this.child,
      @required this.text,
      this.backgroundImage,
      this.circleColor,
      this.fontSize,
      this.fontWeight,
      this.fontFamily,
      this.textColor,
      this.verticalSpace,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MxContainer(
        color: color,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: circleRadius,
              backgroundColor: circleColor,
              backgroundImage: backgroundImage,
              child: InkWell(onTap: onTap, child: child),
            ),
            SizedBox(
              height: verticalSpace ?? 5,
            ),
            Textmaterial(
              text: text,
              fontsize: fontSize,
              fontWeight: fontWeight,
              color: textColor,
              fontFamily: fontFamily,
            )
          ],
        ));
  }
}
