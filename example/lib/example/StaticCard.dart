import 'package:material_x/material_x.dart';

class ExampleStaticCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MxStaticCard(
              onTap: () {},
              rounded: 10.0,
              padding: EdgeInsets.all(20.0),
              blurRadius: 12.0,
              shadowColor: Colors.red,
              icon: Icons.ac_unit,
              title: "Text".text(),
              value: '105.0'.h1TextBold(color: Colors.black),
              cicleColor: Colors.red)
          .toCenter(),
      30.0.sizedHeight(),
      MxCustomStatic(
        onTap: () {},
        rounded: 10.0,
        padding: EdgeInsets.all(20.0),
        bgColor: Color(0xFF3d6dfe),
        spaceHeight: 10.0,
        child: Icons.ac_unit
            .xIcon(color: Colors.blue)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 25.0),
        title: "Text".text(style: TextStyle(color: Colors.white)),
        value: '105.0'.h1TextBold(color: Colors.white),
      ).toCenter(),
      10.0.sizedHeight(),
      MxCustomStatic(
        onTap: () {},
        rounded: 10.0,
        padding: EdgeInsets.all(20.0),
        bgColor: Colors.black,
        spaceHeight: 10.0,
        child: Icons.ac_unit
            .xIcon(color: Colors.black, size: 25.0)
            .xCircleAvatar(backgroundColor: Colors.white, radius: 30.0),
        // title: "Text".text(),
        value: '105.0'.h2TextBold(color: Colors.white),
      ).toCenter(),
    ].xcolumnCC().xScaffold(
        backgroundColor: Colors.white,
        appBar: 'StaticCard'.textMaterialColorBlack().xAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
