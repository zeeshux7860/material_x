import 'package:flutter/material.dart';

extension ColumnWudget on List<Widget> {
  Widget mxcolumn(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down,
      CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
      MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start}) {
    return Column(
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

  Widget mxcolumnSS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnES(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSTS(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSTC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnEC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnCC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBC(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSTE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnEE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnCE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSTSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnESA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnCSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBSA(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSTSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnESB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnCSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBSB(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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
  Widget mxcolumnSTSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnSSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnESE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnCSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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

  Widget mxcolumnBSE(
      {Key key,
      MainAxisSize mainAxisSize = MainAxisSize.max,
      TextBaseline textBaseline,
      TextDirection textDirection,
      VerticalDirection verticalDirection = VerticalDirection.down}) {
    return Column(
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
