import 'dart:io';

import 'package:flutter/material.dart';
import 'package:material_x/src/Text/h_tag.dart';
import 'package:material_x/src/Text/text_material.dart';

extension Components on String {
  Widget h1TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H1(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget h2TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H2(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget h3TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H3(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget h4TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H4(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget h5TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H5(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget h6TextBold(
      {Color color = Colors.white, FontWeight fontWeight = FontWeight.bold}) {
    return H6(
      text: this,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  Widget xFloationActiobButton(
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
      String fontFamily,
      FontWeight fontWeight,
      double fontsize,
      Function onTap}) {
    return FloatingActionButton(
      onPressed: onTap,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      backgroundColor: color,
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
      child: Textmaterial(
        text: this,
        color: textColor,
        fontFamily: fontFamily,
        fontWeight: fontWeight,
        fontsize: fontsize,
      ),
    );
  }

  Widget xCircleNetWorkImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: child,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: new NetworkImage(this),
    );
  }

  Widget xCircleAssetImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: child,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: new AssetImage(this),
    );
  }

  Widget xCircleFileImage({
    Color backgroundColor,
    Widget child,
    Color foregroundColor,
    Key key,
    double maxRadius,
    double minRadius,
    double radius,
  }) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: child,
      foregroundColor: foregroundColor,
      key: key,
      maxRadius: maxRadius,
      minRadius: minRadius,
      radius: radius,
      backgroundImage: new FileImage(File(this)),
    );
  }

  Widget xCardTileTitle(
      {Color color = Colors.white,
      double fontsize = 20,
      FontWeight fontWeight = FontWeight.bold}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterial(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorBlack(
      {Color color = Colors.black, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorWhite(
      {Color color = Colors.white, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorpurple(
      {Color color = Colors.purple, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorRed(
      {Color color = Colors.red, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorRedAccent(
      {Color color = Colors.redAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorgrey(
      {Color color = Colors.grey, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColoramber(
      {Color color = Colors.amber, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorgreen(
      {Color color = Colors.green, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorgreenAccent(
      {Color color = Colors.greenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlightBlue(
      {Color color = Colors.lightBlue,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlightBlueAccent(
      {Color color = Colors.lightBlueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlightGreen(
      {Color color = Colors.lightGreen,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlightGreenAccent(
      {Color color = Colors.lightGreenAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColororange(
      {Color color = Colors.orange, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColororangeAccent(
      {Color color = Colors.orangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColordeepOrangeAccent(
      {Color color = Colors.deepOrangeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColordeepOrange(
      {Color color = Colors.deepOrange,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColordeepPurple(
      {Color color = Colors.deepPurple,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColordeepPurpleAccent(
      {Color color = Colors.deepPurpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorblue(
      {Color color = Colors.blue, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorblueAccent(
      {Color color = Colors.blueAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorblueGrey(
      {Color color = Colors.blueGrey, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColoramberAccent(
      {Color color = Colors.amberAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorbrown(
      {Color color = Colors.brown, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorcyanAccent(
      {Color color = Colors.cyanAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorCyan(
      {Color color = Colors.cyan, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorindigo(
      {Color color = Colors.indigo, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorindigoAccent(
      {Color color = Colors.indigoAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlime(
      {Color color = Colors.lime, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorlimeAccent(
      {Color color = Colors.limeAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorpink(
      {Color color = Colors.pink, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorpinkAccent(
      {Color color = Colors.pinkAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorpurpleAccent(
      {Color color = Colors.purpleAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColorteal(
      {Color color = Colors.teal, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColortealAccent(
      {Color color = Colors.tealAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColoryellow(
      {Color color = Colors.yellow, double fontsize, FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  Widget textMaterialColoryellowAccent(
      {Color color = Colors.yellowAccent,
      double fontsize,
      FontWeight fontWeight}) {
    return Textmaterial(
      text: this,
      color: color,
      fontsize: fontsize,
      fontWeight: fontWeight,
    );
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }

  Widget xTooltips({
    /// The height of the tooltip's [child].
    ///
    /// If the [child] is null, then this is the tooltip's intrinsic height.
    final double height,

    /// The amount of space by which to inset the tooltip's [child].
    ///
    /// Defaults to 16.0 logical pixels in each direction.
    final EdgeInsetsGeometry padding,

    /// The empty space that surrounds the tooltip.
    ///
    /// Defines the tooltip's outer [Container.margin]. By default, a
    /// long tooltip will span the width of its window. If long enough,
    /// a tooltip might also span the window's height. This property allows
    /// one to define how much space the tooltip must be inset from the edges
    /// of their display window.
    ///
    /// If this property is null, then [TooltipThemeData.margin] is used.
    /// If [TooltipThemeData.margin] is also null, the default margin is
    /// 0.0 logical pixels on all sides.
    final EdgeInsetsGeometry margin,

    /// The vertical gap between the widget and the displayed tooltip.
    ///
    /// When [preferBelow] is set to true and tooltips have sufficient space to
    /// display themselves, this property defines how much vertical space
    /// tooltips will position themselves under their corresponding widgets.
    /// Otherwise, tooltips will position themselves above their corresponding
    /// widgets with the given offset.
    final double verticalOffset,

    /// Whether the tooltip defaults to being displayed below the widget.
    ///
    /// Defaults to true. If there is insufficient space to display the tooltip in
    /// the preferred direction, the tooltip will be displayed in the opposite
    /// direction.
    final bool preferBelow,

    /// Whether the tooltip's [message] should be excluded from the semantics
    /// tree.
    ///
    /// Defaults to false. A tooltip will add a [Semantics.label] that is set to
    /// [Tooltip.message]. Set this property to true if the app is going to
    /// provide its own custom semantics label.
    final bool excludeFromSemantics,

    /// The widget below this widget in the tree.
    ///
    /// {@macro flutter.widgets.child}
    final Widget child,

    /// Specifies the tooltip's shape and background color.
    ///
    /// The tooltip shape defaults to a rounded rectangle with a border radius of
    /// 4.0. Tooltips will also default to an opacity of 90% and with the color
    /// [Colors.grey[700]] if [ThemeData.brightness] is [Brightness.dark], and
    /// [Colors.white] if it is [Brightness.light].
    final Decoration decoration,

    /// The style to use for the message of the tooltip.
    ///
    /// If null, the message's [TextStyle] will be determined based on
    /// [ThemeData]. If [ThemeData.brightness] is set to [Brightness.dark],
    /// [ThemeData.textTheme.bodyText2] will be used with [Colors.white]. Otherwise,
    /// if [ThemeData.brightness] is set to [Brightness.light],
    /// [ThemeData.textTheme.bodyText2] will be used with [Colors.black].
    final TextStyle textStyle,

    /// The length of time that a pointer must hover over a tooltip's widget
    /// before the tooltip will be shown.
    ///
    /// Once the pointer leaves the widget, the tooltip will immediately
    /// disappear.
    ///
    /// Defaults to 0 milliseconds (tooltips are shown immediately upon hover).
    final Duration waitDuration,

    /// The length of time that the tooltip will be shown after a long press
    /// is released.
    ///
    /// Defaults to 1.5 seconds.
    final Duration showDuration,
    final Key key,
  }) {
    return Tooltip(
      message: this,
      child: child,
      decoration: decoration,
      excludeFromSemantics: excludeFromSemantics,
      height: height,
      key: key,
      margin: margin,
      padding: padding,
      preferBelow: preferBelow,
      showDuration: showDuration,
      textStyle: textStyle,
      verticalOffset: verticalOffset,
      waitDuration: waitDuration,
    );
  }

  /// The widget to be used as the tab's label.
  ///
  /// Usually a [Text] widget, possibly wrapped in a [Semantics] widget.
  ///
  /// Must not be used in combination with [text].
  Widget xTabText({
    final Key key,

    /// The text to display as the tab's label.
    ///
    /// Must not be used in combination with [child].
    final Widget child,

    /// An icon to display as the tab's label.
    final Widget icon,

    /// The margin added around the tab's icon.
    ///
    /// Only useful when used in combination with [icon], and either one of
    /// [text] or [child] is non-null.
    final EdgeInsetsGeometry iconMargin,
  }) {
    return Tab(
      child: child,
      icon: icon,
      key: key,
      text: this,
      iconMargin: iconMargin,
    );
  }
}
