import 'package:flutter/material.dart';

class AppbarGadient extends StatefulWidget implements PreferredSizeWidget {
  AppbarGadient(
      {Key key,
      this.backgroundColor,
      this.leading,
      this.automaticallyImplyLeading = true,
      this.title,
      this.actions,
      this.gradient,
      this.bottom,
      this.elevation,
      this.shape,
      this.brightness,
      this.iconTheme,
      this.actionsIconTheme,
      this.textTheme,
      this.primary = true,
      this.centerTitle,
      this.titleSpacing = NavigationToolbar.kMiddleSpacing,
      this.toolbarOpacity = 1.0,
      this.bottomOpacity = 1.0,
      this.image})
      : assert(automaticallyImplyLeading != null),
        assert(elevation == null || elevation >= 0.0),
        assert(primary != null),
        assert(titleSpacing != null),
        assert(toolbarOpacity != null),
        assert(bottomOpacity != null),
        preferredSize = Size.fromHeight(
            kToolbarHeight + (bottom?.preferredSize?.height ?? 0.0)),
        super(key: key);

  @override
  _AppbarGadientState createState() => _AppbarGadientState();
  final Color backgroundColor;

  final Widget leading;
  final bool automaticallyImplyLeading;
  final Widget title;
  final List<Widget> actions;
  final Gradient gradient;
  final PreferredSizeWidget bottom;
  final double elevation;
  final ShapeBorder shape;
  final Brightness brightness;
  final IconThemeData iconTheme;
  final IconThemeData actionsIconTheme;
  final TextTheme textTheme;
  final bool primary;
  final bool centerTitle;
  final double titleSpacing;
  final double toolbarOpacity;
  final double bottomOpacity;
  final DecorationImage image;

  @override
  final Size preferredSize;
  bool getEffectiveCenterTitle(ThemeData theme) {
    if (centerTitle != null) return centerTitle;
    assert(theme.platform != null);
    switch (theme.platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:

      case TargetPlatform.windows:
      case TargetPlatform.linux:
        return false;
      case TargetPlatform.macOS:
      case TargetPlatform.iOS:
        return actions == null || actions.length < 2;
    }
    return null;
  }
}

class _AppbarGadientState extends State<AppbarGadient> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: widget.backgroundColor,
      actions: widget.actions,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      actionsIconTheme: widget.actionsIconTheme,
      centerTitle: widget.centerTitle,
      title: widget.title,
      bottom: widget.bottom,
      bottomOpacity: widget.bottomOpacity,
      toolbarOpacity: widget.toolbarOpacity,
      titleSpacing: widget.titleSpacing,
      iconTheme: widget.iconTheme,
      brightness: widget.brightness,
      elevation: widget.elevation,
      leading: widget.leading,
      primary: widget.primary,
      shape: widget.shape,
      textTheme: widget.textTheme,
      flexibleSpace: Container(
          decoration:
              BoxDecoration(gradient: widget.gradient, image: widget.image)),
    );
  }
}

/* 
TwoButton(
                ontap2: (){},
                text2: 'Recive',
                color2: Color(0xFF0049f5),
                height: 20,
                color1: Color(0xFFfc035e),
                ontap1: (){},
                text1: 'Send',
                rounded: 10,
                elavation: 10,
                )
*/
