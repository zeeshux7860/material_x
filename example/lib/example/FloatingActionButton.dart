import 'package:material_x/material_x.dart';

class ExampleFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 'FloatingActionButton'
        .textMaterialColorWhite()
        .toCenter()
        .mxScaffold(
          backgroundColor: Colors.white,
          appBar: 'Flaoting Action Button'.textMaterialColorBlack().mxAppBar(
                brightness: Brightness.light,
                centerTitle: true,
                backgroundColor: Colors.white,
              ),
          floatingActionButton: <Widget>[
            Icons.add.mxIcons().mxFloatinActionExtend(),
            'extend'.text().mxFloatinActionExtend()
          ].mxRowSSB().mxlp(value: 50.0),
        );
  }
}
