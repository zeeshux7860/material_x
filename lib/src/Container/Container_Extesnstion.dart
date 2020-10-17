import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:material_x/material_x.dart';

extension ContainerExtension on Widget {
  Widget xContainer({
    double width,
    Color color,
    EdgeInsetsGeometry padding,
    Color shadowColor,
    double rounded,
    double height,
    double blurRadius,
    double spreadRadius,
    Offset offset,
    Function onTap,
    EdgeInsetsGeometry margin,
    DecorationImage image,
    Key key,
    BorderRadiusGeometry borderRadius,
  }) {
    return XContainer(
      blurRadius: blurRadius,
      borderRadius: borderRadius,
      child: this,
      color: color,
      height: height,
      image: image,
      key: key,
      margin: margin,
      offset: offset,
      onTap: onTap,
      padding: padding,
      rounded: rounded,
      shadowColor: shadowColor,
      spreadRadius: spreadRadius,
      width: width,
    );
  }

  Widget xContainerGradient({
    double width,
    Gradient gradient,
    EdgeInsetsGeometry padding,
    Color shadowColor,
    double rounded,
    double height,
    double blurRadius,
    double spreadRadius,
    Offset offset,
    Function onTap,
    EdgeInsetsGeometry margin,
    DecorationImage image,
    Key key,
    BorderRadiusGeometry borderRadius,
  }) {
    return XContainerGradient(
      blurRadius: blurRadius,
      borderRadius: borderRadius,
      child: this,
      gradient: gradient,
      height: height,
      key: key,
      margin: margin,
      offset: offset,
      onTap: onTap,
      padding: padding,
      rounded: rounded,
      shadowColor: shadowColor,
      spreadRadius: spreadRadius,
      width: width,
    );
  }

  Widget xCustomCard({
    double width,
    Color color = Colors.white,
    EdgeInsetsGeometry padding,
    Color shadowColor = Colors.grey,
    double rounded = 15,
    double height,
    double blurRadius = 30,
    double spreadRadius = 0.2,
    Offset offset = const Offset(0, 20),
    Function onTap,
    EdgeInsetsGeometry margin,
    DecorationImage image,
    BorderRadiusGeometry borderRadius,
  }) {
    return XContainer(
        offset: offset,
        margin: EdgeInsets.all(50),
        color: Colors.white,
        spreadRadius: spreadRadius,
        blurRadius: blurRadius,
        shadowColor: shadowColor,
        rounded: rounded,
        padding: EdgeInsets.all(0.0),
        borderRadius: borderRadius,
        height: height,
        image: image,
        key: key,
        onTap: onTap,
        width: width,
        child: this);
  }
  //tap to copy like
  // image.asset container rounded
}
