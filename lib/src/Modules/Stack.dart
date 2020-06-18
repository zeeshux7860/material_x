import 'package:material_x/material_x.dart';

class MxStack {
  final AlignmentGeometry alignment;
  final StackFit fit;
  final Key key;
  final Overflow overflow;
  final TextDirection textDirection;

  MxStack(
      this.alignment, this.fit, this.key, this.overflow, this.textDirection);

  Widget list(List<Widget> list) {
    return list.mxStack(
      key: key,
      textDirection: textDirection,
    );
  }
}
