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
        "single value pass".h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        " .xap(value: 20.0) all pading".text().xap(value: 20.0),
        " .xlp(value: 20.0) left pading".text().xlp(value: 20.0),
        " .xrp(value: 20.0) right pading".text().xrp(value: 20.0),
        " .xbp(value: 20.0) bottom pading".text().xbp(value: 20.0),
        " .xbp(value: 20.0) bottom pading".text().xbp(value: 20.0),
        20.0.sizedHeight(),
        "2 side value pass".h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        " .xlrp(l: 20,r: 20) left rigth pading".text().xlrp(l: 20, r: 20),
        " .xltp(l: 20.0, t: 20.0) left top pading"
            .text()
            .xltp(l: 20.0, t: 20.0),
        " .xlbp(l: 20.0, b: 20.0) left bottom pading"
            .text()
            .xlbp(l: 20.0, b: 20.0),
        " .xtbp(t: 20.0,b: 20.0) top bottom pading"
            .text()
            .xtbp(t: 20.0, b: 20.0),
        " .xrtp(t: 20.0, r: 20.0) right top padding"
            .text()
            .xrtp(t: 20.0, r: 20.0),
        " .xrbp(b: 20.0, r: 20.0) right top padding"
            .text()
            .xrbp(b: 20.0, r: 20.0),
        20.0.sizedHeight(),
        "3 side value pass".h1TextBold(color: Colors.black),
        20.0.sizedHeight(),
        " .xlbtp(b: 20.0, l: 20.0, t: 20.0) left bottom top  padding"
            .text()
            .xlbtp(b: 20.0, l: 20.0, t: 20.0),
        " .xlrbp(b: 20.0, l: 20.0, r: 20.0) left bottom rigth  padding"
            .text()
            .xlrbp(b: 20.0, l: 20.0, r: 20.0),
        " .xlrtp(t: 20.0, l: 20.0, r: 20.0) left right top  padding"
            .text()
            .xlrtp(t: 20.0, l: 20.0, r: 20.0),
      ].xcolumnSS().xap(value: 20.0)
    ].xListView().xScaffold(
        backgroundColor: Colors.white,
        appBar: 'Padding'.textMaterialColorBlack().xAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
