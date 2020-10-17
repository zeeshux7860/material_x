import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

XListView xListView = XListView();
XListViewHorizontal xListViewHorizontal = XListViewHorizontal();
XListViewHCSP xListViewHCSP = XListViewHCSP();
XListViewHNSP xListViewHNSP = XListViewHNSP();
XListViewVertical xListViewVertical = XListViewVertical();
XListViewVCSP xListViewVCSP = XListViewVCSP();
XListViewVNSP xListViewVNSP = XListViewVNSP();

class XListView {
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
  XListView({
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
    return list.xListView(
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

class XListViewHorizontal {
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
  XListViewHorizontal({
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
    return list.xListViewHorizontal(
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

class XListViewHCSP {
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

  XListViewHCSP({
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
    return list.xListViewHorizontalClampingScrollPhysics(
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

class XListViewHNSP {
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

  XListViewHNSP({
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
    return list.xListViewHorizontalNeverScrollableScrollPhysics(
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

class XListViewVertical {
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
  XListViewVertical({
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
    return list.xListViewVertical(
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

class XListViewVCSP {
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

  XListViewVCSP({
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
    return list.xListViewVerticalClampingScrollPhysics(
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

class XListViewVNSP {
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

  XListViewVNSP({
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
    return list.xListViewHorizontalNeverScrollableScrollPhysics(
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
