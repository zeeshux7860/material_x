import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_x/src/Text/text_material.dart';

class MxDrawerUserProfileBlur extends StatelessWidget {
  final String userName;
  final String userEmail;
  final String photoUrl;
  final bool emailUpperCase;
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;

  const MxDrawerUserProfileBlur(
      {Key key,
      @required this.userName,
      @required this.userEmail,
      @required this.photoUrl,
      this.emailUpperCase,
      @required this.margin,
      @required this.height,
      this.width})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            margin: margin,
            child: ListTile(
              title: Textmaterial(
                text: userName,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              subtitle: Textmaterial(
                text: emailUpperCase == null
                    ? userEmail
                    : emailUpperCase ? userEmail.toUpperCase() : userEmail,
                color: Colors.white,
                // fontWeight: FontWeight.bold,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(photoUrl),
              ),
            ),
            color: Colors.black.withOpacity(0),
          )),
      height: height,
      width: width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(photoUrl), fit: BoxFit.cover)),
    );
  }
}
