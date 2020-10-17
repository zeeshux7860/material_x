import 'package:material_x/material_x.dart';

class ExampleXCardTile extends StatefulWidget {
  @override
  _ExampleXCardTileState createState() => _ExampleXCardTileState();
}

class _ExampleXCardTileState extends State<ExampleXCardTile> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      XCardTile(
        rounded: 10,
        title: "Zeeshan".xCardTileTitle(),
        subtitle1: "Software Engineer".textMaterialColorWhite(),
        boxRounded: 10,
        boxChild: Icons.android.xIconTile(),
        subtitle2: Icons.data_usage.xIconTile().slideInUp(),
        backgroundColor: Colors.pink.shade400,
        boxColor: Colors.pink.shade100,
      ).animation(configMap: XAnimationType.fadeIn, autoPlay: true),
      10.0.sizedHeight(),
      XCardTile(
        rounded: 2,
        title: "Zeeshan".xCardTileTitle(),
        subtitle1: "Software Engineer".textMaterialColorWhite(),
        boxRounded: 5,
        boxChild: Icons.android.xIconTile(),
        subtitle2: Icons.arrow_drop_down.xIconTile().fadeIn(),
        backgroundColor: Colors.deepOrangeAccent.shade400,
        boxColor: Colors.deepOrangeAccent.shade100,
      ).animation(configMap: XAnimationType.fadeIn, autoPlay: true),
      10.0.sizedHeight(),
      XCardTile(
        rounded: 10,
        title: "Zeeshan".xCardTileTitle(),
        subtitle1: "Software Engineer".textMaterialColorWhite(),
        backgroundColor: Colors.deepPurple,
        boxColor: Colors.deepPurple.shade100,
        boxRounded: 100,
        boxChild: Icons.android.xIconTile(),
        subtitle2: Icons.arrow_forward_ios.xIconTile().flipInY(),
      ).fadeIn(),
    ].xcolumnCC().xScaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: "XCardTile".textMaterialColorBlack(),
          ),
        );
  }
}
