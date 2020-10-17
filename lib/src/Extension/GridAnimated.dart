import 'package:material_x/material_x.dart';

extension AniamtedMx on Widget Function(BuildContext, int, Animation<double>) {
  Widget xGridAnimated({
    /// Start animation after (default zero)
    final Duration delay = Duration.zero,

    /// Show each item through
    final Duration showItemInterval = const Duration(milliseconds: 50),

    /// Animation duration
    final Duration showItemDuration = const Duration(milliseconds: 100),

    /// A fraction in the range \[0, 1\] that represents what proportion of the
    /// widget is visible (assuming rectangular bounding boxes).
    ///
    /// 0 means not visible; 1 means fully visible.
    final double visibleFraction = 0.001,

    /// Hide the element when it approaches the
    /// frame of the screen so that in the future,
    /// when it falls into the visibility range - reproduce animation again
    final bool reAnimateOnVisibility = true,

    /// Called, as needed, to build list item widgets.
    ///
    /// List items are only built when they're scrolled into view.
    final LiveListItemBuilder itemBuilder,

    /// The number of items the list will start with.
    ///
    /// The appearance of the initial items is not animated. They
    /// are created, as needed, by [itemBuilder] with an animation parameter
    /// of [kAlwaysCompleteAnimation].
    final int itemCount,

    /// The axis along which the scroll view scrolls.
    ///
    /// Defaults to [Axis.vertical].
    final Axis scrollDirection = Axis.vertical,

    /// Whether the scroll view scrolls in the reading direction.
    ///
    /// For example, if the reading direction is left-to-right and
    /// [scrollDirection] is [Axis.horizontal], then the scroll view scrolls from
    /// left to right when [reverse] is false and from right to left when
    /// [reverse] is true.
    ///
    /// Similarly, if [scrollDirection] is [Axis.vertical], then the scroll view
    /// scrolls from top to bottom when [reverse] is false and from bottom to top
    /// when [reverse] is true.
    ///
    /// Defaults to false.
    final bool reverse = false,

    /// An object that can be used to control the position to which this scroll
    /// view is scrolled.
    ///
    /// Must be null if [primary] is true.
    ///
    /// A [ScrollController] serves several purposes. It can be used to control
    /// the initial scroll position (see [ScrollController.initialScrollOffset]).
    /// It can be used to control whether the scroll view should automatically
    /// save and restore its scroll position in the [PageStorage] (see
    /// [ScrollController.keepScrollOffset]). It can be used to read the current
    /// scroll position (see [ScrollController.offset]), or change it (see
    /// [ScrollController.animateTo]).
    final ScrollController controller,

    /// Whether this is the primary scroll view associated with the parent
    /// [PrimaryScrollController].
    ///
    /// On iOS, this identifies the scroll view that will scroll to top in
    /// response to a tap in the status bar.
    ///
    /// Defaults to true when [scrollDirection] is [Axis.vertical] and
    /// [controller] is null.
    final bool primary,

    /// How the scroll view should respond to user input.
    ///
    /// For example, determines how the scroll view continues to animate after the
    /// user stops dragging the scroll view.
    ///
    /// Defaults to matching platform conventions.
    final ScrollPhysics physics,

    /// Whether the extent of the scroll view in the [scrollDirection] should be
    /// determined by the contents being viewed.
    ///
    /// If the scroll view does not shrink wrap, then the scroll view will expand
    /// to the maximum allowed size in the [scrollDirection]. If the scroll view
    /// has unbounded constraints in the [scrollDirection], then [shrinkWrap] must
    /// be true.
    ///
    /// Shrink wrapping the content of the scroll view is significantly more
    /// expensive than expanding to the maximum allowed size because the content
    /// can expand and contract during scrolling, which means the size of the
    /// scroll view needs to be recomputed whenever the scroll position changes.
    ///
    /// Defaults to false.
    final bool shrinkWrap = false,

    /// The amount of space by which to inset the children.
    final EdgeInsetsGeometry padding,

    /// A delegate that controls the layout of the children within the [GridView].
    ///
    /// The [GridView], [GridView.builder], and [GridView.custom]
    /// constructors let you specify this
    /// delegate explicitly. The other constructors create a [gridDelegate]
    /// implicitly.
    @required SliverGridDelegate gridDelegate,

    /// Whether to wrap each child in an [AutomaticKeepAlive].
    ///
    /// Typically, children in lazy list are wrapped in [AutomaticKeepAlive]
    /// widgets so that children can use [KeepAliveNotification]s to preserve
    /// their state when they would otherwise be garbage collected off-screen.
    ///
    /// This feature (and [addRepaintBoundaries]) must be disabled if the children
    /// are going to manually maintain their [KeepAlive] state. It may also be
    /// more efficient to disable this feature if it is known ahead of time that
    /// none of the children will ever try to keep themselves alive.
    ///
    /// Defaults to true.
    final bool addAutomaticKeepAlives = true,

    /// Whether to wrap each child in a [RepaintBoundary].
    ///
    /// Typically, children in a scrolling container are wrapped in repaint
    /// boundaries so that they do not need to be repainted as the list scrolls.
    /// If the children are easy to repaint (e.g., solid color blocks or a short
    /// snippet of text), it might be more efficient to not add a repaint boundary
    /// and simply repaint the children during scrolling.
    ///
    /// Defaults to true.
    final bool addRepaintBoundaries = true,

    /// Whether to wrap each child in an [IndexedSemantics].
    ///
    /// Typically, children in a scrolling container must be annotated with a
    /// semantic index in order to generate the correct accessibility
    /// announcements. This should only be set to false if the indexes have
    /// already been provided by an IndexedChildSemantics widget.
    ///
    /// Defaults to true.
    ///
    /// See also:
    ///
    ///  * IndexedChildSemantics, for an explanation of how to manually
    ///    provide semantic indexes.
    final bool addSemanticIndexes = true,
    final Key key,
  }) {
    return MxGridAnimated(
      padding: padding,
      showItemInterval: showItemInterval,
      showItemDuration: showItemDuration,
      visibleFraction: visibleFraction,
      itemCount: itemCount,
      gridDelegate: gridDelegate,
      itemBuilder: this,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      delay: delay,
      key: key,
      reAnimateOnVisibility: reAnimateOnVisibility,
      shrinkWrap: shrinkWrap,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
    );
  }
}

SliverGridDelegate xSGDWFCC(
    {int crossAxisCount,
    double crossAxisSpacing = 0.0,
    double mainAxisSpacing = 0.0,
    double childAspectRatio = 1.0}) {
  return SliverGridDelegateWithFixedCrossAxisCount(
    childAspectRatio: childAspectRatio,
    crossAxisCount: crossAxisCount,
    crossAxisSpacing: crossAxisSpacing,
    mainAxisSpacing: mainAxisSpacing,
  );
}

extension ZMx on Function(BuildContext, int, Animation<double>) {
  Widget xlbAnimated({
    bool shrinkWrap = false,
    ScrollPhysics physics,
    Duration showItemInterval = const Duration(milliseconds: 150),
    Duration showItemDuration = const Duration(milliseconds: 300),
    EdgeInsetsGeometry padding = const EdgeInsets.all(0.0),
    bool reAnimateOnVisibility = false,
    Axis scrollDirection: Axis.vertical,
    @required int itemCount,
  }) {
    return MxlbAnimated(
        shrinkWrap: shrinkWrap,
        physics: physics,
        showItemInterval: showItemInterval,
        showItemDuration: showItemDuration,
        padding: padding,
        reAnimateOnVisibility: reAnimateOnVisibility,
        scrollDirection: scrollDirection,
        itemCount: itemCount,
        itemBuilder: this);
  }
}
