import 'package:material_x/material_x.dart';

class OKK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Center(
          child: Text("data"),
        ),
        (context, l) {}.mxListVB(itemCount: 10)
      ],
    ));
  }
}

class OKKS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return mxColumn.list(["data".text().toCenter()]).mxScaffold();
  }
}
