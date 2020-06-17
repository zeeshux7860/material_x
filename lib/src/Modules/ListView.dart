import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

MxListView mxListView = MxListView();
MxListViewHorizontal mxListViewHorizontal = MxListViewHorizontal();
MxListViewHCSP mxListViewHCSP = MxListViewHCSP();
MxListViewHNSP mxListViewHNSP = MxListViewHNSP();
MxListViewVertical mxListViewVertical = MxListViewVertical();
MxListViewVCSP mxListViewVCSP = MxListViewVCSP();
MxListViewVNSP mxListViewVNSP = MxListViewVNSP();

class MxListView {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  ScrollPhysics physics;
  bool primary;
  bool reverse;
  int semanticChildCount;
  Axis scrollDirection;
  bool shrinkWrap;
  MxListView({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.physics,
    this.primary,
    this.reverse = false,
    this.scrollDirection = Axis.vertical,
    this.semanticChildCount,
    this.shrinkWrap = false,
  });
  Widget list(List<Widget> list) {
    return list.mxListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: physics,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap,
      scrollDirection: scrollDirection,
    );
  }
}

class MxListViewHorizontal {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  ScrollPhysics physics;
  bool primary;
  bool reverse;
  int semanticChildCount;
  bool shrinkWrap;
  MxListViewHorizontal({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.physics,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
    this.shrinkWrap = false,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewHorizontal(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: physics,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap,
    );
  }
}

class MxListViewHCSP {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  bool primary;
  bool reverse;
  int semanticChildCount;

  MxListViewHCSP({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewHorizontalClampingScrollPhysics(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
    );
  }
}

class MxListViewHNSP {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  bool primary;
  bool reverse;
  int semanticChildCount;

  MxListViewHNSP({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewHorizontalNeverScrollableScrollPhysics(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
    );
  }
}

class MxListViewVertical {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  ScrollPhysics physics;
  bool primary;
  bool reverse;
  int semanticChildCount;
  bool shrinkWrap;
  MxListViewVertical({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.physics,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
    this.shrinkWrap = false,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewVertical(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: physics,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: shrinkWrap,
    );
  }
}

class MxListViewVCSP {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  bool primary;
  bool reverse;
  int semanticChildCount;

  MxListViewVCSP({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewVerticalClampingScrollPhysics(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
    );
  }
}

class MxListViewVNSP {
  bool addAutomaticKeepAlives;
  bool addRepaintBoundaries;
  bool addSemanticIndexes; //todo
  double cacheExtent;
  ScrollController controller;
  DragStartBehavior dragStartBehavior;
  double itemExtent;
  Key key;
  EdgeInsetsGeometry padding;
  bool primary;
  bool reverse;
  int semanticChildCount;

  MxListViewVNSP({
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.cacheExtent,
    this.controller,
    this.dragStartBehavior = DragStartBehavior.start,
    this.itemExtent,
    this.key,
    this.padding,
    this.primary,
    this.reverse = false,
    this.semanticChildCount,
  });
  Widget list(List<Widget> list) {
    return list.mxListViewHorizontalNeverScrollableScrollPhysics(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
    );
  }
}
