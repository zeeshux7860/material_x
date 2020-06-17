import 'dart:io';

import 'package:flutter/material.dart';

extension IFImage on String {
  DecorationImage decorationIFToCover(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToContain(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToFill(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToNone(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToScaleDown(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToFitHeight(
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
        image: FileImage(File(this)));
  }

  DecorationImage decorationIFToFitWidth(
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
        image: FileImage(File(this)));
  }
}
