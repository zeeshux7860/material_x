import 'package:material_x/material_x.dart';

class ExampleCardBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      MxCardBanner(
        onTap: () {},
        margin: EdgeInsets.all(20),
        rounded: 10,
        color: Colors.black,
        shadowColor: Colors.blue,
        blurRadius: 5.0,
        title: 'Bonus'.h2TextBold(),
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                .textMaterialColorWhite()
                .mxExpandableText(
                    expand: "More details".textMaterialColorWhite(),
                    unexpand: "Less details".textMaterialColorWhite(),
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start),
      ).fadeIn().toCenter(),
      MxCardBanner(
        rightSideChild: Icons.add
            .mxIcons()
            .circleAvatar(radius: 35, backgroundColor: Colors.white),
        onTap: () {},
        margin: EdgeInsets.all(20),
        rounded: 10,
        color: Color(0xFF3d6dfe),
        shadowColor: Colors.blue,
        blurRadius: 5.0,
        title: 'Bonus'.h2TextBold(),
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                .textMaterialColorWhite()
                .mxExpandableText(
                    expand: "More details".textMaterialColorWhite(),
                    unexpand: "Less details".textMaterialColorWhite(),
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start),
      ).fadeIn().toCenter(),
      MxCardBanner(
        rightSideChild:
            "https://raw.githubusercontent.com/zeeshux7860/material_x/master/example/logo.png"
                .mxImageNetwork()
                .mxap(value: 10.0)
                .circleAvatar(radius: 35, backgroundColor: Colors.white),
        onTap: () {},
        margin: EdgeInsets.all(20),
        rounded: 10,
        color: Colors.orange,
        shadowColor: Colors.blue,
        blurRadius: 5.0,
        title: 'Bonus'.h2TextBold(),
        subTitle:
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore'
                .textMaterialColorWhite(),
        button: "Know More".textMaterialColorBlack().cardBannerButton(
            buttonColor: Colors.white, onTap: () {}, rounded: 5),
      ).fadeIn().toCenter(),
    ].mxListView().mxScaffold(
        backgroundColor: Colors.white,
        appBar: 'MxCardBanner'.textMaterialColorBlack().mxAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
