import 'package:flutter/material.dart';

extension Lists on List<Widget> {
  Widget mxStack(
          {AlignmentGeometry alignment = AlignmentDirectional.topStart,
          StackFit fit = StackFit.loose,
          Key key,
          overflow,
          TextDirection textDirection}) =>
      Stack(
        key: key,
        overflow: overflow,
        textDirection: textDirection,
        fit: fit,
        alignment: alignment,
        children: this,
      );
}

back(context) {
  Navigator.pop(context);
}
