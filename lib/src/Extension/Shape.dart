import 'package:material_x/material_x.dart';

extension ShapeX on BorderRadiusGeometry {
  ShapeBorder xShapeBorder({BorderSide side = BorderSide.none}) {
    return RoundedRectangleBorder(borderRadius: this, side: side);
  }
}
