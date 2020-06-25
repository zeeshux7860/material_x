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
        leftTile ?? Container(),

        //"Monday 27 july 2000".textMaterialColorWhite(),
        centerTitle ?? Container(),
        rightTile ?? Container(),
      ].mxRowCSB(),
      //  25.0.sizedHeight(),
      body ?? Container(),
      //20.0.sizedHeight(),
    ].mxcolumn();
  }
}
