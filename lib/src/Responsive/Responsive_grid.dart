library responsive_grid;

import 'package:flutter/widgets.dart';

double scalingMargin = 5;
double refWidth = 375;

double scalingFactor;
double width;

void initScaling(BuildContext context) {
  var mq = MediaQuery.of(context);
  width = mq.size.width < mq.size.height ? mq.size.width : mq.size.height;
  scalingFactor = width / refWidth;

  print("width => $width");
}

double scale(double dimension) {
  if (width == null) {
    throw Exception("You must call init() before any use of scale()");
  }
  //
  return dimension * scalingFactor;
}

//
// responsive grid layout
//

enum GridType { xs, sm, md, lg, xl }

GridType _currentSize(BuildContext context) {
  MediaQueryData mediaQueryData = MediaQuery.of(context);
  double width = mediaQueryData.size.width;

//  print(
//      "INFO orientation: ${mediaQueryData.orientation} , width: ${mediaQueryData.size.width}, height: ${mediaQueryData.size.height}");

  if (width < 576) {
    return GridType.xs;
  } else if (width < 768) {
    return GridType.sm;
  } else if (width < 992) {
    return GridType.md;
  } else if (width < 1200) {
    return GridType.lg;
  } else {
    // width >= 1200
    return GridType.xl;
  }
}

int _totalSegments = 12;

class MxResponsiveGridRow extends StatelessWidget {
  final List<ResponsiveGridCol> children;

  MxResponsiveGridRow({@required this.children});

  @override
  Widget build(BuildContext context) {
    List<Widget> rows = List<Widget>();

    int accumulatedWidth = 0;
    List<Widget> cols = List<Widget>();

    children.forEach((col) {
      var colWidth = col.currentConfig(context);
      //
      if (accumulatedWidth + colWidth > _totalSegments) {
        if (accumulatedWidth < _totalSegments) {
          cols.add(Spacer(
            flex: _totalSegments - accumulatedWidth,
          ));
        }
        rows.add(Row(
          children: cols,
        ));
        // clear
        cols = List<Widget>();
        accumulatedWidth = 0;
      }
      //
      cols.add(col);
      accumulatedWidth += colWidth;
    });

    if (accumulatedWidth >= 0) {
      if (accumulatedWidth < _totalSegments) {
        cols.add(Spacer(
          flex: _totalSegments - accumulatedWidth,
        ));
      }
      rows.add(Row(
        children: cols,
      ));
    }

    return Column(
      children: rows,
    );
  }
}

class ResponsiveGridCol extends StatelessWidget {
  final List<int> _config = new List(5);
  final Widget child;

  ResponsiveGridCol(
      {int xs = 12, int sm, int md, int lg, int xl, @required this.child}) {
    _config[GridType.xs.index] = xs;
    _config[GridType.sm.index] = sm ?? _config[GridType.xs.index];
    _config[GridType.md.index] = md ?? _config[GridType.sm.index];
    _config[GridType.lg.index] = lg ?? _config[GridType.md.index];
    _config[GridType.xl.index] = xl ?? _config[GridType.lg.index];
  }

  int currentConfig(BuildContext context) {
    return _config[_currentSize(context).index];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: currentConfig(context),
      child: child,
    );
  }
}

//
// responsive grid list
//

class ResponsiveGridList extends StatelessWidget {
  final double desiredItemWidth, minSpacing;
  final List<Widget> children;
  final bool squareCells, scroll;

  ResponsiveGridList(
      {this.desiredItemWidth,
      this.minSpacing,
      this.squareCells = false,
      this.scroll = true,
      this.children});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (children.length == 0) return Container();

        double width = constraints.maxWidth;

        double N = (width - minSpacing) / (desiredItemWidth + minSpacing);

        int n;
        double spacing, itemWidth;

        if (N % 1 == 0) {
          n = N.floor();
          spacing = minSpacing;
          itemWidth = desiredItemWidth;
        } else {
          n = N.floor();

          double dw =
              width - (n * (desiredItemWidth + minSpacing) + minSpacing);

          itemWidth = desiredItemWidth +
              (dw / n) * (desiredItemWidth / (desiredItemWidth + minSpacing));

          spacing = (width - itemWidth * n) / (n + 1);
        }

        if (scroll) {
          return ListView.separated(
              itemCount: (children.length / n).ceil(),
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: minSpacing,
                );
              },
              itemBuilder: (context, index) {
                if (index * n >= children.length) return null;
                //
                var rowChildren = List<Widget>();
                for (int i = index * n; i < (index + 1) * n; i++) {
                  if (i >= children.length) break;
                  rowChildren.add(children[i]);
                }
                return _ResponsiveGridListItem(
                  itemWidth: itemWidth,
                  spacing: spacing,
                  squareCells: squareCells,
                  children: rowChildren,
                );
              });
        } else {
          var rows = List<Widget>();
          rows.add(SizedBox(
            height: minSpacing,
          ));
          //
          for (int j = 0; j < (children.length / n).ceil(); j++) {
            var rowChildren = List<Widget>();
            //
            for (int i = j * n; i < (j + 1) * n; i++) {
              if (i >= children.length) break;
              rowChildren.add(children[i]);
            }
            //
            rows.add(_ResponsiveGridListItem(
              itemWidth: itemWidth,
              spacing: spacing,
              squareCells: squareCells,
              children: rowChildren,
            ));

            rows.add(SizedBox(
              height: minSpacing,
            ));
          }

          return Column(
            children: rows,
          );
        }
      },
    );
  }
}

class _ResponsiveGridListItem extends StatelessWidget {
  final double spacing, itemWidth;
  final List<Widget> children;
  final bool squareCells;

  _ResponsiveGridListItem(
      {this.itemWidth, this.spacing, this.squareCells, this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: _buildChildren(),
    );
  }

  List<Widget> _buildChildren() {
    var list = List<Widget>();

    list.add(SizedBox(
      width: spacing,
    ));

    children.forEach((child) {
      list.add(SizedBox(
        width: itemWidth,
        height: squareCells ? itemWidth : null,
        child: child,
      ));
      list.add(SizedBox(
        width: spacing,
      ));
    });

    return list;
  }
}
