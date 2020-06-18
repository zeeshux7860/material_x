import 'package:material_x/material_x.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage().mxMaterialApp();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return mxListView.list([
      ["one", "two", "three"].mxDropdownLabel(
          name: "zeshan",
          onChanged: (v) {
            setState(() {});
          },
          dropdownValue: "two")
    ]).mxScaffold(
      appBar: "example Dropdown".text().mxAppBar()
    );
  }
}
