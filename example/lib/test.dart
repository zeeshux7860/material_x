import 'package:material_x/material_x.dart';

class OKK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 100,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Text("data");
          }),
    ));
  }
}

class OKKS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (context, index) {}
        .mxListVBH(itemCount: 10)
        .mxContainer(height: 100)
        .mxScaffold();
  }
}
