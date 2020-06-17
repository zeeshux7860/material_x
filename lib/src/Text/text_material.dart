import 'package:flutter/material.dart';

class Textmaterial extends StatelessWidget {
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final String fontFamily;
  const Textmaterial(
      {Key key,
      this.fontWeight,
      this.color,
      @required this.text,
      this.fontsize,
      this.fontFamily})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontsize,
          fontFamily: fontFamily),
    );
  }
}
