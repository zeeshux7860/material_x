import 'package:material_x/material_x.dart';

class ExampleCardListTile extends StatefulWidget {
  @override
  _ExampleCardListTileState createState() => _ExampleCardListTileState();
}

class _ExampleCardListTileState extends State<ExampleCardListTile> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        title: "MxCardListTile".textMaterialColorBlack(),
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: <Widget>[
        MxCardListTile(
          trailing: "10min ago".textMaterialColorWhite(),
          leading: Icons.add.mxListTileIcon(color: Colors.white),
          color: Colors.red,
          title: "Test".textMaterialColorWhite(),
          subTitle: "Material-X package ".textMaterialColorWhite(),
          width: 500,
          onTap: () {},
        ),
        20.0.sizedHeight(),
        MxCardListTile(
          color: Color(0xFF3D6dfe),
          title: "Test".textMaterialColorWhite(),
          subTitle: "Material-X package ".textMaterialColorWhite(),
          width: 500,
          onTap: () {},
        ),
        20.0.sizedHeight(),
        MxCardListTile(
          leading: "z"
              .textMaterial(fontWeight: FontWeight.bold)
              .circleAvatar(backgroundColor: Colors.white),
          rounded: 20,
          color: Colors.orange,
          title: "Test".textMaterialColorWhite(),
          subTitle: "Material-X package ".textMaterialColorWhite(),
          width: 500,
          onTap: () {},
        ),
        20.0.sizedHeight(),
        MxCardListTile(
          color: Colors.yellow,
          title: "Test".textMaterialColorWhite(),
          subTitle: "Material-X package ".textMaterialColorWhite(),
          width: 500,
          image:
              "https://image.freepik.com/free-psd/tropical-foliage-background_53876-91352.jpg"
                  .decorationINToCover(),
          onTap: () {},
        ),
        20.0.sizedHeight(),
        MxCardListTile(
          leading: Icons.fullscreen.mxListTileIcon(color: Colors.white),
          color: Colors.green,
          title: "Test".textMaterialColorWhite(),
          subTitle: "Material-X package ".textMaterialColorWhite(),
          width: 500,
          image:
              "https://image.freepik.com/free-vector/realistic-dark-tropical-leaves-background_52683-30656.jpg"
                  .decorationINToCover(),
          onTap: () {},
        ),
      ].mxcolumnCC().mxap(value: 10.0),
    );
  }
}
