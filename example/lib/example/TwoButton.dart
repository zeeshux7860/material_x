import 'package:material_x/material_x.dart';

class ExampleTwoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TwoButton(
            child1: 'Send'.textMaterialColorWhite(fontsize: 25),
            child2: 'Recive'.textMaterialColorWhite(fontsize: 25),
            color1: Color(0xFF3d6dfe),
            ontap1: () {},
            ontap2: () {},
            elavation: 20.0,
            width: mxwidth(context) / 2.0 - 15,
            rounded: 10.0,
            color2: Colors.pink,
            height: 150)
        .toCenter()
        .mxap(value: 10.0)
        .mxScaffold(
            backgroundColor: Colors.white,
            appBar: 'TwoButton'.textMaterialColorBlack().mxAppBar(
                  brightness: Brightness.light,
                  centerTitle: true,
                  backgroundColor: Colors.white,
                ));
  }
}
