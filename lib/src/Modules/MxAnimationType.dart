import 'package:animated_interpolation/fading.dart';

enum XAnimationType {
  fadeIn,
  fadeOut,
  fadeInDown,
  fadeInUp,
  fadeInLeft,
  fadeInRight,
  fadeInDownBig,
  fadeInUpBig,
  fadeInLeftBig,
  fadeInRightBig,
  fadeOutDown,
  fadeOutUp,
  fadeOutLeft,
  fadeOutRight,
  fadeOutDownBig,
  fadeOutUpBig,
  fadeOutLeftBig,
  fadeOutRightBig
}

animationValue(value) {
  switch (value) {
    case XAnimationType.fadeIn:
      return fadeIn;
      break;
    case XAnimationType.fadeOut:
      return fadeOut;
      break;
    case XAnimationType.fadeInDown:
      return fadeInDown;
      break;
    case XAnimationType.fadeInUp:
      return fadeInUp;
      break;
    case XAnimationType.fadeInLeft:
      return fadeInLeft;
      break;
    case XAnimationType.fadeInRight:
      return fadeInRight;
      break;
    case XAnimationType.fadeInDownBig:
      return fadeInDownBig;
      break;
    case XAnimationType.fadeInUpBig:
      return fadeInUpBig;
      break;
    case XAnimationType.fadeInLeftBig:
      return fadeInLeftBig;
      break;
    case XAnimationType.fadeInRightBig:
      return fadeInRightBig;
      break;
    case XAnimationType.fadeOutUp:
      return fadeOutUp;
      break;
    case XAnimationType.fadeOutLeft:
      return fadeOutLeft;
      break;
    case XAnimationType.fadeOutRight:
      return fadeOutRight;
      break;
    case XAnimationType.fadeOutDownBig:
      return fadeOutDownBig;
      break;
    case XAnimationType.fadeOutRight:
      return fadeOutRight;
      break;
    case XAnimationType.fadeOutUpBig:
      return fadeOutUpBig;
      break;
    case XAnimationType.fadeOutLeftBig:
      return fadeOutLeftBig;
      break;
    case XAnimationType.fadeOutRightBig:
      return fadeOutRightBig;
      break;

    default:
      return fadeIn;
  }
}
