import 'package:material_x/material_x.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return '$value'.text().toCenter().mxScaffold(
        floatingActionButton:
            Icons.add.mxIcons().mxFloationActiobButton(onTap: () {}));
  }

  var value = 0;
  void increment() {
    setState(() {
      value++;
    });
  }
}
