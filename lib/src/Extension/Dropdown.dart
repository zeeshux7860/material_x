import 'package:flutter/material.dart';

class XDropdownLab extends StatefulWidget {
  final String name;
  final double fontSize;
  final Color color;
  final double lableSize;
  final Color textColor;
  final List<String> list;
  final void Function(String) onChanged;
  final String dropdownValue;
  final TextStyle style;
  const XDropdownLab({
    Key key,
    this.name,
    this.color,
    this.textColor,
    this.fontSize,
    this.lableSize,
    this.list,
    this.onChanged,
    this.dropdownValue,
    this.style,
  }) : super(key: key);

  @override
  _XDropdownLabState createState() => _XDropdownLabState();
}

class _XDropdownLabState extends State<XDropdownLab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 5.0),
          child: new Text(
            'Select ' + widget.name,
            style: TextStyle(
              fontSize: widget.lableSize == null ? 15.0 : widget.lableSize,
            ),
          ),
        ),
        Container(
            width: 100,
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.all(10.0),
            color: widget.color == null ? Colors.grey[100] : widget.color,
            child: DropdownButton(
              value: widget.dropdownValue,
              icon: Container(),
              iconSize: 24,
              elevation: 16,
              style: widget.style,
              underline: Container(
                height: 2,
                // color: Colors.deepPurpleAccent,
              ),
              onChanged: widget.onChanged,
              items: widget.list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }
}

extension Dropdowns on List<String> {
  Widget xDropdownLabel({
    @required final String name,
    final double fontSize,
    final Color color,
    final double lableSize,
    final Color textColor,
    final Key key,
    final TextStyle style,
    @required final void Function(String) onChanged,
    @required final String dropdownValue,
  }) {
    return XDropdownLab(
      color: color,
      fontSize: fontSize,
      key: key,
      lableSize: lableSize,
      name: name,
      textColor: textColor,
      onChanged: onChanged,
      list: this,
      dropdownValue: dropdownValue,
      style: style,
    );
  }
}
