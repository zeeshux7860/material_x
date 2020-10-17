import 'package:material_x/material_x.dart';

class ExampleContainer extends StatefulWidget {
  @override
  _ExampleContainerState createState() => _ExampleContainerState();
}

class _ExampleContainerState extends State<ExampleContainer> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      "image Container".h1TextBold(color: Colors.black).xltp(l: 20.0, t: 20.0),
      "text".textMaterialColorWhite().toCenter().xContainer(
          onTap: () {},
          margin: EdgeInsets.all(20.0),
          color: Colors.orange,
          height: 200,
          blurRadius: 12,
          rounded: 10,
          image:
              "https://image.freepik.com/free-psd/tropical-foliage-background_53876-91352.jpg"
                  .decorationINToCover(),
          width: xwidth(context) // auto detect full width
          ),
      "Normal Container".h1TextBold(color: Colors.black).xltp(l: 20.0, t: 20.0),
      "text".textMaterialColorWhite().toCenter().xContainer(
          onTap: () {},
          margin: EdgeInsets.all(20.0),
          color: Colors.pink,
          height: 200,
          width: xwidth(context) // auto detect full width
          ),
      "Feature Container"
          .h1TextBold(color: Colors.black)
          .xltp(l: 20.0, t: 20.0),
      "text".textMaterialColorWhite().toCenter().xContainer(
          onTap: () {},
          rounded: 20.0,
          shadowColor: Colors.black,
          margin: EdgeInsets.all(20.0),
          color: Color(0xFF3d6dfe),
          height: 200,
          blurRadius: 5,
          width: xwidth(context) // auto detect full width
          ),
      "Elliptical Container"
          .h1TextBold(color: Colors.black)
          .xltp(l: 20.0, t: 20.0),
      "text".textMaterialColorWhite().toCenter().xContainer(
          onTap: () {},
          margin: EdgeInsets.all(20.0),
          color: Colors.orange,
          height: 200,
          blurRadius: 12,
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(100, 50),
            bottomRight: Radius.elliptical(100, 50),
          ),
          width: xwidth(context) // auto detect full width
          ),
    ].xListView().xScaffold(
          backgroundColor: Colors.white,
          appBar: new AppBar(
            brightness: Brightness.light,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: "Material X Container ".textMaterialColorBlack(),
          ),
        );
  }
}
