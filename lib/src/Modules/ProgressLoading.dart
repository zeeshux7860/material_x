import 'package:flutter/material.dart';
import 'package:material_x/src/Text/text_material.dart';

class MxProgressLoading extends StatelessWidget {
  final String progressName;
  final Color progressColor;
  final Color progressBackgroundColor;
  final double progressValue;
  final Color progressNameColor;

  const MxProgressLoading(
      {Key key,
      this.progressName,
      this.progressColor,
      this.progressBackgroundColor,
      this.progressValue,
      this.progressNameColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return progressName == null
        ? Container()
        : ListTile(
            onTap: () {},
            title: Textmaterial(
              text: progressName,
              color: progressNameColor,
            ),
            subtitle: LinearProgressIndicator(
              backgroundColor: progressBackgroundColor,
              value: progressValue ?? 0.0,
              valueColor: AlwaysStoppedAnimation<Color>(progressColor),
            ));
  }
}
