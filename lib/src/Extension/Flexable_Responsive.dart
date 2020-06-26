import 'package:material_x/material_x.dart';

extension ColoumRes on Widget {
  Widget mxFlexableRes(bool condition,
      {FlexFit fit = FlexFit.loose, int flex = 1, Key key}) {
    if (condition) {
      return this.mxFlexable(fit: fit, flex: flex, key: key);
    } else {
      return this;
    }
  }
}

Widget mxResponsive(condition, {Widget mxColumn, Widget mxRow}) {
  if (condition) {
    return mxColumn;
  } else {
    return mxRow;
  }
}
