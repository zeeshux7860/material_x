import 'package:material_x/material_x.dart';

class ExampleListViewAnimation extends StatefulWidget {
  @override
  _ExampleListViewAnimationState createState() =>
      _ExampleListViewAnimationState();
}

class _ExampleListViewAnimationState extends State<ExampleListViewAnimation> {
  @override
  Widget build(BuildContext context) {
    return (BuildContext context, int index) {
      return AnimationConfiguration.staggeredList(
        position: index,
        duration: const Duration(milliseconds: 1000),
        child: ListTile(
          title: index.toString().textMaterial(),
        )
            .mxContainer(
                color: Colors.white, shadowColor: Colors.blue, blurRadius: 12.0)
            .mxap(value: 20.0)
            .mxFA()
            .mxSA(),
      );
    }.mxListVB(itemCount: 100).mxAnimationLimiter().mxScaffold();
  }
}

//  reAnimateOnVisibility :)
class VerticalExample extends StatefulWidget {
  @override
  _VerticalExampleState createState() => _VerticalExampleState();
}

class _VerticalExampleState extends State<VerticalExample> {
  @override
  Widget build(BuildContext context) {
    return animationItemBuilder(
      (index) {
        return VerticalItem(title: index.toString());
      },
      padding: EdgeInsets.symmetric(vertical: 8),
    ).mxlbAnimated(itemCount: 100, reAnimateOnVisibility: true).mxScaffold();
  }
}
