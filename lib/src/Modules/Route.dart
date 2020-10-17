import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_x/src/Modules/SizeTransition.dart';
import 'package:material_x/src/Modules/Trasition/ExitRoute.dart';
import 'package:material_x/src/Modules/Trasition/FadeRoute.dart';
import 'package:material_x/src/Modules/Trasition/RotationRoute.dart';
import 'package:material_x/src/Modules/Trasition/ScaleRoute.dart';
import 'package:material_x/src/Modules/Trasition/SlideRoute.dart';

class MxRoutePage {
  final BuildContext context;
  final Widget child;

  MxRoutePage(this.context, this.child);

  sizeTransitionPush() {
    Navigator.push(context, MxSizeRoute(page: child));
  }

  cupertinoPagePush() {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => child));
  }

  materialPagePush() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => child));
  }

  slideRightPush() {
    Navigator.push(context, xRightRoute(page: child));
  }

  slideLeftPush() {
    Navigator.push(context, xLeftRoute(page: child));
  }

  slideTopPush() {
    Navigator.push(context, xTopRoute(page: child));
  }

  slideLBottomPush() {
    Navigator.push(context, xBottomRoute(page: child));
  }

  scalePush() {
    Navigator.push(context, xScaleRoute(page: child));
  }

  rotationPush() {
    Navigator.push(context, xRotationRoute(page: child));
  }

  fadePush() {
    Navigator.push(context, xFadeRoute(page: child));
  }

  exitPush(exitPageChild) {
    Navigator.push(
        context, xEnterExitRoute(enterPage: child, exitPage: exitPageChild));
    print("20");
  }
}
