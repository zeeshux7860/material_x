import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

xStatusBar(
    {statusBarColor = Colors.transparent,
    Brightness statusBarBrightness,
    Brightness statusBarIconBrightness,
    Color systemNavigationBarColor,
    Color systemNavigationBarDividerColor,
    Brightness systemNavigationBarIconBrightness}) {
  return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: statusBarColor,
    statusBarBrightness: statusBarBrightness,
    statusBarIconBrightness: statusBarIconBrightness,
    systemNavigationBarColor: systemNavigationBarColor,
    systemNavigationBarDividerColor: systemNavigationBarDividerColor,
    systemNavigationBarIconBrightness: systemNavigationBarIconBrightness,
  ));
}
