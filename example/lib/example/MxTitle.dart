import 'package:material_x/material_x.dart';

class ExampleMxTitle extends StatefulWidget {
  @override
  _ExampleMxTitleState createState() => _ExampleMxTitleState();
}

class _ExampleMxTitleState extends State<ExampleMxTitle> {
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
        MxTitle(
          leftPadding: 0,
          title: 'MxTitle',
        ),
        HeaderTitle(
          title: "HeaderWidget title".mxCardTileTitle(color: Colors.black),
          subtitle: "HeaderTitle suvtitle".textMaterialColorblueGrey(),
        ),
        HeaderTitle(
          title: <Widget>[
            Icons.add.mxIconTile(color: Colors.red, size: 30),
            10.0.sizedWidth(),
            "Row use ".h1TextBold(color: Colors.black)
          ].mxRow(),
          subtitle: "HeaderTitle suvtitle".textMaterialColorblueGrey(),
        ),
      ].mxcolumnCC(),
    );
  }
}
