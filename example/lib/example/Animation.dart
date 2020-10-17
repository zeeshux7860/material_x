import 'package:material_x/material_x.dart';
import 'dart:math' as math;

class ExampleAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Demo XMaterialApp'.textMaterialColorWhite(),
      ),
      body: <Widget>[
        "FadeIn"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        20.0.sizedHeight(),
        "FadeIn"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeIn(),
        "FadeIn Left"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInLeft(),
        "FadeIn Right"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInRight(),
        "FadeIn Down"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInDown(),
        "FadeIn Up"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInUp(),
        "FadeIn UpBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInUpBig(),
        "FadeIn DownBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInDownBig(),
        "FadeIn LeftBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInLeftBig(),
        "FadeIn RightBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeInLeftBig(),
        "FadeOut"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        20.0.sizedHeight(),
        "FadeOut"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOut(),
        "FadeOut Left"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutLeft(),
        "FadeOut Right"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutRight(),
        "FadeOut Down"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutDown(),
        "FadeOut Up"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutUp(),
        "FadeOut UpBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutUpBig(),
        "FadeOut DownBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutDownBig(),
        "FadeOut LeftBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutLeftBig(),
        "FadeOut RightBig"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .fadeOutLeftBig(),
        "BounceIn"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "bounceIn Left"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .bounceInLeft(),
        "bounceIn Right"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .bounceInRight(),
        "bounceIn Down"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .bounceInDown(),
        "bounceIn Up"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .bounceInUp(),
        20.0.sizedHeight(),
        "Elasticin"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "elasticIn"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .elasticIn(),
        "elasticIn Left"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .elasticInLeft(),
        "elasticIn Right"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .elasticInRight(),
        "elasticIn Down"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .elasticInDown(),
        "elasticIn Up"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .elasticInUp(),
        20.0.sizedHeight(),
        "SlideIn"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "slideIn Left"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .slideInLeft(),
        "slideIn Right"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .slideInRight(),
        "slideIn Down"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .slideInDown(),
        "slideIn Up"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .slideInUp(),
        20.0.sizedHeight(),
        "Flipin"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "flipInY"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .flipInY(),
        "flipInX"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .flipInX(),
        "Zoom"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "ZoomIn"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .zoomIn(),
        "ZoomOut"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .zoomOut(),
        "SpecialIn"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "jelloIn"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .jelloIn(),
        "Attention Seeker"
            .h1TextBold(color: Colors.black)
            .xContainer(padding: EdgeInsets.only(top: 20, left: 30)),
        "Bounce"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .bounce(),
        "Flash"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .flash(),
        "Pulse"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .pulse(),
        "Swing"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .swing(),
        "Spin"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .spin(),
        "Spin Perfect"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .spinPerfect(),
        "Dance"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .dance(),
        "Roulette"
            .textMaterialColorWhite(fontsize: 30)
            .xContainer(
                color:
                    Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0)
                        .withOpacity(1.0),
                margin: EdgeInsets.all(20))
            .roulette(),
      ].xListView(),
    );
  }
}
