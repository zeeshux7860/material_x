import 'package:material_x/material_x.dart';

class ExampleGridViewAnimation extends StatefulWidget {
  @override
  _ExampleGridViewAnimationState createState() =>
      _ExampleGridViewAnimationState();
}

class _ExampleGridViewAnimationState extends State<ExampleGridViewAnimation> {
  @override
  Widget build(BuildContext context) {
    return (BuildContext context, int index) {
      return AnimationConfiguration.staggeredList(
        position: index,
        duration: const Duration(milliseconds: 1000),
        child: index
            .toString()
            .textMaterial(fontsize: 30)
            .toCenter()
            .xContainer(
                color: Colors.white, shadowColor: Colors.blue, blurRadius: 12.0)
            .xap(value: 20.0)
            .xFA()
            .xSA(),
      );
    }
        .xGridVB(
            itemCount: 100,
            gridDelegate: xSGDWFCC(
              crossAxisCount: 4,
            ))
        .xAnimationLimiter()
        .xScaffold();
  }
}

//  reAnimateOnVisibility :)

class GridExample extends StatefulWidget {
  @override
  _GridExampleState createState() => _GridExampleState();
}

class _GridExampleState extends State<GridExample> {
  int itemsCount = 500;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: animationItemBuilder(
                  (index) => HorizontalItem(title: index.toString()))
              .xGridAnimated(
                  itemCount: 100,
                  gridDelegate: xSGDWFCC(
                      crossAxisCount: 4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16))),
    );
  }
}
