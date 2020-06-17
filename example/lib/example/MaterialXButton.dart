import 'package:material_x/material_x.dart';

class ExampleMaterialXButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MaterialXButton(
        child: "Submit".textMaterialColorWhite(),
        color: Colors.red,
        height: 50.0,
        width: mxwidth(context),
        onTap: () {},
        elavation: 10,
        rounded: 5,
        spreadRadius: 10,
      ),
      50.0.sizedHeight(),
      "Submit".textMaterialColorWhite().mxButton(
            color: Color(0xFF3d6dfe),
            height: 50.0,
            width: mxwidth(context),
            onTap: () {},
            rounded: 20,
            spreadRadius: 0,
          ),
    ].mxcolumnCC().mxap(value: 20.0).mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'MaterialXButton'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
