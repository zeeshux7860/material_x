import 'package:flutter/cupertino.dart';

extension Sizedbox on double {
  Widget sizedHeight() {
    return SizedBox(
      height: this,
    );
  }

  Widget sizedHeightWidth() {
    return SizedBox(
      height: this,
      width: this,
    );
  }

  Widget sizedWidth() {
    return SizedBox(
      width: this,
    );
  }
}
