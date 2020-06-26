import 'package:material_x/material_x.dart';

class ExampleCardGradientListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MxCardListTileGradient(
              trailing: "10min ago".textMaterialColorWhite(),
              blurRadius: 20,
              rounded: 10,
              width: 500,
              leading: Icons.ac_unit.mxListTileIcon(color: Colors.white),
              title: "Testing".textMaterialColorWhite(),
              subTitle: "Lorem Ipsum is simply ".textMaterialColorWhite(),
              onTap: () {},
              shadowColor: Colors.red,
              gradient: [
                Colors.deepPurple,
                Colors.cyan
              ].mxLGrepeated(begin: Alignment.topLeft, end: Alignment.topRight))
          .mxap(value: 20.0),
      MxCardListTileGradient(
              rounded: 10.0,
              leading: Icons.ac_unit.mxListTileIcon(color: Colors.white),
              title: "Testing".textMaterialColorWhite(),
              subTitle: "Lorem Ipsum is simply dummy text of the printing"
                  .textMaterialColorWhite(),
              gradient: [Colors.pink, Colors.deepOrange].mxLGrepeated(
                  begin: Alignment.topLeft, end: Alignment.bottomRight))
          .mxap(value: 20.0),
      MxCardListTileGradient(
              leading: Icons.ac_unit.mxListTileIcon(color: Colors.white),
              title: "Testing".textMaterialColorWhite(),
              subTitle:
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
                      .textMaterialColorWhite(),
              gradient: [Colors.red, Colors.pink].mxLGrepeated(
                  begin: Alignment.topLeft, end: Alignment.bottomRight))
          .mxap(value: 20.0),
    ].mxListView().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'MxCardListTileGradient'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
