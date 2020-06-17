import 'package:flutter/material.dart';
import 'package:material_x/src/Text/h_tag.dart';

class MxExpansionTile extends StatelessWidget {
  final Color expansionTileTitleColor;
  final Color expansionTileSubTitleColor;
  final String expansionTileTitle;
  final String expansionTileSubTitle;
  final List<Widget> expansionchildren;

  const MxExpansionTile(
      {Key key,
      this.expansionTileTitleColor,
      this.expansionTileSubTitleColor,
      this.expansionTileTitle,
      this.expansionTileSubTitle,
      this.expansionchildren})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return expansionTileTitle == null
        ? new Container()
        : ExpansionTile(
            title: new H2(
              text: expansionTileTitle,
              color: expansionTileTitleColor,
            ),
            subtitle: new H5(
              text: expansionTileSubTitle,
              color: expansionTileSubTitleColor,
            ),
            children:
                expansionchildren == null ? <Widget>[] : expansionchildren);
  }
}
