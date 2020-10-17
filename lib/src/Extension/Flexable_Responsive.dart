import 'package:material_x/material_x.dart';

extension ColoumRes on Widget {
  Widget xFlexableRes(bool condition,
      {FlexFit fit = FlexFit.loose, int flex = 1, Key key}) {
    if (condition) {
      return this.xFlexable(fit: fit, flex: flex, key: key);
    } else {
      return this;
    }
  }
}

Widget xResponsive(condition, {Widget xColumn, Widget xRow}) {
  if (condition) {
    return xColumn;
  } else {
    return xRow;
  }
}
