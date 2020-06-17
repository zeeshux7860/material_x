import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

extension RowGridResponsive on List<ResponsiveGridList> {
  ResponsiveGridList mxResponsiveGridList(
      {double desiredItemWidth,
      double minSpacing,
      bool scroll = true,
      bool squareCells = false}) {
    return ResponsiveGridList(
      children: this,
      desiredItemWidth: desiredItemWidth,
      minSpacing: minSpacing,
      scroll: scroll,
      squareCells: squareCells,
    );
  }
}

extension ResponsiveGridRow on List<ResponsiveGridCol> {
  MxResponsiveGridRow mxResponsiveGridRow() {
    return MxResponsiveGridRow(
      children: this,
    );
  }
}

extension MxResponsiveGridCol on Widget {
  ResponsiveGridCol mxResponsiveGridCol(
      {int xs = 12, int sm, int md, int lg, int xl}) {
    return ResponsiveGridCol(
      child: this,
      lg: lg,
      md: md,
      sm: sm,
      xl: xl,
      xs: xs,
    );
  }
}
