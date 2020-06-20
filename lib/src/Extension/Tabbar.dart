import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

extension MxTabbars on Widget {
  Widget mxDTController({int length, int initialIndex = 0}) {
    return DefaultTabController(
        initialIndex: initialIndex, length: length, child: this);
  }
}

/// Typically a list of two or more [Tab] widgets.
///
/// The length of this list must match the [controller]'s [TabController.length]
/// and the length of the [TabBarView.children] list.
extension MxTabBarss on List<Widget> {
  Widget mxTabBar(
      {TabController controller,

      /// Whether this tab bar can be scrolled horizontally.
      ///
      /// If [isScrollable] is true, then each tab is as wide as needed for its label
      /// and the entire [TabBar] is scrollable. Otherwise each tab gets an equal
      /// share of the available space.
      bool isScrollable = false,

      /// The color of the line that appears below the selected tab.
      ///
      /// If this parameter is null, then the value of the Theme's indicatorColor
      /// property is used.
      ///
      /// If [indicator] is specified, this property is ignored.
      Color indicatorColor,

      /// The thickness of the line that appears below the selected tab.
      ///
      /// The value of this parameter must be greater than zero and its default
      /// value is 2.0.
      ///
      /// If [indicator] is specified, this property is ignored.
      double indicatorWeight = 2.0,

      /// The horizontal padding for the line that appears below the selected tab.
      ///
      /// For [isScrollable] tab bars, specifying [kTabLabelPadding] will align
      /// the indicator with the tab's text for [Tab] widgets and all but the
      /// shortest [Tab.text] values.
      ///
      /// The [EdgeInsets.top] and [EdgeInsets.bottom] values of the
      /// [indicatorPadding] are ignored.
      ///
      /// The default value of [indicatorPadding] is [EdgeInsets.zero].
      ///
      /// If [indicator] is specified, this property is ignored.
      EdgeInsetsGeometry indicatorPadding = EdgeInsets.zero,

      /// Defines the appearance of the selected tab indicator.
      ///
      /// If [indicator] is specified, the [indicatorColor], [indicatorWeight],
      /// and [indicatorPadding] properties are ignored.
      ///
      /// The default, underline-style, selected tab indicator can be defined with
      /// [UnderlineTabIndicator].
      ///
      /// The indicator's size is based on the tab's bounds. If [indicatorSize]
      /// is [TabBarIndicatorSize.tab] the tab's bounds are as wide as the space
      /// occupied by the tab in the tab bar. If [indicatorSize] is
      /// [TabBarIndicatorSize.label], then the tab's bounds are only as wide as
      /// the tab widget itself.
      Decoration indicator,

      /// Defines how the selected tab indicator's size is computed.
      ///
      /// The size of the selected tab indicator is defined relative to the
      /// tab's overall bounds if [indicatorSize] is [TabBarIndicatorSize.tab]
      /// (the default) or relative to the bounds of the tab's widget if
      /// [indicatorSize] is [TabBarIndicatorSize.label].
      ///
      /// The selected tab's location appearance can be refined further with
      /// the [indicatorColor], [indicatorWeight], [indicatorPadding], and
      /// [indicator] properties.
      TabBarIndicatorSize indicatorSize,

      /// The color of selected tab labels.
      ///
      /// Unselected tab labels are rendered with the same color rendered at 70%
      /// opacity unless [unselectedLabelColor] is non-null.
      ///
      /// If this parameter is null, then the color of the [ThemeData.primaryTextTheme]'s
      /// body2 text color is used.
      Color labelColor,

      /// The color of unselected tab labels.
      ///
      /// If this property is null, unselected tab labels are rendered with the
      /// [labelColor] with 70% opacity.
      Color unselectedLabelColor,

      /// The text style of the selected tab labels.
      ///
      /// If [unselectedLabelStyle] is null, then this text style will be used for
      /// both selected and unselected label styles.
      ///
      /// If this property is null, then the text style of the
      /// [ThemeData.primaryTextTheme]'s body2 definition is used.
      TextStyle labelStyle,

      /// The padding added to each of the tab labels.
      ///
      /// If this property is null, then kTabLabelPadding is used.
      EdgeInsetsGeometry labelPadding,

      /// The text style of the unselected tab labels
      ///
      /// If this property is null, then the [labelStyle] value is used. If [labelStyle]
      /// is null, then the text style of the [ThemeData.primaryTextTheme]'s
      /// body2 definition is used.
      TextStyle unselectedLabelStyle,

      /// {@macro flutter.widgets.scrollable.dragStartBehavior}
      DragStartBehavior dragStartBehavior,

      /// An optional callback that's called when the [TabBar] is tapped.
      ///
      /// The callback is applied to the index of the tab where the tap occurred.
      ///
      /// This callback has no effect on the default handling of taps. It's for
      /// applications that want to do a little extra work when a tab is tapped,
      /// even if the tap doesn't change the TabController's index. TabBar [onTap]
      /// callbacks should not make changes to the TabController since that would
      /// interfere with the default tap handler.
      ValueChanged<int> onTap,
      Key key}) {
    return TabBar(
      tabs: this,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      indicator: indicator,
      indicatorColor: indicatorColor,
      indicatorPadding: indicatorPadding,
      indicatorSize: indicatorSize,
      indicatorWeight: indicatorWeight,
      isScrollable: isScrollable,
      key: key,
      labelColor: labelColor,
      labelPadding: labelPadding,
      labelStyle: labelStyle,
      onTap: onTap,
      unselectedLabelColor: unselectedLabelColor,
      unselectedLabelStyle: unselectedLabelStyle,
    );
  }

  Widget mxTabBarView(
      {TabController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      Key key,
      ScrollPhysics physics}) {
    return TabBarView(
      children: this,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      key: key,
      physics: physics,
    );
  }
}

extension MxBottomNavigationBar on List<BottomNavigationBarItem> {
  /// Defines the appearance of the button items that are arrayed within the
  /// bottom navigation bar.
  Widget mxBottomNavigationBar({
    /// Called when one of the [items] is tapped.
    ///
    /// The stateful widget that creates the bottom navigation bar needs to keep
    /// track of the index of the selected [BottomNavigationBarItem] and call
    /// `setState` to rebuild the bottom navigation bar with the new [currentIndex].
    ValueChanged<int> onTap,

    /// The index into [items] for the current active [BottomNavigationBarItem].
    int currentIndex = 0,

    /// The z-coordinate of this [BottomNavigationBar].
    ///
    /// If null, defaults to `8.0`.
    ///
    /// {@macro flutter.material.material.elevation}
    double elevation = 8.0,

    /// Defines the layout and behavior of a [BottomNavigationBar].
    ///
    /// See documentation for [BottomNavigationBarType] for information on the
    /// meaning of different types.
    BottomNavigationBarType type,

    /// The color of the [BottomNavigationBar] itself.
    ///
    /// If [type] is [BottomNavigationBarType.shifting] and the
    /// [items]s, have [BottomNavigationBarItem.backgroundColor] set, the [item]'s
    /// backgroundColor will splash and overwrite this color.
    Color backgroundColor,

    /// The size of all of the [BottomNavigationBarItem] icons.
    ///
    /// See [BottomNavigationBarItem.icon] for more information.
    double iconSize = 24.0,

    /// The color of the selected [BottomNavigationBarItem.icon] and
    /// [BottomNavigationBarItem.label].
    ///
    /// If null then the [ThemeData.primaryColor] is used.
    Color selectedItemColor,

    /// The color of the unselected [BottomNavigationBarItem.icon] and
    /// [BottomNavigationBarItem.label]s.
    ///
    /// If null then the [TextTheme.caption]'s color is used.
    Color unselectedItemColor,

    /// The size, opacity, and color of the icon in the currently selected
    /// [BottomNavigationBarItem.icon].
    ///
    /// If this is not provided, the size will default to [iconSize], the color
    /// will default to [selectedItemColor].
    ///
    /// It this field is provided, it must contain non-null [IconThemeData.size]
    /// and [IconThemeData.color] properties. Also, if this field is supplied,
    /// [unselectedIconTheme] must be provided.
    IconThemeData selectedIconTheme = const IconThemeData(),

    /// The size, opacity, and color of the icon in the currently unselected
    /// [BottomNavigationBarItem.icon]s
    ///
    /// If this is not provided, the size will default to [iconSize], the color
    /// will default to [unselectedItemColor].
    ///
    /// It this field is provided, it must contain non-null [IconThemeData.size]
    /// and [IconThemeData.color] properties. Also, if this field is supplied,
    /// [unselectedIconTheme] must be provided.
    IconThemeData unselectedIconTheme = const IconThemeData(),

    /// The [TextStyle] of the [BottomNavigationBarItem] labels when they are
    /// selected.
    TextStyle selectedLabelStyle,

    /// The [TextStyle] of the [BottomNavigationBarItem] labels when they are not
    /// selected.
    TextStyle unselectedLabelStyle,

    /// The font size of the [BottomNavigationBarItem] labels when they are selected.
    ///
    /// If [selectedLabelStyle.fontSize] is non-null, it will be used instead of this.
    ///
    /// Defaults to `14.0`.
    double selectedFontSize = 14.0,

    /// The font size of the [BottomNavigationBarItem] labels when they are not
    /// selected.
    ///
    /// If [unselectedLabelStyle.fontSize] is non-null, it will be used instead of this.
    ///
    /// Defaults to `12.0`.
    double unselectedFontSize = 12.0,

    /// Whether the labels are shown for the selected [BottomNavigationBarItem].
    bool showUnselectedLabels,

    /// Whether the labels are shown for the unselected [BottomNavigationBarItem]s.
    bool showSelectedLabels = true,
    Color fixedColor,
    Key key,
  }) {
    return BottomNavigationBar(
      items: this,
      backgroundColor: backgroundColor,
      currentIndex: currentIndex,
      elevation: elevation,
      fixedColor: fixedColor,
      iconSize: iconSize,
      key: key,
      onTap: onTap,
      selectedFontSize: selectedFontSize,
      selectedIconTheme: selectedIconTheme,
      selectedItemColor: selectedItemColor,
      selectedLabelStyle: selectedLabelStyle,
      showSelectedLabels: showSelectedLabels,
      showUnselectedLabels: showUnselectedLabels,
      type: type,
      unselectedFontSize: unselectedFontSize,
      unselectedIconTheme: unselectedIconTheme,
      unselectedItemColor: unselectedItemColor,
      unselectedLabelStyle: unselectedLabelStyle,
    );
  }
}
