import 'package:material_x/material_x.dart';

class ExampleH extends StatefulWidget {
  @override
  _ExampleHState createState() => _ExampleHState();
}

class _ExampleHState extends State<ExampleH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: "H1 to H6".textMaterialColorBlack(),
      ),
      body: <Widget>[
        H1(
          text: 'H1 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H1".h1TextBold(color: Colors.black),
        H2(
          text: 'H2 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H2".h2TextBold(color: Colors.black),
        H2(
          text: 'H2 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H2".h2TextBold(color: Colors.black),
        H3(
          text: 'H3 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H3".h3TextBold(color: Colors.black),
        H4(
          text: 'H4 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H4".h4TextBold(color: Colors.black),
        H5(
          text: 'H5 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H5".h5TextBold(color: Colors.black),
        H6(
          text: 'H6 Widget',
          color: Colors.black,
        ).mxContainer().toCenter(),
        "H6".h6TextBold(color: Colors.black),
      ].mxcolumnCC(),
    );
  }
}
