import 'package:flutter/material.dart';

class TextFiledMaterial extends StatelessWidget {
  final String name;
  final double fontSize;
  final TextEditingController controller;
  final Color color;
  final double lableSize;
  final Color textColor;
  final bool obscureText;
  const TextFiledMaterial(
      {Key key,
      this.name,
      this.controller,
      this.color,
      this.textColor,
      this.fontSize,
      this.lableSize,
      this.obscureText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
          child: new Text(
            'Enter Your ' + name,
            style: TextStyle(
              fontSize: lableSize == null ? 15.0 : lableSize,
            ),
          ),
        ),
        new Container(
          margin: EdgeInsets.all(10.0),
          color: color == null ? Colors.grey[100] : color,
          child: new TextFormField(
            style: TextStyle(
              fontSize: fontSize,
              color: textColor == null ? Colors.black : textColor,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter ' + name;
              }
              return null;
            },
            controller: controller,
            obscureText: obscureText == null ? false : obscureText,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: fontSize,
                    color: textColor == null ? Colors.black : textColor),
                contentPadding:
                    EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
                hintText: ' ' + name,
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}

class TextFiledMaterialRounded extends StatelessWidget {
  final Color enableColor;
  final String name;
  final double fontSize;
  final TextEditingController controller;
  final Color color;
  final double lableSize;
  final Color textColor;
  final Color focusColor;
  const TextFiledMaterialRounded(
      {Key key,
      this.name,
      this.controller,
      this.color,
      this.textColor,
      this.fontSize,
      this.lableSize,
      this.enableColor,
      this.focusColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 5.0),
          child: new Text(
            'Enter Your ' + name,
            style: TextStyle(
              fontSize: lableSize == null ? 15.0 : lableSize,
            ),
          ),
        ),
        new Container(
          margin: EdgeInsets.all(10.0),
          color: color == null ? Colors.grey[100] : color,
          child: new TextFormField(
            style: TextStyle(
              fontSize: fontSize,
              color: textColor == null ? Colors.black : textColor,
            ),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter ' + name;
              }
              return null;
            },
            controller: controller,
            decoration: InputDecoration(
                hintStyle: TextStyle(
                    fontSize: fontSize,
                    color: textColor == null ? Colors.black : textColor),
                contentPadding:
                    EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
                hintText: ' ' + name,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color:
                            enableColor == null ? Colors.black : enableColor)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                        color: focusColor == null ? Colors.white : focusColor)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.white))),
          ),
        ),
      ],
    );
  }
}
