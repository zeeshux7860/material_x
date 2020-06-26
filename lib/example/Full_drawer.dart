import 'package:flutter/material.dart';
import 'package:material_x/example/Rounded_drawer.dart';
import 'package:material_x/material_x.dart';

class FullDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MxDrawerFullWidth(
        backgrounCcolor: Colors.red,
        children: <Widget>[
          new ListTile(
            onTap: () {},
            leading: CircleAvatar(
              backgroundColor: Colors.white,
              child: new Icon(
                Icons.remove,
                color: Colors.black,
              ),
            ),
            title: new Textmaterial(
              color: Colors.white,
              fontsize: 25,
              text: 'Hello World',
            ),
          ),
          new ListTile(
            onTap: () {
              MxRoutePage(context, RoundedDrawer()).exitPush(RoundedDrawer());
            },
            leading: new Icon(
              Icons.remove,
              color: Colors.white,
            ),
            title: new Textmaterial(
              color: Colors.white,
              fontsize: 25,
              text: 'Page SizeTransition',
            ),
          ),
        ],
      ).animation(configMap: MxAnimationType.fadeIn, autoPlay: true),
    );
  }
}
