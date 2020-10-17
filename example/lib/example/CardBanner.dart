import 'package:material_x/material_x.dart';

class ExampleCardBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return <Widget>[
      XCardBanner(
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
                .xExpandableText(
                    expand: "More details".textMaterialColorWhite(),
                    unexpand: "Less details".textMaterialColorWhite(),
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start),
      ).fadeIn().toCenter(),
      XCardBanner(
        rightSideChild: Icons.add
            .xIcons()
            .xCircleAvatar(radius: 35, backgroundColor: Colors.white),
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
                .xExpandableText(
                    expand: "More details".textMaterialColorWhite(),
                    unexpand: "Less details".textMaterialColorWhite(),
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start),
      ).fadeIn().toCenter(),
      XCardBanner(
        rightSideChild:
            "https://raw.githubusercontent.com/zeeshux7860/material_x/master/example/logo.png"
                .xImageNetwork()
                .xap(value: 10.0)
                .xCircleAvatar(radius: 35, backgroundColor: Colors.white),
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
    ].xListView().xScaffold(
        backgroundColor: Colors.white,
        appBar: 'XCardBanner'.textMaterialColorBlack().xAppBar(
              brightness: Brightness.light,
              centerTitle: true,
              backgroundColor: Colors.white,
            ));
  }
}
