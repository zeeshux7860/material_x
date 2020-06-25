import 'package:material_x/material_x.dart';

class ExampleTransactionTile extends StatefulWidget {
  @override
  _ExampleTransactionTileState createState() => _ExampleTransactionTileState();
}

class _ExampleTransactionTileState extends State<ExampleTransactionTile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: 'TransactiontTile '.textMaterialColorBlack(),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: <Widget>[
            MxTransactiontTile(
                    onTap: () {},
                    leading: Icons.book.mxListTileIcon(color: Colors.purple),
                    title: 'Zeeshan'.mxCardTileTitle(color: Colors.black),
                    subtitle: 'Developr!!'.textMaterialColorgrey(),
                    trailing1: '+ 1234500.0'.textMaterialColorBlack(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorblueGrey())
                .fadeInDown(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    onTap: () {},
                    leading: Icons.laptop_mac.mxTransactionTileIcon(
                      color: Colors.blue,
                    ),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.black, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorgrey(),
                    trailing1: '+ 1234500.0'.textMaterialColorBlack(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorblueGrey())
                .mxContainer(color: Colors.white)
                .fadeInLeft(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    onTap: () {},
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.black, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorgrey(),
                    trailing1: '+ 1234500.0'.textMaterialColorBlack(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorblueGrey())
                .mxContainer(color: Colors.white)
                .fadeInRight(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    onTap: () {},
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.white, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorWhite(),
                    trailing1: '+ 1234500.0'.textMaterialColorWhite(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorWhite())
                .mxContainer(color: Color(0xFF3d6dfe))
                .fadeInUp(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.white, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorWhite(),
                    trailing1: '+ 1234500.0'.textMaterialColorWhite(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorWhite())
                .mxContainer(color: Colors.orange, rounded: 10, onTap: () {})
                .fadeInUp(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.white, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorWhite(),
                    trailing1: '+ 1234500.0'.textMaterialColorWhite(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    onTap: () {},
                    trailing2: 'sep 15 2019'.textMaterialColorWhite())
                .mxContainer(
                  color: Colors.red,
                  blurRadius: 12,
                  spreadRadius: 0.5,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.elliptical(50, 50),
                      topLeft: Radius.elliptical(50, 50)),
                  shadowColor: Colors.redAccent,
                )
                .fadeInUp(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.white, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorWhite(),
                    trailing1: '+ 1234500.0'.textMaterialColorWhite(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorWhite())
                .mxContainer(
                    color: Colors.pink,
                    blurRadius: 12,
                    spreadRadius: 0.5,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.elliptical(100, 50)),
                    shadowColor: Colors.pinkAccent,
                    onTap: () {})
                .fadeInUp(),
            10.0.sizedHeight(),
            MxTransactiontTile(
                    leading:
                        'https://yt3.ggpht.com/a/AGF-l78mULPjAtTZ0U987YPHe5quNFIrNHYlWi9WvA=s900-c-k-c0xffffffff-no-rj-mo'
                            .mxCircleNetWorkImage(),
                    title: 'Apple Mac Laptop'
                        .mxCardTileTitle(color: Colors.white, fontsize: 15),
                    subtitle: 'Buy'.textMaterialColorWhite(),
                    trailing1: '+ 1234500.0'.textMaterialColorWhite(
                        fontsize: 15, fontWeight: FontWeight.bold),
                    middleSpace: 5.0,
                    trailing2: 'sep 15 2019'.textMaterialColorWhite())
                .mxContainer(
                    color: Colors.pink,
                    blurRadius: 12,
                    spreadRadius: 0.5,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.elliptical(100, 50)),
                    shadowColor: Colors.pinkAccent,
                    onTap: () {})
                .fadeInUp(),
            10.0.sizedHeight(),
          ].mxListView()),
    );
  }
}
