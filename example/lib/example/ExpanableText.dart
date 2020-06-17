import 'package:material_x/material_x.dart';

class ExampleExpanableText extends StatefulWidget {
  @override
  _ExampleExpanableTextState createState() => _ExampleExpanableTextState();
}

class _ExampleExpanableTextState extends State<ExampleExpanableText> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      // normal

      "Normal ExapandableText"
          .h2TextBold(color: Colors.black)
          .mxltp(l: 20.0, t: 20.0),
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          .textMaterialColorBlack()
          .mxExpandableText()
          .mxap(value: 20.0),

      // container
      "Container ExapandableText"
          .h2TextBold(color: Colors.black)
          .mxltp(l: 20.0, t: 20.0),
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          .textMaterialColorWhite()
          .mxExpandableText(
              heightunexpand: 100,
              expand: "More Details".textMaterialColorWhite(),
              unexpand: "Less Details".textMaterialColorWhite(),
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start)
          .mxap(value: 20.0)
          .mxContainer(
              color: Color(0xFF2d6dfe),
              rounded: 10.0,
              shadowColor: Color(0xFF2d6dfe),
              blurRadius: 12.0,
              margin: EdgeInsets.all(20.0)),

      // custom
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          .textMaterialColorBlack()
          .mxExpandableText(
              heightunexpand: 90,
              expand: <Widget>[
                Icons.more_horiz.mxIcon(),
                10.0.sizedWidth(),
                "more".text()
              ].mxRowEE().mxContainer(),
              unexpand: <Widget>[
                Icons.more_horiz.mxIcon(),
                10.0.sizedWidth(),
                "less".text()
              ].mxRowEE().mxContainer(),
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end)
          .mxap(value: 20.0)
          .mxContainer(
              color: Colors.white,
              rounded: 10.0,
              shadowColor: Colors.grey,
              blurRadius: 12.0,
              margin: EdgeInsets.all(20.0)),
    ].mxListView().mxScaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            brightness: Brightness.light,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: "Material X ExpandableText ".textMaterialColorBlack(),
          ),
        );
  }
}
