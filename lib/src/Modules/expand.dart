import 'package:material_x/material_x.dart';

class ExpandableText extends StatefulWidget {
  ExpandableText(this.text,
      {this.crossAxisAlignment = CrossAxisAlignment.center,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.expand = const Text("More Details"),
      this.unexpand = const Text("less Details"),
      this.heightunexpand = 50.0});
  final CrossAxisAlignment crossAxisAlignment;
  final MainAxisAlignment mainAxisAlignment;
  final Widget expand;
  final Widget unexpand;
  final Widget text;
  final double heightunexpand;
  @override
  _ExpandableTextState createState() => new _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText>
    with TickerProviderStateMixin<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return <Widget>[
      new AnimatedSize(
          vsync: this,
          duration: const Duration(milliseconds: 500),
          child: new ConstrainedBox(
              constraints: isExpanded
                  ? new BoxConstraints()
                  : new BoxConstraints(maxHeight: widget.heightunexpand),
              child: widget.text)),
      isExpanded
          ? widget.unexpand.mxFlatButton(onPressed: () {
              setState(() => isExpanded = false);
            })
          : widget.expand.mxFlatButton(onPressed: () {
              setState(() => isExpanded = true);
            })
    ].mxcolumn(
        crossAxisAlignment: widget.crossAxisAlignment,
        mainAxisAlignment: widget.mainAxisAlignment);
  }
}
