import 'package:material_x/material_x.dart';

class ExampleDecorationImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      '3 Type of decorationimage'
          .h1TextBold(color: Colors.black)
          .mxap(value: 20.0),
      <Widget>[
        '.decorationINToCover  // mean IN  image network its mean you can change last cover contain fitheight etc'
            .text(),
        10.0.sizedHeight(),
        '.decorationIAToCover  // mean IA  image assets its mean you can change last cover contain fitheight etc'
            .text(),
        10.0.sizedHeight(),
        '.decorationIFToCover  // mean IF  image file its mean you can change last cover contain fitheight etc'
            .text(),
      ].mxcolumn().mxap(value: 20.0),
      'https://img.freepik.com/free-psd/tropical-foliage-background_53876-91352.jpg?size=626&ext=jpg'
          .decorationINToCover()
          .mxContainer(
              rounded: 10.0,
              onTap: () {},
              margin: EdgeInsets.all(20.0),
              height: 250.0,
              width: mxwidth(context)),
      20.0.sizedHeight(),
      'https://image.freepik.com/free-vector/abstract-technology-particle-background_52683-25766.jpg'
          .decorationINToCover()
          .mxContainer(
              child: 'Image Show Text'.textMaterialColorWhite().toCenter(),
              blurRadius: 50.0,
              spreadRadius: 1.0,
              shadowColor: Colors.grey,
              rounded: 10.0,
              onTap: () {},
              margin: EdgeInsets.all(20.0),
              height: 250.0,
              width: mxwidth(context))
    ].mxListView().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'Decorationimage'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
