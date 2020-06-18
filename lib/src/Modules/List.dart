import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension MxListViews on List<Widget> {
  Widget mxListView({
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    double itemExtent,
    Key key,
    EdgeInsetsGeometry padding,
    ScrollPhysics physics,
    bool primary,
    bool reverse = false,
    int semanticChildCount,
    Axis scrollDirection = Axis.vertical,
    bool shrinkWrap = false,
  }) {
    return ListView(
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
      children: this,
    );
  }

  Widget mxListViewVertical({
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    double itemExtent,
    Key key,
    EdgeInsetsGeometry padding,
    ScrollPhysics physics,
    bool primary,
    bool reverse = false,
    int semanticChildCount,
    bool shrinkWrap = false,
  }) {
    return ListView(
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
      scrollDirection: Axis.vertical,
      children: this,
    );
  }

  Widget mxListViewHorizontal({
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    double itemExtent,
    Key key,
    EdgeInsetsGeometry padding,
    ScrollPhysics physics,
    bool primary,
    bool reverse = false,
    int semanticChildCount,
    bool shrinkWrap = false,
  }) {
    return ListView(
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
      scrollDirection: Axis.horizontal,
      children: this,
    );
  }

  Widget mxListViewHorizontalClampingScrollPhysics({
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    double itemExtent,
    Key key,
    EdgeInsetsGeometry padding,
    bool primary,
    bool reverse = false,
    int semanticChildCount,
  }) {
    return ListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: ClampingScrollPhysics(),
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: this,
    );
  }

  Widget mxListViewVerticalClampingScrollPhysics({
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    double itemExtent,
    Key key,
    EdgeInsetsGeometry padding,
    bool primary,
    bool reverse = false,
    int semanticChildCount,
  }) {
    return ListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: ClampingScrollPhysics(),
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: this,
    );
  }

  Widget mxListViewVerticalNeverScrollableScrollPhysics(
      {bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      double cacheExtent,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      double itemExtent,
      Key key,
      EdgeInsetsGeometry padding,
      bool primary,
      bool reverse = false,
      int semanticChildCount,
      ScrollPhysics parent}) {
    return ListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: NeverScrollableScrollPhysics(parent: parent),
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: this,
    );
  }

  Widget mxListViewHorizontalNeverScrollableScrollPhysics(
      {bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      double cacheExtent,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      double itemExtent,
      Key key,
      EdgeInsetsGeometry padding,
      bool primary,
      bool reverse = false,
      int semanticChildCount,
      ScrollPhysics parent}) {
    return ListView(
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      cacheExtent: cacheExtent,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      itemExtent: itemExtent,
      key: key,
      padding: padding,
      physics: NeverScrollableScrollPhysics(parent: parent),
      primary: primary,
      reverse: reverse,
      semanticChildCount: semanticChildCount,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: this,
    );
  }

  Widget mxCustomScrollView({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    Key center,
    double anchor = 0.0,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return CustomScrollView(
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
      slivers: this,
    );
  }
}
