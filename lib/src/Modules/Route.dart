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

  dynamic sizeTransitionPush() {
    Navigator.push(context, MxSizeRoute(page: child));
  }

  dynamic cupertinoPagePush() {
    Navigator.push(context, CupertinoPageRoute(builder: (context) => child));
  }

  dynamic materialPagePush() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => child));
  }

  dynamic slideRightPush() {
    Navigator.push(context, MXRightRoute(page: child));
  }

  dynamic slideLeftPush() {
    Navigator.push(context, MXLeftRoute(page: child));
  }

  dynamic slideTopPush() {
    Navigator.push(context, MXTopRoute(page: child));
  }

  dynamic slideLBottomPush() {
    Navigator.push(context, MXBottomRoute(page: child));
  }

  dynamic scalePush() {
    Navigator.push(context, MXScaleRoute(page: child));
  }

  dynamic rotationPush() {
    Navigator.push(context, MXRotationRoute(page: child));
  }

  dynamic fadePush() {
    Navigator.push(context, MXFadeRoute(page: child));
  }

  dynamic exitPush(exitPageChild) {
    Navigator.push(
        context, MXEnterExitRoute(enterPage: child, exitPage: exitPageChild));
  }
}
