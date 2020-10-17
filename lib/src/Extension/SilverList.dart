import 'package:material_x/material_x.dart';

extension XSliverGrids on Widget Function(
    BuildContext, int, Animation<double>) {
  Widget xSliverGrid(
      {@required ScrollController controller,
      @required int itemCount,
      @required SliverGridDelegate gridDelegate,
      bool reAnimateOnVisibility = false,
      Key key,
      Duration showItemDuration = const Duration(milliseconds: 200),
      Duration showItemInterval = const Duration(milliseconds: 100),
      Duration delay = const Duration(milliseconds: 150),
      double visibleFraction = 0.025}) {
    return XSliverGrid(
      controller: controller,
      key: key,
      delay: delay,
      showItemInterval: showItemInterval,
      showItemDuration: showItemDuration,
      itemCount: itemCount,
      itemBuilder: this,
      visibleFraction: visibleFraction,
      reAnimateOnVisibility: reAnimateOnVisibility,
      gridDelegate: gridDelegate,
    );
  }
}

extension XSliverLists on Widget Function(
    BuildContext, int, Animation<double>) {
  Widget xSliverList(
      {@required ScrollController controller,
      @required int itemCount,
      final SliverGridDelegate gridDelegate,
      bool reAnimateOnVisibility = false,
      Key key,
      Duration showItemDuration = const Duration(milliseconds: 200),
      Duration showItemInterval = const Duration(milliseconds: 100),
      Duration delay = const Duration(milliseconds: 150),
      double visibleFraction = 0.025}) {
    return XSliverList(
      controller: controller,
      key: key,
      delay: delay,
      showItemInterval: showItemInterval,
      showItemDuration: showItemDuration,
      itemCount: itemCount,
      itemBuilder: this,
      visibleFraction: visibleFraction,
      reAnimateOnVisibility: reAnimateOnVisibility,
    );
  }
}

extension SilverpaddinngX on Widget {
  xsp(
    EdgeInsetsGeometry padding,
  ) {
    return SliverPadding(
      padding: padding,
      sliver: this,
    );
  }
}
