import 'package:material_x/material_x.dart';

/// The list of items the user can select.
///
/// If the [onChanged] callback is null or the list of items is null
/// then the dropdown button will be disabled, i.e. its arrow will be
/// displayed in grey and it will not respond to input. A disabled button
/// will display the [disabledHint] widget if it is non-null. If
/// [disabledHint] is also null but [hint] is non-null, [hint] will instead
/// be displayed.
extension MxDropDown on List<DropdownMenuItem> {
  Widget mxDropDown({
    /// The value of the currently selected [DropdownMenuItem].
    ///
    /// If [value] is null and [hint] is non-null, the [hint] widget is
    /// displayed as a placeholder for the dropdown button's value.
    final value,

    /// A placeholder widget that is displayed by the dropdown button.
    ///
    /// If [value] is null, this widget is displayed as a placeholder for
    /// the dropdown button's value. This widget is also displayed if the button
    /// is disabled ([items] or [onChanged] is null) and [disabledHint] is null.
    final Widget hint,

    /// A message to show when the dropdown is disabled.
    ///
    /// Displayed if [items] or [onChanged] is null. If [hint] is non-null and
    /// [disabledHint] is null, the [hint] widget will be displayed instead.
    final Widget disabledHint,

    /// {@template flutter.material.dropdownButton.onChanged}
    /// Called when the user selects an item.
    ///
    /// If the [onChanged] callback is null or the list of [items] is null
    /// then the dropdown button will be disabled, i.e. its arrow will be
    /// displayed in grey and it will not respond to input. A disabled button
    /// will display the [disabledHint] widget if it is non-null. If
    /// [disabledHint] is also null but [hint] is non-null, [hint] will instead
    /// be displayed.
    /// {@endtemplate}
    final ValueChanged onChanged,

    /// A builder to customize the dropdown buttons corresponding to the
    /// [DropdownMenuItem]s in [items].
    ///
    /// When a [DropdownMenuItem] is selected, the widget that will be displayed
    /// from the list corresponds to the [DropdownMenuItem] of the same index
    /// in [items].
    ///
    /// {@tool snippet --template=stateful_widget_scaffold}
    ///
    /// This sample shows a `DropdownButton` with a button with [Text] that
    /// corresponds to but is unique from [DropdownMenuItem].
    ///
    /// ```dart
    /// final List<String> items = <String>['1','2','3'],
    /// String selectedItem = '1',
    ///
    /// @override
    /// Widget build(BuildContext context) {
    ///   return Padding(
    ///     padding: const EdgeInsets.symmetric(horizontal: 12.0),
    ///     child: DropdownButton<String>(
    ///       value: selectedItem,
    ///       onChanged: (String string) => setState(() => selectedItem = string),
    ///       selectedItemBuilder: (BuildContext context) {
    ///         return items.map<Widget>((String item) {
    ///           return Text(item),
    ///         }).toList(),
    ///       },
    ///       items: items.map((String item) {
    ///         return DropdownMenuItem<String>(
    ///           child: Text('Log $item'),
    ///           value: item,
    ///         ),
    ///       }).toList(),
    ///     ),
    ///   ),
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// If this callback is null, the [DropdownMenuItem] from [items]
    /// that matches [value] will be displayed.
    final DropdownButtonBuilder selectedItemBuilder,

    /// The z-coordinate at which to place the menu when open.
    ///
    /// The following elevations have defined shadows: 1, 2, 3, 4, 6, 8, 9, 12,
    /// 16, and 24. See [kElevationToShadow].
    ///
    /// Defaults to 8, the appropriate elevation for dropdown buttons.
    final int elevation,

    /// The text style to use for text in the dropdown button and the dropdown
    /// menu that appears when you tap the button.
    ///
    /// To use a separate text style for selected item when it's displayed within
    /// the dropdown button,, consider using [selectedItemBuilder].
    ///
    /// {@tool snippet --template=stateful_widget_scaffold}
    ///
    /// This sample shows a `DropdownButton` with a dropdown button text style
    /// that is different than its menu items.
    ///
    /// ```dart
    /// List<String> options = <String>['One', 'Two', 'Free', 'Four'],
    /// String dropdownValue = 'One',
    ///
    /// @override
    /// Widget build(BuildContext context) {
    ///   return Container(
    ///     alignment: Alignment.center,
    ///     color: Colors.blue,
    ///     child: DropdownButton<String>(
    ///       value: dropdownValue,
    ///       onChanged: (String newValue) {
    ///         setState(() {
    ///           dropdownValue = newValue,
    ///         }),
    ///       },
    ///       style: TextStyle(color: Colors.blue),
    ///       selectedItemBuilder: (BuildContext context) {
    ///         return options.map((String value) {
    ///           return Text(
    ///             dropdownValue,
    ///             style: TextStyle(color: Colors.white),
    ///           ),
    ///         }).toList(),
    ///       },
    ///       items: options.map<DropdownMenuItem<String>>((String value) {
    ///         return DropdownMenuItem<String>(
    ///           value: value,
    ///           child: Text(value),
    ///         ),
    ///       }).toList(),
    ///     ),
    ///   ),
    /// }
    /// ```
    /// {@end-tool}
    ///
    /// Defaults to the [TextTheme.subhead] value of the current
    /// [ThemeData.textTheme] of the current [Theme].
    final TextStyle style,

    /// The widget to use for drawing the drop-down button's underline.
    ///
    /// Defaults to a 0.0 width bottom border with color 0xFFBDBDBD.
    final Widget underline,

    /// The widget to use for the drop-down button's icon.
    ///
    /// Defaults to an [Icon] with the [Icons.arrow_drop_down] glyph.
    final Widget icon,

    /// The color of any [Icon] descendant of [icon] if this button is disabled,
    /// i.e. if [onChanged] is null.
    ///
    /// Defaults to [Colors.grey.shade400] when the theme's
    /// [ThemeData.brightness] is [Brightness.light] and to
    /// [Colors.white10] when it is [Brightness.dark]
    final Color iconDisabledColor,

    /// The color of any [Icon] descendant of [icon] if this button is enabled,
    /// i.e. if [onChanged] is defined.
    ///
    /// Defaults to [Colors.grey.shade700] when the theme's
    /// [ThemeData.brightness] is [Brightness.light] and to
    /// [Colors.white70] when it is [Brightness.dark]
    final Color iconEnabledColor,

    /// The size to use for the drop-down button's down arrow icon button.
    ///
    /// Defaults to 24.0.
    final double iconSize = 24.0,

    /// Reduce the button's height.
    ///
    /// By default this button's height is the same as its menu items' heights.
    /// If isDense is true, the button's height is reduced by about half. This
    /// can be useful when the button is embedded in a container that adds
    /// its own decorations, like [InputDecorator].
    final bool isDense = false,

    /// Set the dropdown's inner contents to horizontally fill its parent.
    ///
    /// By default this button's inner width is the minimum size of its contents.
    /// If [isExpanded] is true, the inner width is expanded to fill its
    /// surrounding container.
    final bool isExpanded = false,

    /// If null, then the menu item heights will vary according to each menu item's
    /// intrinsic height.
    ///
    /// The default value is [kMinInteractiveDimension], which is also the minimum
    /// height for menu items.
    ///
    /// If this value is null and there isn't enough vertical room for the menu,
    /// then the menu's initial scroll offset may not align the selected item with
    /// the dropdown button. That's because, in this case, the initial scroll
    /// offset is computed as if all of the menu item heights were
    /// [kMinInteractiveDimension].
    final double itemHeight = kMinInteractiveDimension,

    /// The color for the button's [Material] when it has the input focus.
    final Color focusColor,

    /// {@macro flutter.widgets.Focus.focusNode}
    final FocusNode focusNode,

    /// {@macro flutter.widgets.Focus.autofocus}
    final bool autofocus = false,
    Key key,
  }) {
    return DropdownButton(
      value: value,
      disabledHint: disabledHint,
      focusColor: focusColor,
      focusNode: focusNode,
      hint: hint,
      iconDisabledColor: iconDisabledColor,
      iconEnabledColor: iconEnabledColor,
      isDense: isDense,
      isExpanded: isExpanded,
      itemHeight: itemHeight,
      key: key,
      selectedItemBuilder: selectedItemBuilder,
      icon: icon,
      iconSize: iconSize,
      elevation: elevation,
      style: style,
      underline: underline,
      autofocus: autofocus,
      onChanged: onChanged,
      items: this,
    );
  }
}
