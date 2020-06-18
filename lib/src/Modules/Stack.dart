import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

class MxStack {
  final AlignmentGeometry alignment;
  final StackFit fit;
  final Key key;
  final Overflow overflow;
  final TextDirection textDirection;

  MxStack(
      {this.alignment, this.fit, this.key, this.overflow, this.textDirection});

  Widget list(List<Widget> list) {
    return list.mxStack(
      key: key,
      textDirection: textDirection,
    );
  }
}

MxStack mxStack = MxStack();
MxCustomScrollView mxCustomScrollView = MxCustomScrollView();

class MxCustomScrollView {
  Key key;
  Axis scrollDirection = Axis.vertical;
  bool reverse = false;
  ScrollController controller;
  bool primary;
  ScrollPhysics physics;
  bool shrinkWrap = false;
  Key center;
  double anchor = 0.0;
  double cacheExtent;
  int semanticChildCount;
  DragStartBehavior dragStartBehavior = DragStartBehavior.start;

  Widget list(List<Widget> list) {
    return list.mxCustomScrollView(
      anchor: anchor ?? 0.0,
      cacheExtent: cacheExtent,
      center: center,
      controller: controller,
      dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
      key: key,
      physics: physics,
      primary: primary,
      reverse: reverse ?? false,
      scrollDirection: scrollDirection ?? Axis.vertical,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap ?? false,
    );
  }
}
