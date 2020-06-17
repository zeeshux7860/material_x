import 'package:material_x/material_x.dart';

extension ShapeMx on BorderRadiusGeometry {
  ShapeBorder mxShapeBorder({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: this, side: side);
  }
}
