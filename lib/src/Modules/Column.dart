import 'package:material_x/material_x.dart';

MxColumn xColumn = MxColumn();
MxColumnSS xColumnSS = MxColumnSS();
MxColumnBS xColumnBS = MxColumnBS();
MxColumnCC xColumnCC = MxColumnCC();
MxColumnES xColumnES = MxColumnES();
MxColumnSTS xColumnSTS = MxColumnSTS();
MxColumnSTC xColumnSTC = MxColumnSTC();
MxColumnSC xColumnSC = MxColumnSC();
MxColumnEC xColumnEC = MxColumnEC();
MxColumnBC xColumnBC = MxColumnBC();
MxColumnSTE xColumnSTE = MxColumnSTE();
MxColumnSE xColumnSE = MxColumnSE();
MxColumnEE xColumnEE = MxColumnEE();
MxColumnCE xColumnCE = MxColumnCE();
MxColumnBE xColumnBE = MxColumnBE();
MxColumnSTSA xColumnSTSA = MxColumnSTSA();
MxColumnSSA xColumnSSA = MxColumnSSA();
MxColumnESA xColumnESA = MxColumnESA();
MxColumnCSA xColumnCSA = MxColumnCSA();
MxColumnBSA xColumnBSA = MxColumnBSA();
MxColumnSTSB xColumnSTSB = MxColumnSTSB();
MxColumnSSB xColumnSSB = MxColumnSSB();
MxColumnESB xColumnESB = MxColumnESB();
MxColumnCSB xColumnCSB = MxColumnCSB();
MxColumnBSB xColumnBSB = MxColumnBSB();
MxColumnSTSE xColumnSTSE = MxColumnSTSE();
MxColumnSSE xColumnSSE = MxColumnSSE();
MxColumnESE xColumnESE = MxColumnESE();
MxColumnCSE xColumnCSE = MxColumnCSE();
MxColumnBSE xColumnBSE = MxColumnBSE();

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
    return list.xcolumn(
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
    return list.xcolumnCC(
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
    return list.xcolumnSS(
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
    return list.xcolumnSSB(
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
    return list.xcolumnBS(
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
    return list.xcolumnES(
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
    return list.xcolumnSTS(
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
    return list.xcolumnSTC(
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
    return list.xcolumnSC(
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
    return list.xcolumnEC(
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
    return list.xcolumnBC(
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
    return list.xcolumnSTE(
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
    return list.xcolumnSE(
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
    return list.xcolumnEE(
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
    return list.xcolumnCE(
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
    return list.xcolumnBE(
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
    return list.xcolumnSTSA(
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
    return list.xcolumnSSA(
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
    return list.xcolumnESA(
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
    return list.xcolumnCSA(
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
    return list.xcolumnBSA(
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
    return list.xcolumnSTSB(
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
    return list.xcolumnESB(
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
    return list.xcolumnCSB(
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
    return list.xcolumnBSB(
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
    return list.xcolumnSTSE(
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
    return list.xcolumnSSE(
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
    return list.xcolumnESE(
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
    return list.xcolumnCSE(
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
    return list.xcolumnBSE(
        // crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        key: key,
        //  mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
        mainAxisSize: mainAxisSize ?? MainAxisSize.max,
        textBaseline: textBaseline,
        textDirection: textDirection,
        verticalDirection: verticalDirection ?? VerticalDirection.down);
  }
}
