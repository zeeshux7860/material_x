import 'package:material_x/material_x.dart';

class ExampleCardTile extends StatefulWidget {
  @override
  _ExampleCardTileState createState() => _ExampleCardTileState();
}

class _ExampleCardTileState extends State<ExampleCardTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: "CardTile".textMaterialColorBlack(),
      ),
      body: <Widget>[
        30.0.sizedHeight(),
        CardTile(
          margin: EdgeInsets.all(10),
          onTap: () {},
          shadowColor: Colors.teal,
          lineColor: Colors.teal,
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          title: "Zeeshan".h2TextBold(color: Colors.black),
          subtitle:
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
                  .textMaterialColorBlack(),
        ).fadeInUp(),
        CardTile(
          margin: EdgeInsets.all(10),
          onTap: () {},
          shadowColor: Colors.pink,
          lineColor: Colors.pink,
          bottomRight: Radius.circular(25),
          title: "Zeeshan".h2TextBold(color: Colors.black),
          subtitle:
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
                  .textMaterialColorBlack(),
        ).slideInLeft(),
        CardTile(
          margin: EdgeInsets.all(10),
          onTap: () {},
          shadowColor: Color(0xFF3d6dfe),
          lineColor: Color(0xFF3d6dfe),
          rounded: 15,
          bottomLeft: Radius.circular(25),
          title: "Zeeshan".h2TextBold(color: Colors.black),
          subtitle:
              " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
                  .textMaterialColorBlack(),
        ).slideInRight(),
      ].mxListView(),
    );
  }
}
