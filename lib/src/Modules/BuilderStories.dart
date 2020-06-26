import 'package:flutter/material.dart';
import 'package:material_x/src/Container/Container.dart';
import 'package:material_x/src/Modules/StoriesBar.dart';

class MxStoriesBuilder extends StatelessWidget {
  final Color addCircleColor;
  final String addText;
  final FontWeight addtextFontWeight;
  final Color addBackGroundColor;
  final String fontfamily;
  final Color backGroundColor;
  final Color addtextColor;
  final double addTextFontSize;
  final double backGroundHeight;
  final Widget addChild;
  final int itemCount;
  final Function addOnTap;
  final Widget Function(BuildContext, int) itemBuilder;

  const MxStoriesBuilder(
      {Key key,
      this.addCircleColor,
      @required this.addText,
      this.addtextFontWeight,
      this.fontfamily,
      this.backGroundColor,
      this.addBackGroundColor,
      this.addtextColor,
      this.addTextFontSize,
      @required this.backGroundHeight,
      @required this.itemBuilder,
      @required this.itemCount,
      this.addChild,
      this.addOnTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new MxContainer(
        height: backGroundHeight,
        color: backGroundColor,
        child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MxStorieBar(
                onTap: addOnTap,
                verticalSpace: 10,
                circleRadius: 25,
                circleColor: addCircleColor,
                color: addBackGroundColor,
                text: addText,
                textColor: addtextColor,
                fontWeight: addtextFontWeight,
                child: addChild),
            new ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: itemCount,
                itemBuilder: itemBuilder)
          ],
        ));
  }
}
