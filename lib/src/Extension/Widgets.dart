import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

extension Widgets on Widget {
  //drawer
  Widget mxdrawer(
      {

      /// The z-coordinate at which to place this drawer relative to its parent.
      ///
      /// This controls the size of the shadow below the drawer.
      ///
      /// Defaults to 16, the appropriate elevation for drawers. The value is
      /// always non-negative.
      final double elevation,

      /// The semantic label of the dialog used by accessibility frameworks to
      /// announce screen transitions when the drawer is opened and closed.
      ///
      /// If this label is not provided, it will default to
      /// [MaterialLocalizations.drawerLabel].
      ///
      /// See also:
      ///
      ///  * [SemanticsConfiguration.namesRoute], for a description of how this
      ///    value is used.
      final String semanticLabel,
      final Key key}) {
    return Drawer(
      child: this,
      elevation: elevation,
      key: key,
      semanticLabel: semanticLabel,
    );
  }

  /// ScafArea`
  Widget mxSafeArea({
    /// Whether to avoid system intrusions on the left.
    final bool left = true,

    /// Whether to avoid system intrusions at the top of the screen, typically the
    /// system status bar.
    final bool top = true,

    /// Whether to avoid system intrusions on the right.
    final bool right = true,

    /// Whether to avoid system intrusions on the bottom side of the screen.
    final bool bottom = true,

    /// This minimum padding to apply.
    ///
    /// The greater of the minimum insets and the media padding will be applied.
    final EdgeInsets minimum = EdgeInsets.zero,

    /// Specifies whether the [SafeArea] should maintain the [viewPadding] instead
    /// of the [padding] when consumed by the [viewInsets] of the current
    /// context's [MediaQuery], defaults to false.
    ///
    /// For example, if there is an onscreen keyboard displayed above the
    /// SafeArea, the padding can be maintained below the obstruction rather than
    /// being consumed. This can be helpful in cases where your layout contains
    /// flexible , which could visibly move when opening a software
    /// keyboard due to the change in the padding value. Setting this to true will
    /// avoid the UI shift.
    final bool maintainBottomViewPadding = false,
    final Key key,
  }) {
    return SafeArea(
      bottom: bottom,
      child: this,
      key: key,
      left: left,
      maintainBottomViewPadding: maintainBottomViewPadding,
      minimum: minimum,
      right: right,
      top: top,
    );
  }

  Widget mxHero(
      {Widget Function(BuildContext, Size, Widget) placeholderBuilder,
      Tween<Rect> Function(Rect, Rect) createRectTween,
      Object tag,
      bool transitionOnUserGestures = false,
      Key key,
      Widget Function(BuildContext, Animation<double>, HeroFlightDirection,
              BuildContext, BuildContext)
          flightShuttleBuilder}) {
    return Hero(
      tag: tag,
      child: this,
      createRectTween: createRectTween,
      flightShuttleBuilder: flightShuttleBuilder,
      key: key,
      transitionOnUserGestures: transitionOnUserGestures,
      placeholderBuilder: placeholderBuilder,
    );
  }

  Widget mxAnimationLimiter({Key key}) {
    return AnimationLimiter(
      child: this,
      key: key,
    );
  }

  Widget mxNestedScrollView({
    /// An object that can be used to control the position to which the outer
    /// scroll view is scrolled.
    final ScrollController controller,

    /// The axis along which the scroll view scrolls.
    ///
    /// Defaults to [Axis.vertical].
    final Axis scrollDirection,

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
    final bool reverse,

    /// How the scroll view should respond to user input.
    ///
    /// For example, determines how the scroll view continues to animate after the
    /// user stops dragging the scroll view (providing a custom implementation of
    /// [ScrollPhysics.createBallisticSimulation] allows this particular aspect of
    /// the physics to be overridden).
    ///
    /// Defaults to matching platform conventions.
    ///
    /// The [ScrollPhysics.applyBoundaryConditions] implementation of the provided
    /// object should not allow scrolling outside the scroll extent range
    /// described by the [ScrollMetrics.minScrollExtent] and
    /// [ScrollMetrics.maxScrollExtent] properties passed to that method. If that
    /// invariant is not maintained, the nested scroll view may respond to user
    /// scrolling erratically.
    final ScrollPhysics physics,

    /// A builder for any widgets that are to precede the inner scroll views (as
    /// given by [body]).
    ///
    /// Typically this is used to create a [SliverAppBar] with a [TabBar].
    @required final NestedScrollViewHeaderSliversBuilder headerSliverBuilder,

    /// The widget to show inside the [NestedScrollView].
    ///
    /// Typically this will be [TabBarView].
    ///
    /// The [body] is built in a context that provides a [PrimaryScrollController]
    /// that interacts with the [NestedScrollView]'s scroll controller. Any
    /// [ListView] or other [Scrollable]-based widget inside the [body] that is
    /// intended to scroll with the [NestedScrollView] should therefore not be
    /// given an explicit [ScrollController], instead allowing it to default to
    /// the [PrimaryScrollController] provided by the [NestedScrollView].
    final Widget body,

    /// {@macro flutter.widgets.scrollable.dragStartBehavior}
    final DragStartBehavior dragStartBehavior,
    final Key key,
  }) {
    return NestedScrollView(
      body: this,
      headerSliverBuilder: headerSliverBuilder,
      controller: controller,
      dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
      key: key,
      physics: physics,
      reverse: reverse,
      scrollDirection: scrollDirection ?? Axis.vertical,
    );
  }
}

extension AppBarMxs on Widget {
// AppBar
  PreferredSizeWidget mxAppBar(
      {final Widget leading,
      final bool automaticallyImplyLeading,
      final List<Widget> actions,
      final Gradient gradient,
      final PreferredSizeWidget bottom,
      final double elevation,
      final ShapeBorder shape,
      final Brightness brightness,
      final IconThemeData iconTheme,
      final IconThemeData actionsIconTheme,
      final TextTheme textTheme,
      final bool primary,
      final bool centerTitle,
      final double titleSpacing,
      final double toolbarOpacity,
      final double bottomOpacity,
      final DecorationImage image,
      @override final Size preferredSize,
      Color backgroundColor,
      final Key key}) {
    return AppbarGadient(
      backgroundColor: backgroundColor,
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      actionsIconTheme: actionsIconTheme,
      centerTitle: centerTitle,
      title: this,
      bottom: bottom,
      bottomOpacity: bottomOpacity ?? 1.0,
      toolbarOpacity: toolbarOpacity ?? 1.0,
      titleSpacing: titleSpacing ?? NavigationToolbar.kMiddleSpacing,
      iconTheme: iconTheme,
      brightness: brightness,
      elevation: elevation,
      leading: leading,
      primary: primary ?? true,
      shape: shape,
      textTheme: textTheme,
      gradient: gradient,
      image: image,
      key: key,
    );
  }

  /// inkwell widget InkWell()
  Widget mxInkWell({
    Key key,
    GestureTapCallback onTap,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureTapDownCallback onTapDown,
    GestureTapCancelCallback onTapCancel,
    ValueChanged<bool> onHighlightChanged,
    ValueChanged<bool> onHover,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    double radius,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    FocusNode focusNode,
    bool canRequestFocus = true,
    ValueChanged<bool> onFocusChange,
    bool autofocus = false,
  }) {
    return InkWell(
      child: this,
      key: key,
      onTap: onTap,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onTapDown: onTapDown,
      onTapCancel: onTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      splashFactory: splashFactory,
      radius: radius,
      borderRadius: borderRadius,
      customBorder: customBorder,
      enableFeedback: enableFeedback ?? true,
      excludeFromSemantics: excludeFromSemantics ?? false,
      focusNode: focusNode,
      canRequestFocus: canRequestFocus ?? true,
      onFocusChange: onFocusChange,
      autofocus: autofocus ?? false,
    );
  }

  mxDialog(context,
      {final bool barrierDismissible = true,
      final bool useRootNavigator = true,
      final Widget Function(BuildContext) builder}) {
    return showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        useRootNavigator: useRootNavigator,
        builder: builder,
        child: this);
  }
}

extension FunctionWidget on Widget Function(BuildContext) {
  mxDialogBuilder(context,
      {final bool barrierDismissible = true,
      final bool useRootNavigator = true,
      final Widget child}) {
    return showDialog(
        context: context,
        barrierDismissible: barrierDismissible,
        useRootNavigator: useRootNavigator,
        builder: this,
        child: child);
  }
}

extension StringsMx on String {
  Widget text({
    /// The text to display.
    ///
    /// This will be null if a [textSpan] is provided instead.
    final String data,

    /// The text to display as a [InlineSpan].
    ///
    /// This will be null if [data] is provided instead.
    final InlineSpan textSpan,

    /// If non-null, the style to use for this text.
    ///
    /// If the style's "inherit" property is true, the style will be merged with
    /// the closest enclosing [DefaultTextStyle]. Otherwise, the style will
    /// replace the closest enclosing [DefaultTextStyle].
    final TextStyle style,

    /// {@macro flutter.painting.textPainter.strutStyle}
    final StrutStyle strutStyle,

    /// How the text should be aligned horizontally.
    final TextAlign textAlign,

    /// The directionality of the text.
    ///
    /// This decides how [textAlign] values like [TextAlign.start] and
    /// [TextAlign.end] are interpreted.
    ///
    /// This is also used to disambiguate how to render bidirectional text. For
    /// example, if the [data] is an English phrase followed by a Hebrew phrase,
    /// in a [TextDirection.ltr] context the English phrase will be on the left
    /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
    /// context, the English phrase will be on the right and the Hebrew phrase on
    /// its left.
    ///
    /// Defaults to the ambient [Directionality], if any.
    final TextDirection textDirection,

    /// Used to select a font when the same Unicode character can
    /// be rendered differently, depending on the locale.
    ///
    /// It's rarely necessary to set this property. By default its value
    /// is inherited from the enclosing app with `Localizations.localeOf(context)`.
    ///
    /// See [RenderParagraph.locale] for more information.
    final Locale locale,

    /// Whether the text should break at soft line breaks.
    ///
    /// If false, the glyphs in the text will be positioned as if there was unlimited horizontal space.
    final bool softWrap,

    /// How visual overflow should be handled.
    final TextOverflow overflow,

    /// The number of font pixels for each logical pixel.
    ///
    /// For example, if the text scale factor is 1.5, text will be 50% larger than
    /// the specified font size.
    ///
    /// The value given to the constructor as textScaleFactor. If null, will
    /// use the [MediaQueryData.textScaleFactor] obtained from the ambient
    /// [MediaQuery], or 1.0 if there is no [MediaQuery] in scope.
    final double textScaleFactor,

    /// An optional maximum number of lines for the text to span, wrapping if necessary.
    /// If the text exceeds the given number of lines, it will be truncated according
    /// to [overflow].
    ///
    /// If this is 1, text will not wrap. Otherwise, text will be wrapped at the
    /// edge of the box.
    ///
    /// If this is null, but there is an ambient [DefaultTextStyle] that specifies
    /// an explicit number for its [DefaultTextStyle.maxLines], then the
    /// [DefaultTextStyle] value will take precedence. You can use a [RichText]
    /// widget directly to entirely override the [DefaultTextStyle].
    final int maxLines,

    /// An alternative semantics label for this text.
    ///
    /// If present, the semantics of this widget will contain this value instead
    /// of the actual text. This will overwrite any of the semantics labels applied
    /// directly to the [TextSpan]s.
    ///
    /// This is useful for replacing abbreviations or shorthands with the full
    /// text value:
    ///
    /// ```dart
    /// Text(r'$$', semanticsLabel: 'Double dollars')
    /// ```
    final String semanticsLabel,

    /// {@macro flutter.painting.textPainter.textWidthBasis}
    final TextWidthBasis textWidthBasis,
    final Key key,
  }) {
    return Text(
      this,
      textScaleFactor: textScaleFactor,
      key: key,
      maxLines: maxLines,
      locale: locale,
      overflow: overflow,
      semanticsLabel: semanticsLabel,
      softWrap: softWrap,
      strutStyle: strutStyle,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      textWidthBasis: textWidthBasis,
    );
  }

  Widget mxTFD(
      {final double fontSize,
      final TextEditingController controller,
      final Color color,
      final double lableSize,
      final Color textColor,
      final bool obscureText,
      final Key key,
      final int maxline}) {
    return TextFiledMaterialD(
      name: this,
      color: color,
      fontSize: fontSize,
      lableSize: lableSize,
      obscureText: obscureText,
      textColor: textColor,
      controller: controller,
      key: key,
      maxline: maxline ?? 3,
    );
  }

  /// tf mean TextFormFiled
  Widget mxTF({
    final double fontSize,
    final TextEditingController controller,
    final Color color,
    final double lableSize,
    final Color textColor,
    final bool obscureText,
    final Key key,
  }) {
    return TextFiledMaterial(
      name: this,
      color: color,
      fontSize: fontSize,
      lableSize: lableSize,
      obscureText: obscureText,
      textColor: textColor,
      controller: controller,
      key: key,
    );
  }
}

extension listViewBuilder on Function(BuildContext context, int index) {
  Widget mxListVB({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget mxListVBH({
    Key key,
    Axis scrollDirection = Axis.horizontal,
    bool reverse = false,
    ScrollController controller,
    bool primary,
    ScrollPhysics physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry padding,
    @required int itemCount,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double cacheExtent,
    int semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  }) {
    return ListView.builder(
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
      dragStartBehavior: dragStartBehavior,
    );
  }

  Widget mxGridVB(
      {Key key,
      Axis scrollDirection = Axis.vertical,
      bool reverse = false,
      ScrollController controller,
      bool primary,
      ScrollPhysics physics,
      bool shrinkWrap = false,
      EdgeInsetsGeometry padding,
      @required int itemCount,
      bool addAutomaticKeepAlives = true,
      bool addRepaintBoundaries = true,
      bool addSemanticIndexes = true,
      double cacheExtent,
      int semanticChildCount,
      @required SliverGridDelegate gridDelegate}) {
    return GridView.builder(
      gridDelegate: gridDelegate,
      itemBuilder: this,
      itemCount: itemCount,
      addAutomaticKeepAlives: addAutomaticKeepAlives,
      addRepaintBoundaries: addRepaintBoundaries,
      addSemanticIndexes: addSemanticIndexes,
      key: key,
      scrollDirection: scrollDirection,
      reverse: reverse,
      controller: controller,
      primary: primary,
      physics: physics,
      shrinkWrap: shrinkWrap,
      padding: padding,
      cacheExtent: cacheExtent,
      semanticChildCount: semanticChildCount ?? itemCount,
    );
  }
}

/// The child Widget to animate. SlideAnimation
extension AnimationMxs on Widget {
  Widget mxExpandableText(
      {CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
      Widget expand = const Text("More Details"),
      Widget unexpand = const Text("less Details"),
      double heightunexpand = 50.0}) {
    return ExpandableText(
      this,
      crossAxisAlignment: crossAxisAlignment,
      expand: expand,
      heightunexpand: heightunexpand,
      mainAxisAlignment: mainAxisAlignment,
      unexpand: unexpand,
    );
  }

  Widget mxSA({
    final Key key,

    /// The duration of the child animation.
    final Duration duration,

    /// The delay between the beginning of two children's animations.
    final Duration delay,

    /// The vertical offset to apply at the start of the animation (can be negative).
    final double verticalOffset = 50.0,

    /// The horizontal offset to apply at the start of the animation (can be negative).
    final double horizontalOffset = 0.0,

    /// Creates a slide animation that slides its child from the given
    /// [verticalOffset] and [horizontalOffset] to its final position.
    ///
    /// A default value of 50.0 is applied to [verticalOffset] if
    /// [verticalOffset] and [horizontalOffset] are both undefined or null.
    ///
    /// The [child] argument must not be null.
  }) {
    return SlideAnimation(
        delay: delay,
        duration: duration,
        horizontalOffset: horizontalOffset,
        key: key,
        verticalOffset: verticalOffset,
        child: this);
  }

  /// The child Widget to animate. FadeInAnimation

  Widget mxFA({
    /// The duration of the child animation.
    final Duration duration,

    /// The delay between the beginning of two children's animations.
    final Duration delay,
  }) {
    return FadeInAnimation(
      child: this,
      delay: delay,
      duration: duration,
    );
  }

  /// The child Widget to animate. ScaleAnimation

  Widget mxSCA(
      {

      /// The duration of the child animation.
      final Duration duration,

      /// The delay between the beginning of two children's animations.
      final Duration delay,
      double scale = 0.0}) {
    return ScaleAnimation(
      child: this,
      delay: delay,
      scale: scale,
      duration: duration,
    );
  }

  /// The child Widget to animate. FlipAnimation

  Widget mxFPA(
      {FlipAxis flipAxis = FlipAxis.x,

      /// The duration of the child animation.
      final Duration duration,

      /// The delay between the beginning of two children's animations.
      final Duration delay,
      double scale = 0.0}) {
    return FlipAnimation(
      child: this,
      delay: delay,
      flipAxis: flipAxis,
      duration: duration,
    );
  }
}

extension MxButton on Widget {
  /// if u want elavation so pass value more tham 5
  Widget mxButton(
      {double elavation,
      double rounded,
      double spreadRadius,
      Color color,
      Function onTap,
      double width,
      double height}) {
    return MaterialXButton(
        elavation: elavation,
        rounded: rounded,
        spreadRadius: spreadRadius,
        color: color,
        child: this,
        onTap: onTap,
        width: width,
        height: height);
  }
}

extension Win on String {
  Widget mxTitle() {
    return MxTitle(title: this);
  }

  Widget mxTFM({TextEditingController controller, bool obscureText}) {
    return MxContainer(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.all(10.0),
      rounded: 10,
      color: Colors.grey[100],
      child: new TextFormField(
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
        validator: (value) {
          if (value.isEmpty) {
            return 'Please enter ' + this;
          }
          return null;
        },
        controller: controller,
        obscureText: obscureText == null ? false : obscureText,
        decoration: InputDecoration(
            hintStyle: TextStyle(fontSize: 20, color: Colors.black),
            contentPadding:
                EdgeInsets.only(left: 10.0, right: 5.0, bottom: 5.0),
            hintText: ' ' + this,
            border: InputBorder.none),
      ),
    );
  }
}

extension Wins on Widget {
  Widget mxExpanded({int flex = 1, Key key}) {
    return Expanded(
      child: this,
      flex: flex,
      key: key,
    );
  }

  Widget toAlign(
      {AlignmentGeometry alignment,
      double heightFactor,
      Key key,
      double widthFactor}) {
    return Align(
      child: this,
      alignment: alignment,
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
    );
  }

  Widget toMaterial({
    Key key,
    MaterialType type = MaterialType.canvas,
    double elevation = 0.0,
    Color color,
    Color shadowColor = const Color(0xFF000000),
    TextStyle textStyle,
    BorderRadiusGeometry borderRadius,
    ShapeBorder shape,
    bool borderOnForeground = true,
    Clip clipBehavior = Clip.none,
    Duration animationDuration = kThemeChangeDuration,
  }) {
    return Material(
      type: type,
      animationDuration: animationDuration,
      borderOnForeground: borderOnForeground,
      borderRadius: borderRadius,
      child: this,
      clipBehavior: clipBehavior,
      color: color,
      elevation: elevation,
      key: key,
      shadowColor: shadowColor,
      shape: shape,
      textStyle: textStyle,
    );
  }

  Widget mxCard(
      {double elevation,
      Color shadowColor,
      Color color,
      Function onTap,
      BorderRadiusGeometry borderRadius}) {
    return this.mxContainer(
        padding: EdgeInsets.zero,
        blurRadius: elevation ?? 10,
        color: color ?? Colors.white,
        onTap: onTap,
        borderRadius: borderRadius,
        shadowColor: shadowColor ?? Colors.grey.withOpacity(0.5));
  }

  MxRoutePage mxRoutePage(BuildContext context) {
    return MxRoutePage(context, this);
  }
}
