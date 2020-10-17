import 'package:flutter/material.dart';

extension RowWidget on List<Widget> {
  Widget xRow(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      key: key,
      children: this,
    );
  }

  Widget xRowSS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xRowBS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xRowES(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  Widget xRowSTS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      key: key,
      children: this,
    );
  }

  //----------------------------------------------------------  end  start

  Widget xRowSTC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xRowSC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xRowEC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xRowCC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  Widget xRowBC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.center,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------ emd center

  Widget xRowSTE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xRowSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xRowEE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xRowCE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  Widget xRowBE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.end,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------ emd end

  Widget xRowSTSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xRowSSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xRowESA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xRowCSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  Widget xRowBSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------- end spaceAround

  Widget xRowSTSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xRowSSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xRowESB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xRowCSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  Widget xRowBSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      key: key,
      children: this,
    );
  }

  // ------------------------------------------------------------- end spaceBetween
  Widget xRowSTSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xRowSSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xRowESE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xRowCSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }

  Widget xRowBSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Row(
      mainAxisSize: mainAxisSize,
      textBaseline: textBaseline,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      key: key,
      children: this,
    );
  }
}
