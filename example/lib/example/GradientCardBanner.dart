import 'package:material_x/material_x.dart';

class ExampleGradientCardBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MxGradientCardBanner(
              gradient: [Colors.orange, Colors.pink].mxLGrepeated(
                  begin: Alignment.topLeft, end: Alignment.bottomLeft),
              shadowColor: Colors.pink,
              blurRadius: 5.0,
              title: 'Bonus'.h2TextBold(),
              subTitle:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                      .textMaterialColorWhite(),
              button: 'know more'.textMaterialColorWhite().cardBannerButton(
                  onTap: () {}, rounded: 5.0, buttonColor: Colors.black))
          .mxap(value: 20.0),
      20.0.sizedHeight(),
      MxGradientCardBanner(
        gradient: [Colors.cyan, Colors.indigo].mxLGrepeated(
          begin: Alignment.topLeft,
          end: Alignment(0.7, 0.0),
        ),
        shadowColor: Colors.blue,
        blurRadius: 5.0,
        title: 'Bonus'.h2TextBold(),
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                .textMaterialColorWhite()
                .mxExpandableText(
                    expand: "More details".textMaterialColorWhite(),
                    unexpand: "Less details".textMaterialColorWhite(),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start),
      )
          .animation(configMap: MxAnimationType.fadeIn, autoPlay: true)
          .mxlrp(l: 20.0, r: 20.0),
      20.0.sizedHeight(),
      MxGradientCardBanner(
              onTap: () {},
              spreadRadius: 0.2,
              rightSideChild: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 35,
                child: Icon(
                  Icons.ac_unit,
                  size: 30,
                ),
              ),
              rounded: 10,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  Colors.deepPurple,
                  Colors.purple,
                ], // whitish to gray
                tileMode:
                    TileMode.repeated, // repeats the gradient over the canvas
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
          .animation(configMap: MxAnimationType.fadeIn, autoPlay: true)
          .mxap(value: 20.0),
    ].mxListView().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'MxGradientCardBanner'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
