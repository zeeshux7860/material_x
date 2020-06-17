import 'package:flutter/material.dart';

extension Images on String {
  DecorationImage decorationINToCover(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.cover,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToContain(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.contain,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToFill(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.fill,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToNone(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.none,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToScaleDown(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.scaleDown,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToFitHeight(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.fitHeight,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }

  DecorationImage decorationINToFitWidth(
      {AlignmentGeometry alignment = Alignment.center,
      Rect centerSlice,
      ColorFilter colorFilter,
      bool matchTextDirection = false,
      BoxFit fit = BoxFit.fitHeight,
      ImageRepeat repeat = ImageRepeat.noRepeat}) {
    return DecorationImage(
        alignment: alignment,
        centerSlice: centerSlice,
        colorFilter: colorFilter,
        matchTextDirection: matchTextDirection,
        repeat: repeat,
        fit: fit,
        image: NetworkImage(this));
  }
}
