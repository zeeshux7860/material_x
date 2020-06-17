import 'package:flutter/foundation.dart';
import 'package:material_x/material_x.dart';

class BanTile extends StatelessWidget {
  final Widget centerTitle;
  final Widget leftTile;
  final Widget rightTile;
  final Widget body;

  const BanTile(
      {Key key, this.centerTitle, this.leftTile, this.rightTile, this.body})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        leftTile == null ? Container() : leftTile,

        //"Monday 27 july 2000".textMaterialColorWhite(),
        centerTitle == null ? Container() : centerTitle,
        rightTile == null ? Container() : rightTile,
      ].mxRowCSB(),
      //  25.0.sizedHeight(),
      body == null ? Container() : body,
      //20.0.sizedHeight(),
    ].mxcolumn();
  }
}
