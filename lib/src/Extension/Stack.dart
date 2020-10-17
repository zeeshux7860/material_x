import 'package:flutter/material.dart';

extension Lists on List<Widget> {
//   Widget xStack(
//           {AlignmentGeometry alignment,
//           StackFit fit,
//           Key key,
//           Overflow overflow,
//           TextDirection textDirection}) =>
//       Stack(
//         key: key,
//         overflow: overflow ?? Overflow.clip,
//         textDirection: textDirection,
//         fit: fit ?? StackFit.loose,
//         alignment: alignment ?? AlignmentDirectional.topStart,
//         children: this,
//       );

  Widget xExpansionTile({
    /// A widget to display before the title.
    ///
    /// Typically a [CircleAvatar] widget.
    final Widget leading,

    /// The primary content of the list item.
    ///
    /// Typically a [Text] widget.
    final Widget title,

    /// Additional content displayed below the title.
    ///
    /// Typically a [Text] widget.
    final Widget subtitle,

    /// Called when the tile expands or collapses.
    ///
    /// When the tile starts expanding, this function is called with the value
    /// true. When the tile starts collapsing, this function is called with
    /// the value false.
    final ValueChanged<bool> onExpansionChanged,

    /// The color to display behind the sublist when expanded.
    final Color backgroundColor,

    /// A widget to display instead of a rotating arrow icon.
    final Widget trailing,

    /// Specifies if the list tile is initially expanded (true) or collapsed (false, the default).
    final bool initiallyExpanded,
    final Key key,
  }) {
    return ExpansionTile(
      title: title,
      children: this,
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

back(context) {
  Navigator.pop(context);
}
