import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage().mxMaterialApp(title: 'zeeshan');
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: "Material X Gradients Card ".textMaterialColorBlack(),
      ),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: <Widget>[
            MxCardTile(
              backgroundColor: Colors.deepOrangeAccent.shade400,
              boxColor: Colors.deepOrangeAccent.shade100,
              subtitle1: Icons.arrow_forward_ios.mxIconTile(),
            ).animation(configMap: MxAnimationType.fadeIn, autoPlay: true),
            MxCardTile(
              rounded: 10,
              title: "Zeeshan".mxCardTileTitle(),
              subtitle1: "Software Engineer".textMaterialColorWhite(),
              backgroundColor: Colors.deepPurple,
              boxColor: Colors.deepPurple.shade100,
              boxRounded: 100,
              boxChild: Icons.android.mxIconTile(),
              subtitle2: Icons.data_usage.mxIconTile().bounce(),
            ).fadeIn(),
            20.0.sizedHeight(),

            ListTile(
              onTap: () {
                //  MxRoutePage(context, Drawer()).materialPagePush();
              },
              leading: Icons.book.mxListTileIcon(color: Colors.purple),
              title: "Zeeshan".mxCardTileTitle(color: Colors.black),
              subtitle: "Developr!!".textMaterialColorgrey(),
              trailing: <Widget>[
                "+ 1234500.0".textMaterialColorBlack(
                    fontsize: 15, fontWeight: FontWeight.bold),
                5.0.sizedHeight(),
                "sep 15 2019".textMaterialColorblueGrey()
              ].mxcolumnCC(),
            ),

            HeaderTitle(
              title: "Flight".textMaterialColorBlack(
                  fontsize: 30, fontWeight: FontWeight.bold),
              subtitle: "June 18, Thu 04:50".textMaterialColorgrey(),
            ),
            MxContainer(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                rounded: 5,
                // height: 100,
                color: Colors.indigo,
                child: <Widget>[
                  <Widget>[
                    Icons.arrow_back_ios.mxIconTile(),
                    "Monday 27 july 2000".textMaterialColorWhite(),
                    Icons.arrow_forward_ios.mxIconTile(),
                  ].mxRowCSB(),
                  25.0.sizedHeight(),
                  H2(
                    text: '7h 26Min',
                    color: Colors.white,
                  ),
                  20.0.sizedHeight(),
                ].mxcolumn()),
            Column(
              children: <Widget>[
                CardBarButton(
                  onTap: () {},
                  color: Colors.black,
                  title:
                      Icons.android.mxIconTile(color: Colors.white, size: 30),
                  subtitle: "Zeeshan".textMaterialColorWhite(),
                )
              ],
            ),
            MxContainer(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 50,
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
            MxCardBanner(
                    onTap: () {},
                    margin: EdgeInsets.all(20),
                    rounded: 10,
                    color: Color(0xFF3d6dfe),
                    shadowColor: Colors.blue,
                    blurRadius: 5.0,
                    title: 'Bonus'.h2TextBold(),
                    subTitle:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                            .textMaterial(),
                    button: 'know more'
                        .textMaterialColorWhite()
                        .cardBannerButton(
                            onTap: () {}, buttonColor: Colors.lime))
                .animation(
                    autoPlay: true,
                    configMap: MxAnimationType.fadeIn,
                    // delay: Duration(seconds: 10),
                    duration: Duration(seconds: 3)),
            MxGradientCardBanner(
                gradient: [Color(0xFF3C8CE7), Color(0xFF3C8CE7)].mxLGrepeated(
                  begin: Alignment.topLeft,
                  end: Alignment(0.8, 0.0),
                ),
                shadowColor: Colors.blue,
                blurRadius: 5.0,
                title: 'Bonus'.h2TextBold(),
                subTitle:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                        .textMaterialColorWhite(),
                button: 'know more'
                    .textMaterialColorWhite()
                    .cardBannerButton(onTap: () {})),
            new SizedBox(
              height: 10.0,
            ),
            MxGradientCardBanner(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment(0.8,
                          0.0), // 10% of the width, so there are ten blinds.
                      colors: [Colors.red, Colors.amber], // whitish to gray
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                    shadowColor: Colors.blue,
                    blurRadius: 5.0,
                    title: 'Bonus'.h2TextBold(),
                    subTitle:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                            .textMaterialColorWhite(),
                    button: 'know more'
                        .textMaterialColorWhite()
                        .cardBannerButton(onTap: () {}))
                .animation(configMap: MxAnimationType.fadeIn, autoPlay: true),
            new SizedBox(
              height: 10.0,
            ),
            MxGradientCardBanner(
                    onTap: () {},
                    spreadRadius: 0.2,
                    rightSideChild: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 40,
                      child: Icon(
                        Icons.ac_unit,
                        size: 30,
                      ),
                    ),
                    rounded: 10,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment(0.8,
                          0.0), // 10% of the width, so there are ten blinds.
                      colors: [
                        Colors.deepPurple,
                        Colors.purple,
                      ], // whitish to gray
                      tileMode: TileMode
                          .repeated, // repeats the gradient over the canvas
                    ),
                    shadowColor: Colors.blue,
                    blurRadius: 5.0,
                    title: 'Bonus'.h2TextBold(),
                    subTitle:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                            .textMaterialColorWhite(),
                    button: 'know more'
                        .textMaterialColorWhite()
                        .cardBannerButton(onTap: () {}))
                .animation(configMap: MxAnimationType.fadeIn, autoPlay: true),
            //Textmaterial(text: "null"),
            <Widget>[Icon(Icons.ac_unit).bounce()].mxRowCSB(),
            <Widget>[
              H1(
                text: 'aaaaa',
              ),
              MxContainer(
                      onTap: () {
                        MxRoutePage(context, Drawer()).fadePush();
                      },
                      child: Textmaterial(text: 'text'),
                      height: 100,
                      color: Colors.pink)
                  .roulette()
            ].mxcolumnCC(),
            30.0.sizedHeight(),
            CardTile(
              margin: EdgeInsets.all(10),
              onTap: () {},
              title: H2(
                text: 'Zeeshan',
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              subtitle:
                  """ Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."""
                      .textMaterialColorBlack(),
            ),
            30.0.sizedHeight(),
            MxContainerGradient(
                rounded: 5,
                blurRadius: 15,
                offset: Offset(0, 8),
                spreadRadius: 0.5,
                shadowColor: Colors.black,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment(
                      0.8, 0.0), // 10% of the width, so there are ten blinds.
                  colors: [Colors.red, Colors.pink], // whitish to gray
                  tileMode:
                      TileMode.mirror, // repeats the gradient over the canvas
                ),
                child: <Widget>[
                  25.0.sizedHeight(),
                  "https://pixinvent.com/materialize-material-design-admin-template/app-assets/images/icon/apple-watch.png"
                      .mxCircleNetWorkImage(
                          radius: 40, backgroundColor: Colors.white),
                  25.0.sizedHeight(),
                  '50% Off'.h1TextBold(fontWeight: FontWeight.normal),
                  10.0.sizedHeight(),
                  'On apple watch'.h3TextBold(fontWeight: FontWeight.normal),
                  25.0.sizedHeight(),
                ].mxcolumnCC()),
            25.0.sizedHeight(),
            MxContainer(
              padding: EdgeInsets.all(0.0),
              child: <Widget>[
                MxHeader(
                  onTap: () {},
                  child: <Widget>[
                    HeaderTitle(
                      title: "Flight".textMaterialColorBlack(
                          fontsize: 30, fontWeight: FontWeight.bold),
                      subtitle: "June 18, Thu 04:50".textMaterialColorBlack(),
                    ),
                  ].mxcolumnSC(),
                ),
                MxContainer(
                    child: MximageBlur(
                      sigmaX: 2,
                      sigmaY: 2,
                    ),
                    height: 400,
                    padding: EdgeInsets.all(0.0),
                    image:
                        "https://pixinvent.com/materialize-material-design-admin-template/app-assets/images/gallery/3.png"
                            .decorationINToCover())
              ].mxListViewVerticalClampingScrollPhysics(
                  padding: EdgeInsets.all(0.0)),
            ).fadeInLeft(),
            25.0.sizedHeight(),
            [
              Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 12"),
              ).mxResponsiveGridCol(),
              Container(
                height: 100,
                alignment: Alignment(0, 0),
                color: Colors.purple,
                child: Text("lg : 6"),
              ).fadeIn().mxResponsiveGridCol(lg: 6, md: 6, sm: 6, xs: 6),
            ].mxResponsiveGridRow()
          ].mxListView()),
      floatingActionButton: "check".mxFloationActiobButton(onTap: () {
        var isDesktops = context.isDesktop();
        print(isDesktops);
        var isTablets = context.isTablet();
        print(isTablets);
        var isMobiles = context.isMobile();
        print(isMobiles);
      }),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blueAccent,
      ),
    );
  }
}
