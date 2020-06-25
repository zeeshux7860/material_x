import 'package:material_x/material_x.dart';

class ExamplePadding extends StatefulWidget {
  @override
  _ExamplePaddingState createState() => _ExamplePaddingState();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
}

class _ExamplePaddingState extends State<ExamplePadding> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      <Widget>[
        'single value pass'.h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        ' .mxap(value: 20.0) all pading'.text().mxap(value: 20.0),
        ' .mxlp(value: 20.0) left pading'.text().mxlp(value: 20.0),
        ' .mxrp(value: 20.0) right pading'.text().mxrp(value: 20.0),
        ' .mxbp(value: 20.0) bottom pading'.text().mxbp(value: 20.0),
        ' .mxbp(value: 20.0) bottom pading'.text().mxbp(value: 20.0),
        20.0.sizedHeight(),
        '2 side value pass'.h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        ' .mxlrp(l: 20,r: 20) left rigth pading'.text().mxlrp(l: 20, r: 20),
        ' .mxltp(l: 20.0, t: 20.0) left top pading'
            .text()
            .mxltp(l: 20.0, t: 20.0),
        ' .mxlbp(l: 20.0, b: 20.0) left bottom pading'
            .text()
            .mxlbp(l: 20.0, b: 20.0),
        ' .mxtbp(t: 20.0,b: 20.0) top bottom pading'
            .text()
            .mxtbp(t: 20.0, b: 20.0),
        ' .mxrtp(t: 20.0, r: 20.0) right top padding'
            .text()
            .mxrtp(t: 20.0, r: 20.0),
        ' .mxrbp(b: 20.0, r: 20.0) right top padding'
            .text()
            .mxrbp(b: 20.0, r: 20.0),
        20.0.sizedHeight(),
        '3 side value pass'.h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        ' .mxlbtp(b: 20.0, l: 20.0, t: 20.0) left bottom top  padding'
            .text()
            .mxlbtp(b: 20.0, l: 20.0, t: 20.0),
        ' .mxlrbp(b: 20.0, l: 20.0, r: 20.0) left bottom rigth  padding'
            .text()
            .mxlrbp(b: 20.0, l: 20.0, r: 20.0),
        ' .mxlrtp(t: 20.0, l: 20.0, r: 20.0) left right top  padding'
            .text()
            .mxlrtp(t: 20.0, l: 20.0, r: 20.0),
      ].mxcolumnSS().mxap(value: 20.0)
    ].mxListView().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'Padding'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
