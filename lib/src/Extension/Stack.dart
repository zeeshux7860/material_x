import 'package:flutter/material.dart';

extension Lists on List<Widget> {
  Widget mxStack(
          {AlignmentGeometry alignment,
          StackFit fit,
          Key key,
          Overflow overflow,
          TextDirection textDirection}) =>
      Stack(
        key: key,
        overflow: overflow ?? Overflow.clip,
        textDirection: textDirection,
        fit: fit ?? StackFit.loose,
        alignment: alignment ?? AlignmentDirectional.topStart,
        children: this,
      );
}

back(context) {
  Navigator.pop(context);
}
