import 'package:material_x/material_x.dart';

class ExampleMxListTile extends StatefulWidget {
  @override
  _ExampleMxListTileState createState() => _ExampleMxListTileState();
}

class _ExampleMxListTileState extends State<ExampleMxListTile> {
  bool isActive = true;
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      xListTile(
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              icon: Icons.home,
              selectedColor: Colors.black,
              unSelectedColor: Colors.red,
              selected: isActive,
              text: "Home")
          .bounce(),
      xListTile(
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              icon: Icons.home,
              selectedColor: Colors.black,
              unSelectedColor: Colors.red,
              selected: isActive,
              text: "Home")
          .xContainer(
              margin: EdgeInsets.all(10),
              color: Colors.white,
              rounded: 10,
              shadowColor: Colors.grey,
              blurRadius: 12),
      xListTile(
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              icon: Icons.home,
              selectedColor: Colors.white,
              unSelectedColor: Colors.red,
              selected: isActive,
              text: "Home")
          .xContainer(
              margin: EdgeInsets.all(10),
              color: Color(0xFF3d6dfe),
              rounded: 10,
              shadowColor: Color(0xFF3d6dfe),
              blurRadius: 12),
      xListTile(
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              icon: Icons.home,
              selectedColor: Colors.white,
              unSelectedColor: Colors.red,
              selected: isActive,
              trailing: Icons.add.xIconTile(size: 30),
              text: "Home")
          .xContainer(
              margin: EdgeInsets.all(10),
              color: Colors.black,
              rounded: 10,
              shadowColor: Colors.black,
              blurRadius: 12),
      xListTile(
              subtitle: "Text".textMaterialColorWhite(),
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              iconSize: 35,
              icon: Icons.home,
              selectedColor: Colors.white,
              unSelectedColor: Colors.red,
              selected: isActive,
              text: "Home")
          .xContainerGradient(
              margin: EdgeInsets.all(10),
              gradient: [Colors.red, Colors.pink].xLGClamp(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 0.0),
              ),
              rounded: 10,
              shadowColor: Colors.grey,
              blurRadius: 12),
      xListTile(
              subtitle: "Text".textMaterialColorWhite(),
              onTap: () {
                setState(() {
                  if (isActive) {
                    isActive = false;
                  } else {
                    isActive = true;
                  }
                });
              },
              iconSize: 35,
              icon: Icons.home,
              selectedColor: Colors.white,
              unSelectedColor: Colors.red,
              selected: isActive,
              trailing: MaterialXButton(
                  color: Colors.white,
                  rounded: 5,
                  child: "Add".textMaterialColorBlack(),
                  onTap: () {
                    setState(() {
                      if (isActive) {
                        isActive = false;
                      } else {
                        isActive = true;
                      }
                    });
                  },
                  width: 100,
                  height: 30),
              text: "Home")
          .xContainerGradient(
              margin: EdgeInsets.all(10),
              gradient: [Colors.orange, Colors.red].xLGrepeated(
                begin: Alignment.topLeft,
                end: Alignment(0.8, 0.0),
              ),
              rounded: 10,
              shadowColor: Colors.red,
              blurRadius: 12),
    ].xcolumnCC().xap(value: 10).xScaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            title: "xListTile".textMaterialColorBlack(),
            brightness: Brightness.light,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
        );
  }
}
