import 'package:flutter/material.dart';
import 'package:material_x/src/Container/Container.dart';

class MxDrawerFullWidth extends StatelessWidget {
  final List<Widget> children;
  final Color backgrounCcolor;

  const MxDrawerFullWidth({Key key, this.backgrounCcolor, this.children})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, //20.0,
      child: Drawer(
        child: new MxContainer(
          color: backgrounCcolor,
          child: new ListView(
            padding: EdgeInsets.only(top: 0.0),
            children: <Widget>[
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ),
              new SizedBox(
                height: 100,
              ),
              new Column(
                children: children == null ? <Widget>[] : children,
              )
            ],
          ),
        ),
      ),
    );
  }
}
