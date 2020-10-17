import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_x/src/Modules/DrawerMXuserProfile.dart';
import 'package:material_x/src/Modules/ExpansionTile.dart';
import 'package:material_x/src/Modules/MXAnimationType.dart';
import 'package:material_x/src/Modules/ProgressLoading.dart';
import '../Modules/Widget.dart';

class XRoundedCornerDrawer extends StatelessWidget {
  final String expansionTileTitle;
  final String expansionTileSubTitle;
  final String userName;
  final String userEmail;
  final String photoUrl;
  final bool emailUpperCase;
  final Color expansionTileTitleColor;
  final Color expansionTileSubTitleColor;
  final List<Widget> expansionchildren;
  final String progressName;
  final Color progressColor;
  final Color progressBackgroundColor;
  final double progressValue;
  final Color progressNameColor;
  final List<Widget> menuChildren;
  final List<Widget> bottomMenu;
  final double elevation;
  final BorderRadius borderRadius;
  const XRoundedCornerDrawer(
      {Key key,
      this.expansionTileTitle,
      this.expansionTileSubTitle,
      @required this.userName,
      @required this.userEmail,
      @required this.photoUrl,
      @required this.emailUpperCase,
      this.expansionTileTitleColor,
      this.expansionTileSubTitleColor,
      this.expansionchildren,
      this.progressName,
      this.progressColor,
      this.progressBackgroundColor,
      this.progressValue,
      this.progressNameColor,
      this.menuChildren,
      this.borderRadius = BorderRadius.zero,
      this.elevation = 50.0,
      this.bottomMenu})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Drawer(
        elevation: elevation,
        child: new ListView(
          padding: EdgeInsets.all(0.0),
          children: <Widget>[
            // X UserProfile
            XDrawerUserProfileBlur(
              height: 200,
              margin: EdgeInsets.only(top: 120),
              userName: userName,
              userEmail: userEmail,
              emailUpperCase: emailUpperCase,
              photoUrl: photoUrl,
            ),
            new Column(
              children: <Widget>[
                XExpansionTiles(
                  expansionTileSubTitle: expansionTileSubTitle,
                  expansionTileSubTitleColor: expansionTileSubTitleColor,
                  expansionTileTitle: expansionTileTitle,
                  expansionTileTitleColor: expansionTileTitleColor,
                  expansionchildren: expansionchildren,
                ).animation(configMap: XAnimationType.fadeIn, autoPlay: true),
                XProgressLoading(
                  progressBackgroundColor: progressBackgroundColor,
                  progressColor: progressColor,
                  progressName: progressName,
                  progressNameColor: progressNameColor,
                  progressValue: progressValue,
                ).animation(configMap: XAnimationType.fadeIn, autoPlay: true),
                Divider(
                  color: Colors.grey[300],
                ),
                Column(
                  children: menuChildren,
                )
              ],
            ),
            new SizedBox(
              height: 100,
            ),
            new Column(
              children: bottomMenu == null ? <Widget>[] : bottomMenu,
            )
          ],
        ),
      ),
    );
  }
}
