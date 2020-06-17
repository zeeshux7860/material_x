import 'package:flutter/material.dart';
import 'dart:math';

import 'package:material_x/src/Modules/CircleView.dart';

class CrowdTile extends StatefulWidget {
  final double pagerHeight;
  final double scale;
  final double scalefraction;
  final int itemLength;
  const CrowdTile(
      {Key key,
      this.pagerHeight,
      this.scale,
      this.scalefraction,
      this.itemLength})
      : super(key: key);
  @override
  _CrowdTileState createState() => _CrowdTileState();
}

class _CrowdTileState extends State<CrowdTile> {
  double viewPortFraction = 0.5;

  PageController pageController;

  int currentPage = 2;

  double page = 2.0;

  @override
  void initState() {
    pageController = PageController(
        initialPage: currentPage, viewportFraction: viewPortFraction);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Container(
          height: widget.pagerHeight,
          child: NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollUpdateNotification) {
                setState(() {
                  page = pageController.page;
                });
              }
              return null;
            },
            child: PageView.builder(
              onPageChanged: (pos) {
                setState(() {
                  currentPage = pos;
                });
              },
              physics: BouncingScrollPhysics(),
              controller: pageController,
              itemCount: widget.itemLength,
              itemBuilder: (context, index) {
                final scale = max(widget.scalefraction,
                    (widget.scale - (index - page).abs()) + viewPortFraction);
                return MxCircleView(
                  borderColor: Colors.grey.shade100,
                  borderWidth: 5,
                  scale: scale,
                  elevation: 2,
                  pagerHeight: widget.pagerHeight,
                  child: new Image.network(
                    'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg',
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            currentPage.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
