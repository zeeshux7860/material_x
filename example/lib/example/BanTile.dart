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
            Icons.arrow_back_ios.mxIconTile().mcIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile:
            Icons.arrow_forward_ios.mxIconTile().mcIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            text: "Text",
            color: Colors.white,
          ),
          15.0.sizedHeight()
        ].mxcolumn(),
      ).mxContainer(
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
        rounded: 5,
        color: Color(0xFF3d6dfe),
      ),
      // second --------------------------------
      BanTile(
        leftTile: Icons.arrow_back_ios
            .mxIconTile(color: Colors.black)
            .mcIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorBlack(),
        rightTile: Icons.arrow_forward_ios
            .mxIconTile(color: Colors.black)
            .mcIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          "https://image.freepik.com/free-vector/colorful-abstract-background_23-2148468383.jpg"
              .mxImageNetwork(repeat: ImageRepeat.noRepeat),
          15.0.sizedHeight()
        ].mxcolumn(),
      ).mxContainer(
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
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].mxcolumn(),
      ).mxContainer(
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
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].mxcolumn(),
      ).mxContainerGradient(
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
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        centerTitle: "CenterTitle".textMaterialColorWhite(),
        rightTile: Icons.arrow_forward_ios
            .mxIconTile(color: Colors.white)
            .mcIconButton(onPressed: () {}),
        body: <Widget>[
          10.0.sizedHeight(),
          H2(
            color: Colors.white,
            text: "Text",
          ),
          15.0.sizedHeight()
        ].mxcolumn(),
      ).mxContainerGradient(
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
    ].mxListView().mxap(value: 10).mxScaffold(
        backgroundColor: Colors.white,
        appBar: "BanTile ".textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
