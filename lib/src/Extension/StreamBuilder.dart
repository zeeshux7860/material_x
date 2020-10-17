import 'package:flutter/material.dart';

extension XStreamBuilder on Function(BuildContext, AsyncSnapshot<dynamic>) {
  Widget xStreamBuilder(
      {dynamic initialData, Key key, Stream<dynamic> stream}) {
    return StreamBuilder(
      builder: this,
      initialData: initialData,
      key: key,
      stream: stream,
    );
  }
}

extension XFutureBuilder on Function(BuildContext, AsyncSnapshot<dynamic>) {
  Widget xFutureBuilder(
      {dynamic initialData, Key key, Future<dynamic> future}) {
    return FutureBuilder(
      builder: this,
      initialData: initialData,
      key: key,
      future: future,
    );
  }
}
