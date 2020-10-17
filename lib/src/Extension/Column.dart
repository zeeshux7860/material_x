import 'package:flutter/material.dart';

extension ColumnWudget on List<Widget> {
  Widget xcolumn(
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

  Widget xcolumnSS(
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

  Widget xcolumnBS(
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

  Widget xcolumnES(
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

  Widget xcolumnSTS(
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

  Widget xcolumnSTC(
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

  Widget xcolumnSC(
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

  Widget xcolumnEC(
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

  Widget xcolumnCC(
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

  Widget xcolumnBC(
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

  Widget xcolumnSTE(
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

  Widget xcolumnSE(
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

  Widget xcolumnEE(
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

  Widget xcolumnCE(
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

  Widget xcolumnBE(
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

  Widget xcolumnSTSA(
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

  Widget xcolumnSSA(
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

  Widget xcolumnESA(
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

  Widget xcolumnCSA(
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

  Widget xcolumnBSA(
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

  Widget xcolumnSTSB(
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

  Widget xcolumnSSB(
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

  Widget xcolumnESB(
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

  Widget xcolumnCSB(
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

  Widget xcolumnBSB(
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
  Widget xcolumnSTSE(
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

  Widget xcolumnSSE(
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

  Widget xcolumnESE(
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

  Widget xcolumnCSE(
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

  Widget xcolumnBSE(
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
