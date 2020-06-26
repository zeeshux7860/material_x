import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension StringWidget on Widget {
  Widget copyWidget(context) {
    final snackBar = SnackBar(
      content: Text("Copied to Clipboard"),
      action: SnackBarAction(label: 'Undo', onPressed: () {}),
    );
    return InkWell(
      child: this,
      onTap: () {
        print(this.toString());
        Clipboard.setData(new ClipboardData(text: this.toString()));
        Scaffold.of(context).showSnackBar(snackBar);
      },
    );
  }
}
