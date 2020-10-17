import 'package:material_x/material_x.dart';

class ExampleBlogTile extends StatefulWidget {
  @override
  _ExampleBlogTileState createState() => _ExampleBlogTileState();
}

class _ExampleBlogTileState extends State<ExampleBlogTile> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MxBlogTile(
        tileOnTap: () {},
        backSideBackgroundColor: Colors.grey[100],
        cardElevation: 5,
        imageHeight: 200,
        onTap: () {},
        backrounded: 10,
        shape: BorderRadius.circular(10).mxShapeBorder(),
        leading: "Z"
            .textMaterialColorWhite()
            .xCircleAvatar(backgroundColor: Colors.black, radius: 25),
        title: "Image Editor Pro".textMaterialColorBlack(),
        subTitle: "Goto PubDev Check".textMaterial(),
        trailing: '10 min ago'.textMaterial(),
        image:
            "https://user-images.githubusercontent.com/55942632/77652902-fedd9980-6f94-11ea-96d5-d31657590893.png"
                .decorationINToCover(),
      ),
      MxBlogTile(
        rounded: 10,
        color: Color(0xFFff1632),
        tileOnTap: () {},
        backSideBackgroundColor: Colors.grey[100],
        cardElevation: 5,
        imageHeight: 200,
        onTap: () {},
        backrounded: 10,
        shape: BorderRadius.circular(10).mxShapeBorder(),
        leading: "Z"
            .textMaterialColorWhite()
            .xCircleAvatar(backgroundColor: Colors.white, radius: 25),
        title: "Image Editor Pro".textMaterialColorWhite(),
        subTitle: "Goto PubDev Check".textMaterial(color: Colors.grey[50]),
        trailing: '10 min ago'.textMaterial(
          color: Colors.white,
        ),
        image:
            "https://user-images.githubusercontent.com/45489310/78457255-b9d4f980-765d-11ea-8d17-78bb21297de6.png"
                .decorationINToCover(),
      ),
      MxBlogTile(
        color: Colors.orange,
        tileOnTap: () {},
        backSideBackgroundColor: Colors.grey[100],
        cardElevation: 5,
        imageHeight: 200,
        onTap: () {},
        backrounded: 10,
        shape: BorderRadius.circular(10).mxShapeBorder(),
        leading: "Z"
            .textMaterial(fontWeight: FontWeight.bold, color: Colors.black)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 25),
        title: "Image Editor Pro".textMaterialColorWhite(),
        subTitle: "Goto PubDev Check".textMaterial(color: Colors.grey[50]),
        trailing: '10 min ago'.textMaterial(
          color: Colors.white,
        ),
        image:
            "https://user-images.githubusercontent.com/55942632/77652902-fedd9980-6f94-11ea-96d5-d31657590893.png"
                .decorationINToCover(),
      ),
    ].mxListView().mxap(value: 10.0).mxScaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            brightness: Brightness.light,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: "BlogTile ".textMaterialColorBlack(),
          ),
        );
  }
}
