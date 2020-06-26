import 'package:flutter/material.dart';

import 'package:material_x/src/Text/h_tag.dart';

class MxTitle extends StatelessWidget {
  final double leftPadding;
  final String title;
  final Color color;
  const MxTitle({Key key, this.leftPadding, @required this.title, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding == null ? 10 : leftPadding),
      child: H1(
        color: color,
        text: title,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MxTitleWidget extends StatelessWidget {
  final double leftPadding;
  final Widget child;
  const MxTitleWidget({Key key, this.leftPadding, this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding == null ? 10 : leftPadding),
      child: child,
    );
  }
}
