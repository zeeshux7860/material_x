import 'package:material_x/material_x.dart';

class ExampleXTitle extends StatefulWidget {
  @override
  _ExampleXTitleState createState() => _ExampleXTitleState();
}

class _ExampleXTitleState extends State<ExampleXTitle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: "Title".textMaterialColorBlack(),
      ),
      body: <Widget>[
        XTitle(
          leftPadding: 0,
          title: 'XTitle',
        ),
        HeaderTitle(
          title: "HeaderWidget title".xCardTileTitle(color: Colors.black),
          subtitle: "HeaderTitle suvtitle".textMaterialColorblueGrey(),
        ),
        HeaderTitle(
          title: <Widget>[
            Icons.add.xIconTile(color: Colors.red, size: 30),
            10.0.sizedWidth(),
            "Row use ".h1TextBold(color: Colors.black)
          ].xRow(),
          subtitle: "HeaderTitle suvtitle".textMaterialColorblueGrey(),
        ),
      ].xcolumnCC(),
    );
  }
}
