import 'package:flutter/material.dart';

extension Floating on Widget {
  // ---------

  /// The widget below this widget in the tree.
  ///
  /// Typically an [Icon].
  Widget xFloatinActionExtend({
    /// Text that describes the action that will occur when the button is pressed.
    ///
    /// This text is displayed when the user long-presses on the button and is
    /// used for accessibility.
    final String tooltip,

    /// The default icon and text color.
    ///
    /// Defaults to [ThemeData.accentIconTheme.color] for the current theme.
    final Color foregroundColor,

    /// The color to use when filling the button.
    ///
    /// Defaults to [ThemeData.accentColor] for the current theme.
    final Color backgroundColor,

    /// The color to use for filling the button when the button has input focus.
    ///
    /// Defaults to [ThemeData.focusColor] for the current theme.
    final Color focusColor,

    /// The color to use for filling the button when the button has a pointer
    /// hovering over it.
    ///
    /// Defaults to [ThemeData.hoverColor] for the current theme.
    final Color hoverColor,

    /// The splash color for this [FloatingActionButton]'s [InkWell].
    ///
    /// If null, [FloatingActionButtonThemeData.splashColor] is used, if that is
    /// null, [ThemeData.splashColor] is used.
    final Color splashColor,

    /// The tag to apply to the button's [Hero] widget.
    ///
    /// Defaults to a tag that matches other floating action buttons.
    ///
    /// Set this to null explicitly if you don't want the floating action button to
    /// have a hero tag.
    ///
    /// If this is not explicitly set, then there can only be one
    /// [FloatingActionButton] per route (that is, per screen), since otherwise
    /// there would be a tag conflict (multiple heroes on one route can't have the
    /// same tag). The material design specification recommends only using one
    /// floating action button per screen.
    final Object heroTag,

    /// The callback that is called when the button is tapped or otherwise activated.
    ///
    /// If this is set to null, the button will be disabled.
    final VoidCallback onPressed,

    /// The z-coordinate at which to place this button relative to its parent.
    ///
    /// This controls the size of the shadow below the floating action button.
    ///
    /// Defaults to 6, the appropriate elevation for floating action buttons. The
    /// value is always non-negative.
    ///
    /// See also:
    ///
    ///  * [highlightElevation], the elevation when the button is pressed.
    ///  * [disabledElevation], the elevation when the button is disabled.
    final double elevation,

    /// The z-coordinate at which to place this button relative to its parent when
    /// the button has the input focus.
    ///
    /// This controls the size of the shadow below the floating action button.
    ///
    /// Defaults to 8, the appropriate elevation for floating action buttons
    /// while they have focus. The value is always non-negative.
    ///
    /// See also:
    ///
    ///  * [elevation], the default elevation.
    ///  * [highlightElevation], the elevation when the button is pressed.
    ///  * [disabledElevation], the elevation when the button is disabled.
    final double focusElevation,

    /// The z-coordinate at which to place this button relative to its parent when
    /// the button is enabled and has a pointer hovering over it.
    ///
    /// This controls the size of the shadow below the floating action button.
    ///
    /// Defaults to 8, the appropriate elevation for floating action buttons while
    /// they have a pointer hovering over them. The value is always non-negative.
    ///
    /// See also:
    ///
    ///  * [elevation], the default elevation.
    ///  * [highlightElevation], the elevation when the button is pressed.
    ///  * [disabledElevation], the elevation when the button is disabled.
    final double hoverElevation,

    /// The z-coordinate at which to place this button relative to its parent when
    /// the user is touching the button.
    ///
    /// This controls the size of the shadow below the floating action button.
    ///
    /// Defaults to 12, the appropriate elevation for floating action buttons
    /// while they are being touched. The value is always non-negative.
    ///
    /// See also:
    ///
    ///  * [elevation], the default elevation.
    final double highlightElevation,

    /// The z-coordinate at which to place this button when the button is disabled
    /// ([onPressed] is null).
    ///
    /// This controls the size of the shadow below the floating action button.
    ///
    /// Defaults to the same value as [elevation]. Setting this to zero makes the
    /// floating action button work similar to a [RaisedButton] but the titular
    /// "floating" effect is lost. The value is always non-negative.
    ///
    /// See also:
    ///
    ///  * [elevation], the default elevation.
    ///  * [highlightElevation], the elevation when the button is pressed.
    final double disabledElevation,

    /// Controls the size of this button.
    ///
    /// By default, floating action buttons are non-mini and have a height and
    /// width of 56.0 logical pixels. Mini floating action buttons have a height
    /// and width of 40.0 logical pixels with a layout width and height of 48.0
    /// logical pixels. (The extra 4 pixels of padding on each side are added as a
    /// result of the floating action button having [MaterialTapTargetSize.padded]
    /// set on the underlying [RawMaterialButton.materialTapTargetSize].)
    final bool mini,

    /// The shape of the button's [Material].
    ///
    /// The button's highlight and splash are clipped to this shape. If the
    /// button has an elevation, then its drop shadow is defined by this
    /// shape as well.
    final ShapeBorder shape,

    /// {@macro flutter.widgets.Clip}
    ///
    /// Defaults to [Clip.none], and must not be null.
    final Clip clipBehavior = Clip.none,

    /// True if this is an "extended" floating action button.
    ///
    /// Typically [extended] buttons have a [StadiumBorder] [shape]
    /// and have been created with the [FloatingActionButton.extended]
    /// constructor.
    ///
    /// The [Scaffold] animates the appearance of ordinary floating
    /// action buttons with scale and rotation transitions. Extended
    /// floating action buttons are scaled and faded in.
    final bool isExtended = true,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,
    Widget icon,
  }) {
    return FloatingActionButton.extended(
      onPressed: onPressed,
      label: this,
      autofocus: autofocus,
      backgroundColor: backgroundColor,
      clipBehavior: clipBehavior,
      disabledElevation: disabledElevation,
      elevation: elevation,
      focusColor: focusColor,
      focusElevation: focusElevation,
      focusNode: focusNode,
      foregroundColor: foregroundColor,
      heroTag: heroTag,
      highlightElevation: highlightElevation,
      hoverColor: hoverColor,
      hoverElevation: hoverElevation,
      icon: icon,
      isExtended: isExtended,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      shape: shape,
      splashColor: splashColor,
      tooltip: tooltip,
    );
  }
}
