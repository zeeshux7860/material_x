import 'package:flutter/material.dart';
import 'package:material_x/src/Button/material_button.dart';

import '../../material_x.dart';

class TwoButton extends StatelessWidget {
  final Function ontap1;
  final Function ontap2;
  final Widget child1;
  final Widget child2;
  final double elavation;
  final double rounded;
  final Color color1;
  final Color color2;
  final double height;
  final double width;
  const TwoButton(
      {Key key,
      this.ontap1,
      this.ontap2,
      @required this.child1,
      @required this.child2,
      this.rounded,
      this.elavation,
      @required this.color1,
      @required this.color2,
      @required this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Wrap(
      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MaterialXButton(
          width: width,
          height: 100,
          child: child1,
          rounded: rounded,
          elavation: elavation,
          onTap: ontap1,
          color: color1,
        ),
        10.0.sizedHeightWidth(),
        MaterialXButton(
          width: width,
          height: 100,
          child: child2,
          rounded: rounded,
          elavation: elavation,
          onTap: ontap2,
          color: color2,
        )
      ],
    );
  }
}
