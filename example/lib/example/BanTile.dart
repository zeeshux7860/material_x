import 'package:material_x/material_x.dart';

class ExamplebanTile extends StatefulWidget {
  @override
  _ExamplebanTileState createState() => _ExamplebanTileState();
}

class _ExamplebanTileState extends State<ExamplebanTile> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      // first --------------------------------
      BanTile(
        leftTile:
            Icons.arrow_back_ios.xIconTile().xIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile:
            Icons.arrow_forward_ios.xIconTile().xIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            text: "Text",
            color: Colors.white,
          ),
          15.0.sizedHeight()
        ].xcolumn(),
      ).xContainer(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        color: Color(0xFF3d6dfe),
      ),
      // second --------------------------------
      BanTile(
        leftTile: Icons.arrow_back_ios
            .xIconTile(color: Colors.black)
            .xIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorBlack(),
        rightTile: Icons.arrow_forward_ios
            .xIconTile(color: Colors.black)
            .xIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          "https://image.freepik.com/free-vector/colorful-abstract-background_23-2148468383.jpg"
              .xImageNetwork(repeat: ImageRepeat.noRepeat),
          15.0.sizedHeight()
        ].xcolumn(),
      ).xContainer(
        onTap: () {},
        // padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        shadowColor: Colors.grey,
        blurRadius: 15.0,
        color: Colors.white,
      ),
      // third --------------------------------
      BanTile(
        leftTile: Icons.arrow_back_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].xcolumn(),
      ).xContainer(
        onTap: () {},
        image:
            "https://image.freepik.com/free-vector/abstract-technology-particle-background_52683-25766.jpg"
                .decorationINToCover(),
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        shadowColor: Colors.grey,
        blurRadius: 15.0,
        color: Colors.white,
      ),
      // Four --------------------------------
      BanTile(
        leftTile: Icons.arrow_back_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].xcolumn(),
      ).xContainerGradient(
        onTap: () {},
        image:
            "https://image.freepik.com/free-vector/abstract-technology-particle-background_52683-25766.jpg"
                .decorationINToCover(),
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        shadowColor: Colors.grey,
        blurRadius: 15.0,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFF000428),
            const Color(0xFF004e92)
          ], // whitish to gray
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
      ),
      // Four --------------------------------
      BanTile(
        leftTile: Icons.arrow_back_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .xIconTile(color: Colors.white)
            .xIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].xcolumn(),
      ).xContainerGradient(
        image:
            "https://image.freepik.com/free-vector/abstract-technology-particle-background_52683-25766.jpg"
                .decorationINToCover(),
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        shadowColor: Colors.grey,
        blurRadius: 15.0,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
          colors: [
            const Color(0xFFFF5F6D),
            const Color(0xFFFFC371)
          ], // whitish to gray
          tileMode: TileMode.mirror, // repeats the gradient over the canvas
        ),
      ),
    ].xListView().xap(value: 10).xScaffold(
        backgroundColor: Colors.white,
        appBar: "BanTile ".textMaterialColorBlack().xAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
