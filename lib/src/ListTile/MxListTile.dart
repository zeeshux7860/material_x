import 'package:flutter/material.dart';
import 'package:material_x/src/Text/text_material.dart';

class MXListTile extends StatefulWidget {
  final Color selectedColor;
  final Color unSelectedColor;
  final bool selected;
  final FontWeight fontWeight;
  final IconData icon;
  final String text;
  final double iconSize;
  final Function onTap;
  final Widget trailing;
  final Widget subtitle;
  const MXListTile(
      {Key key,
      @required this.selectedColor,
      @required this.unSelectedColor,
      @required this.selected,
      this.fontWeight,
      this.icon,
      @required this.text,
      this.iconSize,
      this.onTap,
      this.trailing,
      this.subtitle})
      : super(key: key);

  @override
  _MXListTileState createState() => _MXListTileState();
}

class _MXListTileState extends State<MXListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      iconColor:
          !widget.selected ? widget.unSelectedColor : widget.selectedColor,
      selectedColor:
          !widget.selected ? widget.unSelectedColor : widget.selectedColor,
      textColor:
          !widget.selected ? widget.unSelectedColor : widget.selectedColor,
      child: ListTile(
          subtitle: widget.subtitle,
          onTap: widget.onTap,
          trailing: widget.trailing,
          title: new Textmaterial(
            text: widget.text,
            fontWeight: widget.fontWeight,
          ),
          // enabled: widget.selected,
          leading: widget.icon == null
              ? null
              : Icon(
                  widget.icon,
                  size: widget.iconSize,
                )),
    );
  }
}
