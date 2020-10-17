import 'package:material_x/material_x.dart';

double value = 200.0;

class ExampleFlexible extends StatefulWidget {
  @override
  _ExampleFlexibleState createState() => _ExampleFlexibleState();
}

class _ExampleFlexibleState extends State<ExampleFlexible> {
  @override
  Widget build(BuildContext context) {
    List<Widget> menu = [
      MxCustomStatic(
        onTap: () {},
        rounded: 10.0,
        padding: EdgeInsets.all(20.0),
        bgColor: Colors.black,
        spaceHeight: 10.0,
        child: Icons.ac_unit
            .mxIcon(color: Colors.black, size: 25.0)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 30.0),
        // title: "Text".text(),
        value: '105.0'.h2TextBold(color: Colors.white),
      ).mxFlexableRes(350.0 <= value),
      20.0.sizedHeight(),
      MxCustomStatic(
        onTap: () {},
        rounded: 10.0,
        padding: EdgeInsets.all(20.0),
        bgColor: Colors.black,
        spaceHeight: 10.0,
        child: Icons.ac_unit
            .mxIcon(color: Colors.black, size: 25.0)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 30.0),
        // title: "Text".text(),
        value: '105.0'.h2TextBold(color: Colors.white),
      ).mxFlexableRes(350.0 <= value),
      20.0.sizedHeight(),
      MxCustomStatic(
        onTap: () {},
        rounded: 10.0,
        padding: EdgeInsets.all(20.0),
        bgColor: Colors.black,
        spaceHeight: 10.0,
        child: Icons.ac_unit
            .mxIcon(color: Colors.black, size: 25.0)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 30.0),
        // title: "Text".text(),
        value: '105.0'.h2TextBold(color: Colors.white),
      ).mxFlexableRes(350.0 <= value)
    ];
    return <Widget>[
      350.0 <= value
          ? menu.mxRowSSB().mxap(value: 20.0).fadeIn()
          : menu.mxcolumn().fadeInLeft().mxContainer(
                width: value,
              ),
      Slider(
          value: value,
          max: 500.0,
          onChanged: (v) {
            setState(() {
              value = v;
            });
          })
    ].mxcolumnCC().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'Column & Row Responsive'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
