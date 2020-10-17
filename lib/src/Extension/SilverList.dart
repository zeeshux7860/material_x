import 'package:material_x/material_x.dart';

extension MxSliverGrids on Widget Function(
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
    return MxSliverGrid(
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

extension MxSliverLists on Widget Function(
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
    return MxSliverList(
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

extension SilverpaddinngMx on Widget {
  xsp(
    EdgeInsetsGeometry padding,
  ) {
    return SliverPadding(
      padding: padding,
      sliver: this,
    );
  }
}
