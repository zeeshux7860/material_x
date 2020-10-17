import 'package:flutter/gestures.dart';
import 'package:material_x/material_x.dart';

extension XScaffold on Widget {
  Widget xScaffold({
    final bool extendBody = false,
    final bool extendBodyBehindAppBar = false,
    final PreferredSizeWidget appBar,
    final Widget floatingActionButton,
    final FloatingActionButtonLocation floatingActionButtonLocation,
    final FloatingActionButtonAnimator floatingActionButtonAnimator,
    final List<Widget> persistentFooterButtons,
    final Widget drawer,
    final Widget endDrawer,
    final Color drawerScrimColor,
    final Color backgroundColor,
    final Widget bottomNavigationBar,
    final Widget bottomSheet,
    final bool resizeToAvoidBottomPadding,
    final bool resizeToAvoidBottomInset,
    final bool primary = true,
    final DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    final double drawerEdgeDragWidth,
    final Key key,
  }) {
    return Scaffold(
      appBar: appBar,
      body: this,
      backgroundColor: backgroundColor,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      drawer: drawer,
      drawerDragStartBehavior: drawerDragStartBehavior,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerScrimColor: backgroundColor,
      endDrawer: endDrawer,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      floatingActionButton: floatingActionButton,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      floatingActionButtonLocation: floatingActionButtonLocation,
      key: key,
      persistentFooterButtons: persistentFooterButtons,
      primary: primary,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      resizeToAvoidBottomPadding: resizeToAvoidBottomPadding,
    );
  }
}
