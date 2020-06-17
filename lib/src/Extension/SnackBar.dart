import 'package:flutter/material.dart';

extension Snackbar on Widget {
  Widget mxSnackBar({
    /// The primary content of the snack bar.
    ///
    /// Typically a [Text] widget.
    final Widget content,

    /// The Snackbar's background color. If not specified it will use
    /// [ThemeData.snackBarTheme.backgroundColor]. If that is not specified
    /// it will default to a dark variation of [ColorScheme.surface] for light
    /// themes, or [ColorScheme.onSurface] for dark themes.
    final Color backgroundColor,

    /// The z-coordinate at which to place the snack bar. This controls the size
    /// of the shadow below the snack bar.
    ///
    /// Defines the card's [Material.elevation].
    ///
    /// If this property is null, then [ThemeData.snackBarTheme.elevation] is
    /// used, if that is also null, the default value is 6.0.
    final double elevation,

    /// The shape of the snack bar's [Material].
    ///
    /// Defines the snack bar's [Material.shape].
    ///
    /// If this property is null then [ThemeData.snackBarTheme.shape] is used.
    /// If that's null then the shape will depend on the [SnackBarBehavior]. For
    /// [SnackBarBehavior.fixed], no overriding shape is specified, so the
    /// [SnackBar] is rectangular. For [SnackBarBehavior.floating], it uses a
    /// [RoundedRectangleBorder] with a circular corner radius of 4.0.
    final ShapeBorder shape,

    /// This defines the behavior and location of the snack bar.
    ///
    /// Defines where a [SnackBar] should appear within a [Scaffold] and how its
    /// location should be adjusted when the scaffold also includes a
    /// [FloatingActionButton] or a [BottomNavigationBar]
    ///
    /// If this property is null, then [ThemeData.snackBarTheme.behavior]
    /// is used. If that is null, then the default is [SnackBarBehavior.fixed].
    final SnackBarBehavior behavior,

    /// (optional) An action that the user can take based on the snack bar.
    ///
    /// For example, the snack bar might let the user undo the operation that
    /// prompted the snackbar. Snack bars can have at most one action.
    ///
    /// The action should not be "dismiss" or "cancel".
    final SnackBarAction action,

    /// The amount of time the snack bar should be displayed.
    ///
    /// Defaults to 4.0s.
    ///
    /// See also:
    ///
    ///  * [ScaffoldState.removeCurrentSnackBar], which abruptly hides the
    ///    currently displayed snack bar, if any, and allows the next to be
    ///    displayed.
    ///  * <https://material.io/design/components/snackbars.html>
    final Duration duration,

    /// The animation driving the entrance and exit of the snack bar.
    final Animation<double> animation,

    /// Called the first time that the snackbar is visible within a [Scaffold].
    final VoidCallback onVisible,

    // API for Scaffold.showSnackBar():
  }) {
    return SnackBar(
      content: content,
      action: action,
      animation: animation,
      backgroundColor: backgroundColor,
      behavior: behavior,
      duration: duration,
      elevation: elevation,
      key: key,
      onVisible: onVisible,
      shape: shape,
    );
  }
}
