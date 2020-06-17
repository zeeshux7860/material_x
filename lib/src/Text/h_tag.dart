import 'package:flutter/material.dart';

class H1 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H1({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 32),
    );
  }
}

class H2 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H2({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 24),
    );
  }
}

class H3 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H3({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 19),
    );
  }
}

class H4 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H4({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 16),
    );
  }
}

class H5 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H5({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 14),
    );
  }
}

class H6 extends StatelessWidget {
  final FontWeight fontWeight;
  final Color color;
  final String text;
  const H6({Key key, this.fontWeight, this.color, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontWeight: fontWeight, fontSize: 13),
    );
  }
}
