import 'package:flutter/material.dart';

extension Paddings on Widget {
  Widget mxap({double value}) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget mxlp({double value}) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Widget mxrp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        right: value,
      ),
      child: this,
    );
  }

  Widget mxtp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        top: value,
      ),
      child: this,
    );
  }

  Widget mxbp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: value,
      ),
      child: this,
    );
  }

  Widget mxtbp({double t, double b}) {
    return Padding(
      padding: EdgeInsets.only(top: t, bottom: b),
      child: this,
    );
  }

  Widget mxltp({double l, double t}) {
    return Padding(
      padding: EdgeInsets.only(top: t, left: l),
      child: this,
    );
  }

  Widget mxrtp({double r, double t}) {
    return Padding(
      padding: EdgeInsets.only(top: t, right: r),
      child: this,
    );
  }

  Widget mxlbp({double l, double b}) {
    return Padding(
      padding: EdgeInsets.only(left: l, bottom: b),
      child: this,
    );
  }

  Widget mxlrp({double l, double r}) {
    return Padding(
      padding: EdgeInsets.only(left: l, right: r),
      child: this,
    );
  }

  Widget mxrbp({double r, double b}) {
    return Padding(
      padding: EdgeInsets.only(right: r, bottom: b),
      child: this,
    );
  }

  Widget mxrbtp({double r, double b, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        right: r,
        bottom: b,
        top: t,
      ),
      child: this,
    );
  }

  Widget mxlbtp({double l, double b, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l,
        bottom: b,
        top: t,
      ),
      child: this,
    );
  }

  Widget mxlrtp({double l, double r, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l,
        right: r,
        top: t,
      ),
      child: this,
    );
  }

  Widget mxlrbp({double l, double r, double b}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l,
        right: r,
        bottom: b,
      ),
      child: this,
    );
  }
}
