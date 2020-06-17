import 'package:material_x/material_x.dart';

extension Mxgradient on List {
  Gradient mxLG(
      {final List<double> stops,
      final GradientTransform transform,
      final AlignmentGeometry begin = Alignment.centerLeft,
      final TileMode tileMode = TileMode.clamp,
      final AlignmentGeometry end = Alignment.centerRight}) {
    return LinearGradient(
      stops: stops,
      transform: transform,
      begin: begin,
      end: end, // 10% of the width, so there are ten blinds.
      colors: this, // whitish to gray
      tileMode: tileMode,
      // repeats the gradient over the canvas
    );
  }

  Gradient mxLGMirror(
      {final List<double> stops,
      final GradientTransform transform,
      final AlignmentGeometry begin = Alignment.centerLeft,
      final AlignmentGeometry end = Alignment.centerRight}) {
    return LinearGradient(
      stops: stops,
      transform: transform,
      begin: begin,
      end: end, // 10% of the width, so there are ten blinds.
      colors: this, // whitish to gray
      tileMode: TileMode.mirror,
      // repeats the gradient over the canvas
    );
  }

  Gradient mxLGrepeated(
      {final List<double> stops,
      final GradientTransform transform,
      final AlignmentGeometry begin = Alignment.centerLeft,
      final AlignmentGeometry end = Alignment.centerRight}) {
    return LinearGradient(
      stops: stops,
      transform: transform,
      begin: begin,
      end: end, // 10% of the width, so there are ten blinds.
      colors: this, // whitish to gray
      tileMode: TileMode.repeated,
      // repeats the gradient over the canvas
    );
  }

  Gradient mxLGClamp(
      {final List<double> stops,
      final GradientTransform transform,
      final AlignmentGeometry begin = Alignment.centerLeft,
      final AlignmentGeometry end = Alignment.centerRight}) {
    return LinearGradient(
      stops: stops,
      transform: transform,
      begin: begin,
      end: end, // 10% of the width, so there are ten blinds.
      colors: this, // whitish to gray
      tileMode: TileMode.clamp,
      // repeats the gradient over the canvas
    );
  }
}
