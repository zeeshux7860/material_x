import 'package:material_x/material_x.dart';

import 'example/CardBanner.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    mxStatusBar();
    return ExampleCardBanner().mxMaterialApp(title: 'zeeshan');
  }
}
