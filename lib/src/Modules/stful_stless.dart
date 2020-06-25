import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

extension StfulStless on Widget {
  Widget mxMaterialApp({
    GlobalKey<NavigatorState> navigatorKey,
    Key key,
    Map<String, Widget Function(BuildContext)> routes =
        const <String, WidgetBuilder>{},
    String initialRoute,
    Route<dynamic> Function(RouteSettings) onGenerateRoute,
    Route<dynamic> Function(RouteSettings) onUnknownRoute,
    List<NavigatorObserver> navigatorObservers = const <NavigatorObserver>[],
    Widget Function(BuildContext, Widget) builder,
    String title = '',
    String Function(BuildContext) onGenerateTitle,
    Color color,
    ThemeData theme,
    ThemeData darkTheme,
    ThemeMode themeMode = ThemeMode.system,
    Locale locale,
    Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates,
    Locale Function(List<Locale>, Iterable<Locale>)
        localeListResolutionCallback,
    Locale Function(Locale, Iterable<Locale>) localeResolutionCallback,
    Iterable<Locale> supportedLocales = const <Locale>[Locale('en', 'US')],
    bool debugShowMaterialGrid = false,
    bool showPerformanceOverlay = false,
    bool checkerboardRasterCacheImages = false,
    bool checkerboardOffscreenLayers = false,
    bool showSemanticsDebugger = false,
    bool debugShowCheckedModeBanner = false,
  }) {
    return MaterialApp(
      home: this,
      builder: builder,
      checkerboardOffscreenLayers: checkerboardOffscreenLayers,
      key: key,
      locale: locale,
      localeListResolutionCallback: localeListResolutionCallback,
      localeResolutionCallback: localeResolutionCallback,
      localizationsDelegates: localizationsDelegates,
      navigatorKey: navigatorKey,
      navigatorObservers: navigatorObservers,
      onGenerateTitle: onGenerateTitle,
      showPerformanceOverlay: showPerformanceOverlay,
      showSemanticsDebugger: showSemanticsDebugger,
      supportedLocales: supportedLocales,
      theme: theme,
      themeMode: themeMode,
      title: title,
      checkerboardRasterCacheImages: checkerboardRasterCacheImages,
      color: color,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      debugShowMaterialGrid: debugShowMaterialGrid,
      routes: routes,
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
    );
  }

  // image blur
  Widget mxFloationActiobButton(
      {bool autofocus = false,
      Clip clipBehavior = Clip.none,
      Color color,
      Brightness colorBrightness,
      Color focusColor,
      FocusNode focusNode,
      Color highlightColor,
      Color hoverColor,
      Key key,
      MaterialTapTargetSize materialTapTargetSize,
      void Function(bool) onHighlightChanged,
      void Function() onLongPress,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      Color splashColor,
      Color textColor,
      ButtonTextTheme textTheme,
      double disabledElevation,
      double elevation,
      double focusElevation,
      Color foregroundColor,
      Object heroTag,
      double highlightElevation,
      String tooltip,
      bool isExtended = false,
      bool mini = false,
      double hoverElevation,
      Function onTap}) {
    return FloatingActionButton(
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        backgroundColor: color,
        onPressed: onTap,
        focusColor: focusColor,
        focusNode: focusNode,
        hoverColor: hoverColor,
        key: key,
        materialTapTargetSize: materialTapTargetSize,
        disabledElevation: disabledElevation,
        elevation: elevation,
        focusElevation: focusElevation,
        foregroundColor: foregroundColor,
        heroTag: heroTag,
        highlightElevation: highlightElevation,
        hoverElevation: hoverElevation,
        isExtended: isExtended,
        mini: mini,
        tooltip: tooltip,
        shape: shape,
        splashColor: splashColor,
        child: this);
  }

  Widget mxIconButton({
    Key key,

    /// The size of the icon inside the button.
    ///
    /// This property must not be null. It defaults to 24.0.
    ///
    /// The size given here is passed down to the widget in the [icon] property
    /// via an [IconTheme]. Setting the size here instead of in, for example, the
    /// [Icon.size] property allows the [IconButton] to size the splash area to
    /// fit the [Icon]. If you were to set the size of the [Icon] using
    /// [Icon.size] instead, then the [IconButton] would default to 24.0 and then
    /// the [Icon] itself would likely get clipped.
    final double iconSize = 24.0,

    /// The padding around the button's icon. The entire padded icon will react
    /// to input gestures.
    ///
    /// This property must not be null. It defaults to 8.0 padding on all sides.
    final EdgeInsetsGeometry padding = const EdgeInsets.all(8.0),

    /// Defines how the icon is positioned within the IconButton.
    ///
    /// This property must not be null. It defaults to [Alignment.center].
    ///
    /// See also:
    ///
    ///  * [Alignment], a class with convenient constants typically used to
    ///    specify an [AlignmentGeometry].
    ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
    ///    relative to text direction.
    final AlignmentGeometry alignment = Alignment.center,

    /// The icon to display inside the button.
    ///
    /// The [Icon.size] and [Icon.color] of the icon is configured automatically
    /// based on the [iconSize] and [color] properties of _this_ widget using an
    /// [IconTheme] and therefore should not be explicitly given in the icon
    /// widget.
    ///
    /// This property must not be null.
    ///
    /// See [Icon], [ImageIcon].
    final Widget icon,

    /// The color for the button's icon when it has the input focus.
    ///
    /// Defaults to [ThemeData.focusColor] of the ambient theme.
    final Color focusColor,

    /// The color for the button's icon when a pointer is hovering over it.
    ///
    /// Defaults to [ThemeData.hoverColor] of the ambient theme.
    final Color hoverColor,

    /// The color to use for the icon inside the button, if the icon is enabled.
    /// Defaults to leaving this up to the [icon] widget.
    ///
    /// The icon is enabled if [onPressed] is not null.
    ///
    /// See also [disabledColor].
    ///
    /// ```dart
    /// IconButton(
    ///   color: Colors.blue,
    ///   onPressed: _handleTap,
    ///   icon: Icons.widgets,
    /// )
    /// ```
    final Color color,

    /// The primary color of the button when the button is in the down (pressed) state.
    /// The splash is represented as a circular overlay that appears above the
    /// [highlightColor] overlay. The splash overlay has a center point that matches
    /// the hit point of the user touch event. The splash overlay will expand to
    /// fill the button area if the touch is held for long enough time. If the splash
    /// color has transparency then the highlight and button color will show through.
    ///
    /// Defaults to the Theme's splash color, [ThemeData.splashColor].
    final Color splashColor,

    /// The secondary color of the button when the button is in the down (pressed)
    /// state. The highlight color is represented as a solid color that is overlaid over the
    /// button color (if any). If the highlight color has transparency, the button color
    /// will show through. The highlight fades in quickly as the button is held down.
    ///
    /// Defaults to the Theme's highlight color, [ThemeData.highlightColor].
    final Color highlightColor,

    /// The color to use for the icon inside the button, if the icon is disabled.
    /// Defaults to the [ThemeData.disabledColor] of the current [Theme].
    ///
    /// The icon is disabled if [onPressed] is null.
    ///
    /// See also [color].
    final Color disabledColor,

    /// The callback that is called when the button is tapped or otherwise activated.
    ///
    /// If this is set to null, the button will be disabled.
    final VoidCallback onPressed,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,

    /// Text that describes the action that will occur when the button is pressed.
    ///
    /// This text is displayed when the user long-presses on the button and is
    /// used for accessibility.
    final String tooltip,

    /// Whether detected gestures should provide acoustic and/or haptic feedback.
    ///
    /// For example, on Android a tap will produce a clicking sound and a
    /// long-press will produce a short vibration, when feedback is enabled.
    ///
    /// See also:
    ///
    ///  * [Feedback] for providing platform-specific feedback to certain actions.
    final bool enableFeedback = true,
  }) {
    return IconButton(
      icon: this,
      onPressed: onPressed,
      alignment: alignment,
      autofocus: autofocus,
      color: color,
      disabledColor: disabledColor,
      enableFeedback: enableFeedback,
      focusColor: focusColor,
      focusNode: focusNode,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      iconSize: iconSize,
      key: key,
      padding: padding,
      splashColor: splashColor,
      tooltip: tooltip,
    );
  }
}

extension ComponentsIconData on IconData {
  Widget mxIconTile({double size = 15, Color color = Colors.white}) {
    return Icon(
      this,
      size: size,
      color: color,
    );
  }

  Widget mxIconActive(
      {double size = 15,
      Color color = Colors.grey,
      Color activeColor = Colors.red,
      bool value}) {
    return Icon(
      this,
      size: size,
      color: value ? activeColor : color,
    );
  }

  Icon mxIcon(
      {double size = 15,
      Color color = Colors.grey,
      Color activeColor = Colors.red,
      bool value = false}) {
    return Icon(
      this,
      size: size,
      color: value ? activeColor : color,
    );
  }

  Icon mxIcons({
    double size,
    Color color,
  }) {
    return Icon(
      this,
      size: size,
      color: color,
    );
  }

  Widget mxIconWidget(
      {double size = 15,
      Color color = Colors.grey,
      Color activeColor = Colors.red,
      @required bool value}) {
    return Icon(
      this,
      size: size,
      color: value ? activeColor : color,
    );
  }

  Widget mxIconBadge({
    Function onPressed,
    int badgeValue = 0,
    Color iconColor,
    Widget text,
    Color badgeColor = Colors.red,
  }) {
    return Stack(
      children: <Widget>[
        IconButton(
          icon: Icon(this),
          onPressed: onPressed,
          color: iconColor,
        ),
        badgeValue != 0
            ? Positioned(
                right: 11,
                top: 11,
                child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: badgeColor,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 14,
                      minHeight: 14,
                    ),
                    child: text),
              )
            : Container()
      ],
    );
  }

  Widget mxListTileIcon(
      {double size = 30,
      Function onTap,
      Color color = Colors.red,
      double height = 50,
      double width = 50}) {
    return MxContainer(
        onTap: onTap,
        width: width,
        height: height,
        color: color.withOpacity(0.1),
        rounded: 10,
        child: Icon(
          this,
          size: size,
          color: color,
        ).toCenter());
  }

  Widget mxTransactionTileIcon(
      {double size = 30,
      Function onTap,
      Color color = Colors.red,
      Color iconcColor = Colors.white,
      double height = 50,
      double width = 50}) {
    return MxContainer(
        onTap: onTap,
        width: width,
        height: height,
        color: color,
        rounded: 10,
        child: Icon(
          this,
          size: size,
          color: iconcColor,
        ).toCenter());
  }
}

extension Lableicon on Widget {
  Widget lableIcon({
    Widget lable,
    final double width,
    final Color color,
    final EdgeInsetsGeometry padding,
    final Color shadowColor,
    final double rounded,
    final Widget child,
    final double height,
    final double blurRadius,
    final double spreadRadius,
    final Offset offset,
    final Function onTap,
    final EdgeInsetsGeometry margin,
    final DecorationImage image,
    final BorderRadiusGeometry borderRadius,
  }) {
    return MxContainer(
      blurRadius: blurRadius,
      borderRadius: borderRadius,
      color: color,
      height: height,
      image: image,
      key: key,
      margin: margin,
      offset: offset,
      onTap: onTap,
      padding: padding,
      rounded: rounded,
      shadowColor: shadowColor,
      spreadRadius: spreadRadius,
      width: width,
      child:
          <Widget>[mxap(value: 5), 10.0.sizedHeight(), lable].mxcolumn(),
    );
  }
}
