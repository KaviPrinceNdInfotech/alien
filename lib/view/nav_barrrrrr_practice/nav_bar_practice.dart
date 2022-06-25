import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    //NavController _controller  = Get.put(NavController());

    _controller = PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style3, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    Container(
      height: 100.h,
      width: 100.w,
      color: Colors.yellow,
    ),
    Container(
      height: 100.h,
      width: 100.w,
      color: Colors.pink,
    ),
    Container(
      height: 100.h,
      width: 100.w,
      color: Colors.yellow,
    ),
    Container(
      height: 100.h,
      width: 100.w,
      color: Colors.pink,
    ),
    Container(
      height: 100.h,
      width: 100.w,
      color: Colors.yellow,
    ),

    // Trendings(),
    // Trendings(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
      // textStyle: TextStyle(
      //   fontSize: 10.sp,
      // ),
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.settings),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.settings),
      title: ("Settings"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home),
      title: ("Home"),
      activeColorPrimary: CupertinoColors.activeBlue,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}
