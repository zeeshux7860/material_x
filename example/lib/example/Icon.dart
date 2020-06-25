import 'package:material_x/material_x.dart';

class ExampleIcon extends StatefulWidget {
  @override
  _ExampleIconState createState() => _ExampleIconState();
}

class _ExampleIconState extends State<ExampleIcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: 'Icon'.textMaterialColorBlack(),
      ),
      body: <Widget>[
        40.0.sizedHeight(),
        Icons.adb.mxIconTile(color: Colors.black, size: 50).toCenter(),
        40.0.sizedHeight(),
        Icons.adb.mxListTileIcon(
            height: 100, width: 100, color: Colors.red, size: 50),
        Icons.adb
            .mxIconTile(color: Colors.white, size: 30)
            .lableIcon(
                color: Colors.red,
                lable: 'white'.textMaterialColorWhite(),
                onTap: () {},
                rounded: 15)
            .mxap(value: 10)
            .fadeIn()
      ].mxcolumnCC(),
    );
  }
}
