import 'package:flutter/material.dart';

extension BuilderContexts on BuildContext {
  bool isMobile() {
    var size = MediaQuery.of(this).size.width;
    var isMobilesvalue = 450 >= size;
    return isMobilesvalue;
  }

  bool isTablet() {
    var size = MediaQuery.of(this).size.width;
    var isTableValue = (450 <= size) == (800 >= size);

    return isTableValue;
  }

  bool isDesktop() {
    var size = MediaQuery.of(this).size.width;
    var isTableValue = 800 <= size;
    return isTableValue;
  }
}
