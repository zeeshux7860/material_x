import 'package:material_x/material_x.dart';

class ExampleBottomNavigationBar extends StatefulWidget {
  @override
  _ExampleBottomNavigationBarState createState() =>
      _ExampleBottomNavigationBarState();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
}

class _ExampleBottomNavigationBarState
    extends State<ExampleBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
          .textMaterialColorBlack()
          .mxExpandableText()
          .mxap(value: 20.0),
    ]
        .mxListView()
        .mxScaffold(
            bottomNavigationBar: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icons.home.mxIcons(),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icons.business.mxIcons(),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icons.school.mxIcons(),
            label: 'School',
          ),
        ].mxBottomNavigationBar(
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: onItemTapped,
        ))
        .mxSafeArea();
  }

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
