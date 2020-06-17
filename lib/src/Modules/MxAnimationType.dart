import 'package:animated_interpolation/fading.dart';

enum MxAnimationType {
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
    case MxAnimationType.fadeIn:
      return fadeIn;
      break;
    case MxAnimationType.fadeOut:
      return fadeOut;
      break;
    case MxAnimationType.fadeInDown:
      return fadeInDown;
      break;
    case MxAnimationType.fadeInUp:
      return fadeInUp;
      break;
    case MxAnimationType.fadeInLeft:
      return fadeInLeft;
      break;
    case MxAnimationType.fadeInRight:
      return fadeInRight;
      break;
    case MxAnimationType.fadeInDownBig:
      return fadeInDownBig;
      break;
    case MxAnimationType.fadeInUpBig:
      return fadeInUpBig;
      break;
    case MxAnimationType.fadeInLeftBig:
      return fadeInLeftBig;
      break;
    case MxAnimationType.fadeInRightBig:
      return fadeInRightBig;
      break;
    case MxAnimationType.fadeOutUp:
      return fadeOutUp;
      break;
    case MxAnimationType.fadeOutLeft:
      return fadeOutLeft;
      break;
    case MxAnimationType.fadeOutRight:
      return fadeOutRight;
      break;
    case MxAnimationType.fadeOutDownBig:
      return fadeOutDownBig;
      break;
    case MxAnimationType.fadeOutRight:
      return fadeOutRight;
      break;
    case MxAnimationType.fadeOutUpBig:
      return fadeOutUpBig;
      break;
    case MxAnimationType.fadeOutLeftBig:
      return fadeOutLeftBig;
      break;
    case MxAnimationType.fadeOutRightBig:
      return fadeOutRightBig;
      break;

    default:
      return fadeIn;
  }
}
