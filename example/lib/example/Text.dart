import 'package:material_x/material_x.dart';

class ExampleText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      "Text all parm".text(),
      5.0.sizedHeight(),
      Textmaterial(
        text: "Textmaterial()",
        fontsize: 20,
      ),
      5.0.sizedHeight(),
      ".textMaterial()".textMaterial(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorBlack()".textMaterialColorBlack(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorCyan()".textMaterialColorCyan(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColoramber()".textMaterialColoramber(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColordeepOrange()"
          .textMaterialColordeepOrange(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorblue()".textMaterialColorblue(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorgreen()".textMaterialColorgreen(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorlightBlue()".textMaterialColorlightBlue(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorindigo()".textMaterialColorindigo(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorpink()".textMaterialColorpink(fontsize: 20),
      5.0.sizedHeight(),
      ".textMaterialColorteal()".textMaterialColorteal(fontsize: 20),
    ].xcolumnSS().xap(value: 20.0).xScaffold(
        backgroundColor: Colors.white,
        appBar: 'Demo Text'.textMaterialColorBlack().xAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
