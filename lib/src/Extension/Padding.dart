import 'package:flutter/material.dart';

extension Paddings on Widget {
  Widget xap({double value}) {
    return Padding(
      padding: EdgeInsets.all(value),
      child: this,
    );
  }

  Widget xlp({double value}) {
    return Padding(
      padding: EdgeInsets.only(left: value),
      child: this,
    );
  }

  Widget xrp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        right: value,
      ),
      child: this,
    );
  }

  Widget xtp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        top: value,
      ),
      child: this,
    );
  }

  Widget xbp({double value}) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: value,
      ),
      child: this,
    );
  }

  Widget xtbp({double t, double b}) {
    return Padding(
      padding: EdgeInsets.only(top: t, bottom: b),
      child: this,
    );
  }

  Widget xltp({double l, double t}) {
    return Padding(
      padding: EdgeInsets.only(top: t, left: l),
      child: this,
    );
  }

  Widget xrtp({double r, double t}) {
    return Padding(
      padding: EdgeInsets.only(top: t, right: r),
      child: this,
    );
  }

  Widget xlbp({double l, double b}) {
    return Padding(
      padding: EdgeInsets.only(left: l, bottom: b),
      child: this,
    );
  }

  Widget xlrp({double l, double r}) {
    return Padding(
      padding: EdgeInsets.only(left: l, right: r),
      child: this,
    );
  }

  Widget xrbp({double r, double b}) {
    return Padding(
      padding: EdgeInsets.only(right: r, bottom: b),
      child: this,
    );
  }

  Widget xrbtp({double r, double b, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        right: r,
        bottom: b,
        top: t,
      ),
      child: this,
    );
  }

  Widget xlbtp({double l, double b, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l,
        bottom: b,
        top: t,
      ),
      child: this,
    );
  }

  Widget xlrtp({double l, double r, double t}) {
    return Padding(
      padding: EdgeInsets.only(
        left: l,
        right: r,
        top: t,
      ),
      child: this,
    );
  }

  Widget xlrbp({double l, double r, double b}) {
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
