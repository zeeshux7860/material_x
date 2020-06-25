import 'package:flutter/material.dart';
import 'package:material_x/src/Text/h_tag.dart';
import 'package:material_x/src/Extension/Stack.dart';

class MxExpansionTiles extends StatelessWidget {
  final Color expansionTileTitleColor;
  final Color expansionTileSubTitleColor;
  final String expansionTileTitle;
  final String expansionTileSubTitle;
  final List<Widget> expansionchildren;

  const MxExpansionTiles(
      {Key key,
      this.expansionTileTitleColor,
      this.expansionTileSubTitleColor,
      this.expansionTileTitle,
      this.expansionTileSubTitle,
      this.expansionchildren})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return expansionTileTitle == null
        ? Container()
        : ExpansionTile(
            title: H2(
              text: expansionTileTitle,
              color: expansionTileTitleColor,
            ),
            subtitle: H5(
              text: expansionTileSubTitle,
              color: expansionTileSubTitleColor,
            ),
            children: expansionchildren == null
                ? <Widget>[]
                : expansionchildren ?? <Widget>[]);
  }
}

/// The widgets that are displayed when the tile expands.
///
/// Typically [ListTile] widgets.
class MxExpansionTile {
  /// A widget to display before the title.
  ///
  /// Typically a [CircleAvatar] widget.
  final Widget leading;

  /// The primary content of the list item.
  ///
  /// Typically a [Text] widget.
  final Widget title;

  /// Additional content displayed below the title.
  ///
  /// Typically a [Text] widget.
  final Widget subtitle;

  /// Called when the tile expands or collapses.
  ///
  /// When the tile starts expanding; this function is called with the value
  /// true. When the tile starts collapsing; this function is called with
  /// the value false.
  final ValueChanged<bool> onExpansionChanged;

  /// The color to display behind the sublist when expanded.
  final Color backgroundColor;

  /// A widget to display instead of a rotating arrow icon.
  final Widget trailing;

  /// Specifies if the list tile is initially expanded (true) or collapsed (false; the default).
  final bool initiallyExpanded;
  final Key key;

  MxExpansionTile(
      this.leading,
      this.title,
      this.subtitle,
      this.onExpansionChanged,
      this.backgroundColor,
      this.trailing,
      this.initiallyExpanded,
      this.key);
  Widget list(List<Widget> list) {
    return list.mxExpansionTile(
      title: title,
      backgroundColor: backgroundColor,
      key: key,
      leading: leading,
      onExpansionChanged: onExpansionChanged,
      subtitle: subtitle,
      trailing: trailing,
      initiallyExpanded: initiallyExpanded ?? false,
    );
  }
}
