import 'dart:ui';

import 'package:flutter/material.dart';

class XimageBlur extends StatelessWidget {
  final Widget chlid;
  final double sigmaX;
  final double sigmaY;
  const XimageBlur({Key key, this.chlid, this.sigmaX = 5.0, this.sigmaY = 5.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // make sure we apply clip it properly
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: sigmaX, sigmaY: sigmaY),
        child: Container(
          //alignment: Alignment.center,
          color: Colors.grey.withOpacity(0.1),
          child: chlid,
        ),
      ),
    );
  }
}
