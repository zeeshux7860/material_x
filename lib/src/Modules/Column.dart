import 'package:material_x/material_x.dart';

MxColumn mxColumn = MxColumn();
MxColumnSS mxColumnSS = MxColumnSS();
MxColumnBS mxColumnBS = MxColumnBS();
MxColumnCC mxColumnCC = MxColumnCC();
MxColumnES mxColumnES = MxColumnES();
MxColumnSTS mxColumnSTS = MxColumnSTS();
MxColumnSTC mxColumnSTC = MxColumnSTC();
MxColumnSC mxColumnSC = MxColumnSC();
MxColumnEC mxColumnEC = MxColumnEC();
MxColumnBC mxColumnBC = MxColumnBC();
MxColumnSTE mxColumnSTE = MxColumnSTE();
MxColumnSE mxColumnSE = MxColumnSE();
MxColumnEE mxColumnEE = MxColumnEE();
MxColumnCE mxColumnCE = MxColumnCE();
MxColumnBE mxColumnBE = MxColumnBE();
MxColumnSTSA mxColumnSTSA = MxColumnSTSA();
MxColumnSSA mxColumnSSA = MxColumnSSA();
MxColumnESA mxColumnESA = MxColumnESA();
MxColumnCSA mxColumnCSA = MxColumnCSA();
MxColumnBSA mxColumnBSA = MxColumnBSA();
MxColumnSTSB mxColumnSTSB = MxColumnSTSB();
MxColumnSSB mxColumnSSB = MxColumnSSB();
MxColumnESB mxColumnESB = MxColumnESB();
MxColumnCSB mxColumnCSB = MxColumnCSB();
MxColumnBSB mxColumnBSB = MxColumnBSB();
MxColumnSTSE mxColumnSTSE = MxColumnSTSE();
MxColumnSSE mxColumnSSE = MxColumnSSE();
MxColumnESE mxColumnESE = MxColumnESE();
MxColumnCSE mxColumnCSE = MxColumnCSE();
MxColumnBSE mxColumnBSE = MxColumnBSE();

class MxColumn {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;

  MxColumn(
      {this.key,
      this.textBaseline,
      this.textDirection,
      this.mainAxisSize,
      this.verticalDirection,
      this.crossAxisAlignment,
      this.mainAxisAlignment});
  Widget list(List<Widget> list) {
    return list.mxcolumn(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnCC {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnCC({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnCC(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSS {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSS({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSS(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSSB {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSSB({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSSB(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBS {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBS({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBS(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnES {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnES({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnES(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTS {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTS({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTS(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTC {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTC({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTC(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSC {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSC({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSC(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnEC {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnEC({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnEC(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBC {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBC({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBC(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnEE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnEE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnEE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnCE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnCE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnCE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTSA {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTSA({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTSA(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSSA {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSSA({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSSA(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnESA {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnESA({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnESA(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnCSA {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnCSA({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnCSA(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBSA {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBSA({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBSA(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTSB {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTSB({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTSB(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnESB {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnESB({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnESB(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnCSB {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnCSB({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnCSB(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBSB {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBSB({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBSB(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSTSE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSTSE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSTSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnSSE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnSSE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnSSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnESE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnESE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnESE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnCSE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnCSE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnCSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}

class MxColumnBSE {
  final Key key;
  final MainAxisSize mainAxisSize;
  final TextBaseline textBaseline;
  final TextDirection textDirection;
  final VerticalDirection verticalDirection;

  MxColumnBSE({
    this.key,
    this.textBaseline,
    this.textDirection,
    this.mainAxisSize,
    this.verticalDirection,
  });
  Widget list(List<Widget> list) {
    return list.mxcolumnBSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}
