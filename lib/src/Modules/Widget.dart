import 'package:animated_interpolation/animated_interpolation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_x/src/Modules/MxAnimationType.dart';
import 'package:material_x/src/Modules/animation/animation_do.dart';

extension MxWidget on Widget {
  Widget xFlexable({FlexFit fit = FlexFit.loose, int flex = 1, Key key}) {
    return Flexible(fit: fit, flex: flex, key: key, child: this);
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view NeverScrollableScrollPhysics
  Widget toSingleChildScroolViewNeverScrollableScrollPhysics(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: NeverScrollableScrollPhysics(),
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view
  Widget toSingleChildScroolViewClampingScrollPhysics(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: ClampingScrollPhysics(),
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Single ChildScroll view
  Widget toSingleChildScroolView(
      {Key key,
      bool reverse = false,
      ScrollController controller,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      EdgeInsetsGeometry padding,
      ScrollPhysics physics,
      bool primary,
      Axis scrollDirection = Axis.vertical}) {
    return SingleChildScrollView(
      key: key,
      reverse: reverse,
      controller: controller,
      dragStartBehavior: dragStartBehavior,
      padding: padding,
      physics: physics,
      primary: primary,
      scrollDirection: scrollDirection,
      child: this,
    );
  }

  /// ------------------------------------------------------------------------ Center
  Widget toCenter({double widthFactor, double heightFactor, Key key}) {
    return Center(
      heightFactor: heightFactor,
      key: key,
      widthFactor: widthFactor,
      child: this,
    );
  }

  //------------------------------------------------------------------------- all animation entension
  Widget animation(
      {from,
      to,
      @required MxAnimationType configMap,
      curve,
      duration = const Duration(seconds: 1),
      @required autoPlay,
      onAnimationEnd,
      onAnimationBegin,
      iterationCount = 1,
      iterationInfinite = false,
      direction = AnimatedDirection.normal,
      delay = const Duration(seconds: 0),
      iterationDelay = const Duration(seconds: 0)}) {
    return SmartAnimatedWidget(
        autoPlay: autoPlay,
        configMap: animationValue(configMap),
        curve: curve,
        delay: delay,
        direction: direction,
        duration: duration,
        from: from,
        iterationCount: iterationCount,
        iterationDelay: iterationDelay,
        iterationInfinite: iterationInfinite,
        onAnimationBegin: onAnimationBegin,
        onAnimationEnd: onAnimationEnd,
        to: to,
        child: this);
  }

  Widget fadeIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeIn(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInDown(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInDownBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInDownBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInUp(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInUpBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInUpBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInLeft(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInLeftBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInLeftBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInRight(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeInRightBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeInRightBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  //-------------------------------------------------------------------------------------------------

  Widget fadeOut(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOut(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutDown(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutDownBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutDownBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutUp(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutUpBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutUpBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutLeft(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutLeftBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutLeftBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutRight(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget fadeOutRightBig(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FadeOutRightBig(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  //---------------------------------------------------------------------------------------
  Widget bounceInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInDown(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget bounceInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInUp(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget bounceInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInLeft(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget bounceInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return BounceInRight(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget elasticIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticIn(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget elasticInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInDown(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget elasticInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInUp(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget elasticInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInLeft(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget elasticInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return ElasticInRight(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget slideInDown(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInDown(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget slideInUp(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInUp(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget slideInLeft(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInLeft(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget slideInRight(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return SlideInRight(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget flipInX(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FlipInX(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget flipInY(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return FlipInY(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget zoomIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double form = 1.0}) {
    return ZoomIn(
      from: form,
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget zoomOut(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double form = 0.0}) {
    return ZoomOut(
      from: form,
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget jelloIn(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false}) {
    return JelloIn(
      animate: animate,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget bounce(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      double from = 50,
      bool infinite = false}) {
    return Bounce(
      animate: animate,
      from: from,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget flash(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Flash(
      animate: animate,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget pulse(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Pulse(
      animate: animate,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget swing(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Swing(
      animate: animate,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget spin(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return Spin(
      animate: animate,
      spins: spins,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget spinPerfect(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return SpinPerfect(
      animate: animate,
      spins: spins,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget dance(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false}) {
    return Dance(
      animate: animate,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }

  Widget roulette(
      {bool animate = true,
      dynamic Function(AnimationController) controller,
      Duration delay = const Duration(milliseconds: 0),
      Duration duration = const Duration(milliseconds: 3500),
      bool manualTrigger = false,
      bool infinite = false,
      double spins = 2}) {
    return Roulette(
      spins: spins,
      animate: animate,
      infinite: infinite,
      child: this,
      controller: controller,
      delay: delay,
      duration: duration,
      manualTrigger: manualTrigger,
    );
  }
}
