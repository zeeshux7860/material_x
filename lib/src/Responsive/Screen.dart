import 'package:flutter/material.dart';

import '../../material_x.dart';

extension ScreenResponsive on Widget {
  Widget inMobile(context) {
    return smartphonespl(context, this);
  }

  Widget inMobileLandscape(context) {
    return smartphonesl(context, this);
  }

  Widget inMobilePortrait(context) {
    return smartphonesp(context, this);
  }

  Widget inTablet(context) {
    return tabletpl(context, this);
  }

  Widget inTabletLandscape(context) {
    return tabletl(context, this);
  }

  Widget inTabletPortrait(context) {
    return tabletp(context, this);
  }

  Widget inDesktop(context) {
    return desktop(context, this);
  }

  Widget inLargeDesktop(context) {
    return largeDesktop(context, this);
  }
}

/* Smartphones (portrait and landscape) ----------- */
Widget smartphonespl(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  var maxDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 320 || maxDeviceWidth <= 480 ? child : Container();
}

/* Smartphones (landscape) ----------- */
Widget smartphonesl(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 321 ? child : Container();
}

/* Smartphones (portrait) ----------- */
Widget smartphonesp(BuildContext context, Widget child) {
/* Styles */
  var maxDeviceWidth = mxwidth(context);
  return maxDeviceWidth <= 480 ? child : Container();
}

/* iPads (portrait and landscape) ----------- */
Widget tabletpl(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  var maxDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 768 || maxDeviceWidth <= 1024 ? child : Container();
}

/* iPads (landscape) ----------- */
Widget tabletl(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 768 ? child : Container();
}

/* iPads (portrait) ----------- */
Widget tabletp(BuildContext context, Widget child) {
/* Styles */
  var maxDeviceWidth = mxwidth(context);
  return maxDeviceWidth <= 1024 ? child : Container();
}

/* Desktops and laptops ----------- */
Widget desktop(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 1224 ? child : Container();
}

/* Large screens ----------- */
Widget largeDesktop(BuildContext context, Widget child) {
/* Styles */
  var minDeviceWidth = mxwidth(context);
  return minDeviceWidth >= 1824 ? child : Container();
}
