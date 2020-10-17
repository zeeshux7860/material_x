import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

extension MxFunction on Function {
  Widget xFlatButton(
      {bool autofocus = false,
      Clip clipBehavior = Clip.none,
      Color color,
      Brightness colorBrightness,
      Color disabledColor,
      Color disabledTextColor,
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
      Widget child}) {
    return FlatButton(
      onPressed: this,
      child: child,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      color: color,
      colorBrightness: colorBrightness,
      disabledColor: disabledColor,
      disabledTextColor: disabledTextColor,
      focusColor: focusColor,
      focusNode: focusNode,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      onHighlightChanged: onHighlightChanged,
      onLongPress: onLongPress,
      padding: padding,
      shape: shape,
      splashColor: splashColor,
      textColor: textColor,
      textTheme: textTheme,
    );
  }

  Widget xOutlineButton(
      {bool autofocus = false,
      Clip clipBehavior = Clip.none,
      Color color,
      Brightness colorBrightness,
      Color disabledBorderColor,
      Color disabledTextColor,
      Color focusColor,
      FocusNode focusNode,
      Color highlightColor,
      Color hoverColor,
      Key key,
      void Function() onLongPress,
      EdgeInsetsGeometry padding,
      ShapeBorder shape,
      Color splashColor,
      Color textColor,
      ButtonTextTheme textTheme,
      double highlightElevation,
      BorderSide borderSide,
      Color highlightedBorderColor,
      Widget child}) {
    return OutlineButton(
      onPressed: this,
      child: child,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      color: color,
      highlightElevation: highlightElevation,
      borderSide: borderSide,
      highlightedBorderColor: highlightedBorderColor,
      disabledBorderColor: disabledBorderColor,
      disabledTextColor: disabledTextColor,
      focusColor: focusColor,
      focusNode: focusNode,
      highlightColor: highlightColor,
      hoverColor: hoverColor,
      key: key,
      onLongPress: onLongPress,
      padding: padding,
      shape: shape,
      splashColor: splashColor,
      textColor: textColor,
      textTheme: textTheme,
    );
  }
}

extension MxApp on bool {
  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Switch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xSWitch(
      {

      /// Whether this switch is on or off.
      ///
      /// This property must not be null.
      final bool value,

      /// The color to use when this switch is on.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor].
      final Color activeColor,

      /// The color to use on the track when this switch is on.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor] with the opacity set at 50%.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color activeTrackColor,

      /// The color to use on the thumb when this switch is off.
      ///
      /// Defaults to the colors described in the Material design specification.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color inactiveThumbColor,

      /// The color to use on the track when this switch is off.
      ///
      /// Defaults to the colors described in the Material design specification.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final Color inactiveTrackColor,

      /// An image to use on the thumb of this switch when the switch is on.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final ImageProvider activeThumbImage,

      /// An image to use on the thumb of this switch when the switch is off.
      ///
      /// Ignored if this switch is created with [Switch.adaptive].
      final ImageProvider inactiveThumbImage,

      /// Configures the minimum size of the tap target.
      ///
      /// Defaults to [ThemeData.materialTapTargetSize].
      ///
      /// See also:
      ///
      ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
      final MaterialTapTargetSize materialTapTargetSize,

      /// {@macro flutter.cupertino.switch.dragStartBehavior}
      final DragStartBehavior dragStartBehavior,

      /// The color for the button's [Material] when it has the input focus.
      final Color focusColor,

      /// The color for the button's [Material] when a pointer is hovering over it.
      final Color hoverColor,

      /// {@macro flutter.widgets.Focus.focusNode}
      final FocusNode focusNode,

      /// {@macro flutter.widgets.Focus.autofocus}
      bool autofocus = false,
      final Key key,
      void Function(bool) onChanged}) {
    return Switch(
      value: this,
      onChanged: onChanged,
      autofocus: autofocus,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveThumbImage: inactiveThumbImage,
      inactiveTrackColor: inactiveTrackColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      activeThumbImage: activeThumbImage,
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }

  /// Called when the value of the checkbox should change.
  ///
  /// The checkbox passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the checkbox with the new
  /// value.
  ///
  /// If this callback is null, the checkbox will be displayed as disabled
  /// and will not respond to input gestures.
  ///
  /// When the checkbox is tapped, if [tristate] is false (the default) then
  /// the [onChanged] callback will be applied to `!value`. If [tristate] is
  /// true this callback cycle from false to true to null.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Checkbox(
  ///   value: _throwShotAway,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _throwShotAway = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xCheckbok(
      {

      /// Whether this checkbox is checked.
      ///
      /// This property must not be null.
      final bool value,

      /// The color to use when this checkbox is checked.
      ///
      /// Defaults to [ThemeData.toggleableActiveColor].
      final Color activeColor,

      /// The color to use for the check icon when this checkbox is checked.
      ///
      /// Defaults to Color(0xFFFFFFFF)
      final Color checkColor,

      /// If true the checkbox's [value] can be true, false, or null.
      ///
      /// Checkbox displays a dash when its value is null.
      ///
      /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
      /// callback will be applied to true if the current value is false, to null if
      /// value is true, and to false if value is null (i.e. it cycles through false
      /// => true => null => false when tapped).
      ///
      /// If tristate is false (the default), [value] must not be null.
      final bool tristate,

      /// Configures the minimum size of the tap target.
      ///
      /// Defaults to [ThemeData.materialTapTargetSize].
      ///
      /// See also:
      ///
      ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
      final MaterialTapTargetSize materialTapTargetSize,

      /// The color for the checkbox's [Material] when it has the input focus.
      final Color focusColor,

      /// The color for the checkbox's [Material] when a pointer is hovering over it.
      final Color hoverColor,

      /// {@macro flutter.widgets.Focus.focusNode}
      final FocusNode focusNode,

      /// {@macro flutter.widgets.Focus.autofocus}
      final bool autofocus,

      /// The width of a checkbox widget.
      double width = 18.0,
      final Key key,
      void Function(bool) onChanged}) {
    return Checkbox(
      value: this,
      onChanged: onChanged,
      activeColor: activeColor,
      autofocus: autofocus,
      checkColor: checkColor,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      tristate: tristate,
    );
  }

  Widget xRadio({
    final bool groupValue,

    /// Called when the user selects this radio button.
    ///
    /// The radio button passes [value] as a parameter to this callback. The radio
    /// button does not actually change state until the parent widget rebuilds the
    /// radio button with the new [groupValue].
    ///
    /// If null, the radio button will be displayed as disabled.
    ///
    /// The provided callback will not be invoked if this radio button is already
    /// selected.
    ///
    /// The callback provided to [onChanged] should update the state of the parent
    /// [StatefulWidget] using the [State.setState] method, so that the parent
    /// gets rebuilt; for example:
    ///
    /// ```dart
    /// Radio<SingingCharacter>(
    ///   value: SingingCharacter.lafayette,
    ///   groupValue: _character,
    ///   onChanged: (SingingCharacter newValue) {
    ///     setState(() {
    ///       _character = newValue;
    ///     });
    ///   },
    /// )
    /// ```
    final ValueChanged onChanged,

    /// The color to use when this radio button is selected.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// The color for the radio's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the radio's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus,
    final Key key,
  }) {
    return Radio(
        value: this,
        groupValue: groupValue,
        activeColor: activeColor,
        autofocus: autofocus,
        focusColor: focusColor,
        focusNode: focusNode,
        hoverColor: hoverColor,
        key: key,
        materialTapTargetSize: materialTapTargetSize,
        onChanged: onChanged);
  }
}

extension Bools on Function(bool) {
  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Switch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xSWitch({
    /// Whether this switch is on or off.
    ///
    /// This property must not be null.
    final bool value,

    /// The color to use when this switch is on.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// The color to use on the track when this switch is on.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor] with the opacity set at 50%.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color activeTrackColor,

    /// The color to use on the thumb when this switch is off.
    ///
    /// Defaults to the colors described in the Material design specification.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color inactiveThumbColor,

    /// The color to use on the track when this switch is off.
    ///
    /// Defaults to the colors described in the Material design specification.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final Color inactiveTrackColor,

    /// An image to use on the thumb of this switch when the switch is on.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final ImageProvider activeThumbImage,

    /// An image to use on the thumb of this switch when the switch is off.
    ///
    /// Ignored if this switch is created with [Switch.adaptive].
    final ImageProvider inactiveThumbImage,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// {@macro flutter.cupertino.switch.dragStartBehavior}
    final DragStartBehavior dragStartBehavior,

    /// The color for the button's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the button's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    bool autofocus = false,
    final Key key,
  }) {
    return Switch(
      value: value,
      onChanged: this,
      autofocus: autofocus,
      dragStartBehavior: dragStartBehavior,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      inactiveThumbColor: inactiveThumbColor,
      inactiveThumbImage: inactiveThumbImage,
      inactiveTrackColor: inactiveTrackColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      activeThumbImage: activeThumbImage,
      activeTrackColor: Colors.lightGreenAccent,
      activeColor: Colors.green,
    );
  }

  /// Called when the value of the checkbox should change.
  ///
  /// The checkbox passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the checkbox with the new
  /// value.
  ///
  /// If this callback is null, the checkbox will be displayed as disabled
  /// and will not respond to input gestures.
  ///
  /// When the checkbox is tapped, if [tristate] is false (the default) then
  /// the [onChanged] callback will be applied to `!value`. If [tristate] is
  /// true this callback cycle from false to true to null.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// Checkbox(
  ///   value: _throwShotAway,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _throwShotAway = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  Widget xCheckbok({
    /// Whether this checkbox is checked.
    ///
    /// This property must not be null.
    final bool value,

    /// The color to use when this checkbox is checked.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// The color to use for the check icon when this checkbox is checked.
    ///
    /// Defaults to Color(0xFFFFFFFF)
    final Color checkColor,

    /// If true the checkbox's [value] can be true, false, or null.
    ///
    /// Checkbox displays a dash when its value is null.
    ///
    /// When a tri-state checkbox ([tristate] is true) is tapped, its [onChanged]
    /// callback will be applied to true if the current value is false, to null if
    /// value is true, and to false if value is null (i.e. it cycles through false
    /// => true => null => false when tapped).
    ///
    /// If tristate is false (the default), [value] must not be null.
    final bool tristate,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// The color for the checkbox's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the checkbox's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,

    /// The width of a checkbox widget.
    double width = 18.0,
    final Key key,
  }) {
    return Checkbox(
      value: value,
      onChanged: this,
      activeColor: activeColor,
      autofocus: autofocus,
      checkColor: checkColor,
      focusColor: focusColor,
      focusNode: focusNode,
      hoverColor: hoverColor,
      key: key,
      materialTapTargetSize: materialTapTargetSize,
      tristate: tristate,
    );
  }

  Widget xRadio({
    final bool groupValue,

    /// Called when the user selects this radio button.
    ///
    /// The radio button passes [value] as a parameter to this callback. The radio
    /// button does not actually change state until the parent widget rebuilds the
    /// radio button with the new [groupValue].
    ///
    /// If null, the radio button will be displayed as disabled.
    ///
    /// The provided callback will not be invoked if this radio button is already
    /// selected.
    ///
    /// The callback provided to [onChanged] should update the state of the parent
    /// [StatefulWidget] using the [State.setState] method, so that the parent
    /// gets rebuilt; for example:
    ///
    /// ```dart
    /// Radio<SingingCharacter>(
    ///   value: SingingCharacter.lafayette,
    ///   groupValue: _character,
    ///   onChanged: (SingingCharacter newValue) {
    ///     setState(() {
    ///       _character = newValue;
    ///     });
    ///   },
    /// )
    /// ```
    final ValueChanged onChanged,

    /// The color to use when this radio button is selected.
    ///
    /// Defaults to [ThemeData.toggleableActiveColor].
    final Color activeColor,

    /// Configures the minimum size of the tap target.
    ///
    /// Defaults to [ThemeData.materialTapTargetSize].
    ///
    /// See also:
    ///
    ///  * [MaterialTapTargetSize], for a description of how this affects tap targets.
    final MaterialTapTargetSize materialTapTargetSize,

    /// The color for the radio's [Material] when it has the input focus.
    final Color focusColor,

    /// The color for the radio's [Material] when a pointer is hovering over it.
    final Color hoverColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,
    final Key key,
    final bool value,
  }) {
    return Radio(
        value: value,
        groupValue: groupValue,
        activeColor: activeColor,
        autofocus: autofocus,
        focusColor: focusColor,
        focusNode: focusNode,
        hoverColor: hoverColor,
        key: key,
        materialTapTargetSize: materialTapTargetSize,
        onChanged: this);
  }
}
