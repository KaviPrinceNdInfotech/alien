import 'dart:async';

import 'package:alien/view/home_page/chatss/chatview.dart';
import 'package:alien/view/home_page/home_pagee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'nav_bar_controller.dart';

class NavBar extends StatelessWidget {
  var size, height, width;
  NavBar({Key? key}) : super(key: key);
  final List<int> _items = List<int>.generate(50, (int index) => index);

  final List<IconData> icons = [
    Icons.sentiment_very_dissatisfied,
    Icons.home,
    Icons.drafts,
    Icons.backspace
  ];
  final List<String> text1 = [
    'Alien',
    'Clip',
    'Explore',
    'C',
    'Ma',
    'Jobs',
  ];
  void _showDialog() {
    Future.delayed(Duration(seconds: 1), () {
      Timer(Duration(seconds: 5), () {
        Get.back();

        print(" This line is execute after 2 seconds");
      });
      // Container(
      //   height: 30.h,
      //   width: 60.w,
      //   color: Colors.blue,
      // );
      Get.defaultDialog(
          title: "",

          //middleText:
          content: SizedBox(
            width: 100.w,
            height: 40.5.h,
            child: Stack(
              clipBehavior: Clip.none,
              //mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Positioned(
                  left: -12.w,
                  top: 6.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    elevation: 2,
                    child: Container(
                      height: 4.h,
                      width: 9.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.push_pin,
                        size: 17,
                      )),
                    ),
                  ),
                ),
                Positioned(
                  left: -12.w,
                  bottom: -4.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    //shape: BoxShape.circle,
                    elevation: 0.5,
                    child: Container(
                      height: 2.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 17,
                          ),
                          Text(
                            '1.70k',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 7.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.w,
                  bottom: -4.h,
                  child: Container(
                    height: 2.h,
                    //width: 11.w,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      color: Colors.white10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.stop_circle_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                        Text(
                          'Similar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 7.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -11.w,
                  top: 6.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    elevation: 2,
                    child: Container(
                      height: 5.h,
                      width: 9.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          // _showDialog();
                        },
                        child: Icon(
                          Icons.volume_down,
                          size: 17,
                        ),
                      )),
                    ),
                  ),
                ),
                Positioned(
                  top: 9.h,
                  //right:0,
                  //left: 0,
                  right: -11.w,
                  child: Column(
                    children: [
                      12.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 24,
                      )),
                      Text(
                        '110+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.mic_none_rounded,
                        color: Colors.white,
                        size: 24,
                      )),
                      Text(
                        '200+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        FontAwesomeIcons.share,
                        color: Colors.white,
                        size: 17,
                      )),
                      Text(
                        '20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.card_giftcard_outlined,
                        color: Colors.white,
                        size: 22,
                      )),
                      Text(
                        '12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      0.7.h.heightBox,
                    ],
                  ).pSymmetric(h: 0.0.w),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          titleStyle: TextStyle(color: Colors.white),
          middleTextStyle: TextStyle(color: Colors.white),
          radius: 0);
    });
  }

  BottomController _bottomController =
      Get.put(BottomController(), permanent: true);
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    print(height);
    print(width);
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 7.h,
        child: Container(
          //height: 7.h,
          decoration: BoxDecoration(
            //gradient: gradient4,
            color: Colors.white,
          ),
          child: PageView.builder(
              itemCount: _bottomController.myFav.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return
                    //   Obx(
                    //   () => ReorderableListView(
                    //     scrollDirection: Axis.horizontal,
                    //     onReorder: (oldIndex, newIndex) {
                    //       _bottomController.reorder(oldIndex, newIndex);
                    //       if (oldIndex < newIndex) {
                    //         newIndex -= 1;
                    //       }
                    //       final int item = _items.removeAt(oldIndex);
                    //       _items.insert(newIndex, item);
                    //     },
                    //     children: _bottomController.myFav
                    //         .map(
                    //           (e) => Container(
                    //             width: 15.w,
                    //             height: 3.h,
                    //             margin: EdgeInsets.only(left: 8, right: 8, top: 5),
                    //             padding: EdgeInsets.all(4),
                    //             key: ValueKey(e),
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.all(
                    //                   Radius.circular(8),
                    //                 ),
                    //                 color: Colors.transparent),
                    //             child: InkWell(
                    //               onTap: () {
                    //                 print('call');
                    //
                    //                 // _bottomController.changeTabIndex(0);
                    //                 if (index == 0) {
                    //                   //Get.to(() => ManPage());
                    //                   _bottomController.changeTabIndex(0);
                    //                   //Get.to(() => WaterTracking());
                    //                 } else if (index == 1) {
                    //                   _bottomController.changeTabIndex(1);
                    //                 } else if (index == 2) {
                    //                   _bottomController.changeTabIndex(2);
                    //                   //Get.to(() => HotDeals());
                    //                   //Get.to(() => WalkTracking());
                    //                 } else if (index == 3) {
                    //                   ///Todo this is showing dark and white mode
                    //                   ///
                    //                   _bottomController.changeTabIndex.hashCode;
                    //
                    //                   //Get.to(() => CarouselDemo());
                    //                 } else if (index == 4) {
                    //                   _bottomController.changeTabIndex(4);
                    //                 }
                    //               },
                    //               child: Column(
                    //                 mainAxisAlignment: MainAxisAlignment.center,
                    //                 crossAxisAlignment: CrossAxisAlignment.center,
                    //                 children: [
                    //                   Icon(
                    //                     icons.first,
                    //                     color: _bottomController.tabIndex.value == 0
                    //                         ? Colors.black
                    //                         : Colors.grey.shade600,
                    //                     size: 22,
                    //                   ),
                    //                   SizedBox(
                    //                     height: 2.h,
                    //                     width: 10.w,
                    //                     child: Center(
                    //                       child: Text(e,
                    //                           style: TextStyle(
                    //                               color: _bottomController
                    //                                           .tabIndex.value ==
                    //                                       0
                    //                                   ? Colors.black
                    //                                   : Colors.grey.shade600,
                    //                               fontSize: 7.sp,
                    //                               fontWeight: FontWeight.bold)
                    //                           //style: TextStyle(color:_bottomController.tabindex.value==0?Colors.orange:Color(0xFF110d39),fontSize: 13)
                    //                           // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                    //                           //     textcolor
                    //                           // ),
                    //                           ),
                    //                     ),
                    //                   )
                    //                 ],
                    //               ),
                    //             ),
                    //           ),
                    //         )
                    //         .toList(),
                    //   ),
                    // );

                    ///todo..............
                    Obx(
                  () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(0);
                          },
                          child: SizedBox(
                            height: 8.h,
                            width: 10.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                //2.h.heightBox,
                                Container(
                                  height: 0.3.h,
                                  width: 11.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: _bottomController.tabIndex.value == 0
                                        ? Colors.blue
                                        : Colors.transparent,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.redditAlien,
                                      color:
                                          _bottomController.tabIndex.value == 0
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      size: 22,
                                    ),
                                    0.1.w.widthBox,
                                    PopupMenuButton(
                                      initialValue: 2,
                                      child: Center(
                                          child: Icon(
                                        Icons.arrow_drop_up_outlined,
                                        size: 12,
                                        color:
                                            _bottomController.tabIndex.value ==
                                                    0
                                                ? Colors.black
                                                : Colors.transparent,
                                      )),
                                      itemBuilder: (context) {
                                        return List.generate(5, (index) {
                                          return PopupMenuItem(
                                            value: index,
                                            child: Text('button no $index'),
                                          );
                                        });
                                      },
                                    ),
                                  ],
                                ),
                                Text("Alien       ",
                                    style: TextStyle(
                                        color:
                                            _bottomController.tabIndex.value ==
                                                    0
                                                ? Colors.black
                                                : Colors.grey.shade600,
                                        fontSize: 7.sp,
                                        fontWeight: FontWeight.bold)
                                    //style: TextStyle(color:_bottomController.tabindex.value==0?Colors.orange:Color(0xFF110d39),fontSize: 13)
                                    // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                    //     textcolor
                                    // ),
                                    )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(1);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.3.h,
                                width: 11.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _bottomController.tabIndex.value == 1
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.explosion,
                                    color: _bottomController.tabIndex.value == 1
                                        ? Colors.black
                                        : Colors.grey.shade600,
                                    size: 22,
                                  ),
                                  1.w.widthBox,
                                  PopupMenuButton(
                                    initialValue: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_drop_up_outlined,
                                      size: 12,
                                      color:
                                          _bottomController.tabIndex.value == 1
                                              ? Colors.black
                                              : Colors.transparent,
                                    )),
                                    itemBuilder: (context) {
                                      return List.generate(5, (index) {
                                        return PopupMenuItem(
                                          value: index,
                                          child: Text('button no $index'),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text("Explore    ",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabIndex.value == 1
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold)
                                  //style: TextStyle(color: _bottomController.tabindex.value==1?Colors.orange:Color(0xFF110d39),fontSize: 13)
                                  // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                  //     textcolor
                                  // ),
                                  ),
                            ],
                          ),
                        ),

                        //...............................................................

                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(2);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.3.h,
                                width: 11.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _bottomController.tabIndex.value == 2
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                              ),
                              // Container(
                              //   height: 3.8.h,
                              //   width: 6.w,
                              //   child: Image.asset(
                              //     'lib/assets/love.png',
                              //     color: _bottomController.tabindex.value == 2
                              //         ? Colors.black
                              //         : Colors.grey.shade600,
                              //     fit: BoxFit.fill,
                              //   ),
                              // ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.heart,
                                    color: _bottomController.tabIndex.value == 2
                                        ? Colors.black
                                        : Colors.grey.shade600,
                                    size: 22,
                                  ),
                                  PopupMenuButton(
                                    initialValue: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_drop_up_outlined,
                                      size: 15,
                                      color:
                                          _bottomController.tabIndex.value == 2
                                              ? Colors.black
                                              : Colors.transparent,
                                    )),
                                    itemBuilder: (context) {
                                      return List.generate(5, (index) {
                                        return PopupMenuItem(
                                          value: index,
                                          child: Text('button no $index'),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text("Wishlist    ",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabIndex.value == 2
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold)
                                  //style: TextStyle(color: _bottomController.tabindex.value==3?Colors.orange:Color(0xFF110d39),fontSize: 13)
                                  // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                  //     textcolor
                                  // ),
                                  ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(3);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.3.h,
                                width: 11.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _bottomController.tabIndex.value == 3
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                              ),
                              // Container(
                              //   height: 3.8.h,
                              //   width: 6.w,
                              //   child: Image.asset(
                              //     'lib/assets/user.png',
                              //     color: _bottomController.tabindex.value == 3
                              //         ? Colors.black
                              //         : Colors.grey.shade600,
                              //     fit: BoxFit.fill,
                              //   ).p(0),
                              // ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.message,
                                    color: _bottomController.tabIndex.value == 3
                                        ? Colors.black
                                        : Colors.grey.shade600,
                                    size: 22,
                                  ),
                                  1.w.widthBox,
                                  PopupMenuButton(
                                    initialValue: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_drop_up_outlined,
                                      size: 12,
                                      color:
                                          _bottomController.tabIndex.value == 3
                                              ? Colors.black
                                              : Colors.transparent,
                                    )),
                                    itemBuilder: (context) {
                                      return List.generate(5, (index) {
                                        return PopupMenuItem(
                                          value: index,
                                          child: Text('button no $index'),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text("Message     ",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabIndex.value == 3
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold)
                                  // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                  //     textcolor
                                  // ),
                                  ),
                            ],
                          ),
                        ),

                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(4);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.3.h,
                                width: 11.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _bottomController.tabIndex.value == 4
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.video,
                                    color: _bottomController.tabIndex.value == 4
                                        ? Colors.black
                                        : Colors.grey.shade600,
                                    size: 22,
                                  ),
                                  1.w.widthBox,
                                  PopupMenuButton(
                                    initialValue: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_drop_up_outlined,
                                      size: 12,
                                      color:
                                          _bottomController.tabIndex.value == 4
                                              ? Colors.black
                                              : Colors.transparent,
                                    )),
                                    itemBuilder: (context) {
                                      return List.generate(5, (index) {
                                        return PopupMenuItem(
                                          value: index,
                                          child: Text('button no $index'),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text("Clip      ",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabIndex.value == 4
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold)
                                  //style: TextStyle(color: _bottomController.tabindex.value==1?Colors.orange:Color(0xFF110d39),fontSize: 13)
                                  // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                  //     textcolor
                                  // ),
                                  ),
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(5);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 0.3.h,
                                width: 11.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: _bottomController.tabIndex.value == 5
                                      ? Colors.blue
                                      : Colors.transparent,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.dashboard,
                                    color: _bottomController.tabIndex.value == 5
                                        ? Colors.black
                                        : Colors.grey.shade600,
                                    size: 22,
                                  ),
                                  1.w.widthBox,
                                  PopupMenuButton(
                                    initialValue: 2,
                                    child: Center(
                                        child: Icon(
                                      Icons.arrow_drop_up_outlined,
                                      size: 12,
                                      color:
                                          _bottomController.tabIndex.value == 5
                                              ? Colors.black
                                              : Colors.transparent,
                                    )),
                                    itemBuilder: (context) {
                                      return List.generate(5, (index) {
                                        return PopupMenuItem(
                                          value: index,
                                          child: Text('button no $index'),
                                        );
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Text("dashbord  ",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabIndex.value == 5
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 7.sp,
                                      fontWeight: FontWeight.bold)
                                  //style: TextStyle(color: _bottomController.tabindex.value==1?Colors.orange:Color(0xFF110d39),fontSize: 13)
                                  // TextStyles(12.sp, FontWeight.w400, TextDecoration.none,
                                  //     textcolor
                                  // ),
                                  ),
                            ],
                          ),
                        ),
                      ]).pSymmetric(h: 4.w),
                );
              }),
        ),
      ),
      body: Obx(
        () => SafeArea(
          child: Center(
            child: IndexedStack(
              index: _bottomController.tabIndex.value,
              children: [
                HomePage(),
                //DrawerPracticee(),
//     const Page1(),
                ChhatView(),
//     //StudioPage(),
//     //const Page4(),
                //WishListPage(),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.red,
                ),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.yellow,
                ),
//     //StudioPage(),
//     //const Page4(),
                //WishListPage(),
                Container(
                  height: 100.h,
                  width: 100.w,
                  color: Colors.greenAccent,
                ),
                //Profile(),
                //WithdrowPage(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showpopup() {
    Future.delayed(Duration(seconds: 1), () {
      Timer(Duration(seconds: 5), () {
        Get.back();

        print(" This line is execute after 2 seconds");
      });
      // Container(
      //   height: 30.h,
      //   width: 60.w,
      //   color: Colors.blue,
      // );
      Get.defaultDialog(
          title: "",

          //middleText:
          content: SizedBox(
            width: 100.w,
            height: 40.5.h,
            child: Stack(
              clipBehavior: Clip.none,
              //mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Positioned(
                  left: -12.w,
                  top: 6.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    elevation: 2,
                    child: Container(
                      height: 4.h,
                      width: 9.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Center(
                          child: Icon(
                        Icons.push_pin,
                        size: 17,
                      )),
                    ),
                  ),
                ),
                Positioned(
                  left: -12.w,
                  bottom: -4.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    //shape: BoxShape.circle,
                    elevation: 0.5,
                    child: Container(
                      height: 2.h,
                      width: 11.w,
                      decoration: BoxDecoration(
                        //shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 17,
                          ),
                          Text(
                            '1.70k',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 7.sp,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 0.w,
                  bottom: -4.h,
                  child: Container(
                    height: 2.h,
                    //width: 11.w,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      color: Colors.white10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.stop_circle_outlined,
                          size: 14,
                          color: Colors.white,
                        ),
                        Text(
                          'Similar',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 7.sp,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: -11.w,
                  top: 6.h,
                  child: PhysicalModel(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    elevation: 2,
                    child: Container(
                      height: 5.h,
                      width: 9.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white10,
                      ),
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          // _showDialog();
                        },
                        child: Icon(
                          Icons.volume_down,
                          size: 17,
                        ),
                      )),
                    ),
                  ),
                ),
                Positioned(
                  top: 9.h,
                  //right:0,
                  //left: 0,
                  right: -11.w,
                  child: Column(
                    children: [
                      12.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.star_border,
                        color: Colors.white,
                        size: 24,
                      )),
                      Text(
                        '110+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.mic_none_rounded,
                        color: Colors.white,
                        size: 24,
                      )),
                      Text(
                        '200+',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        FontAwesomeIcons.share,
                        color: Colors.white,
                        size: 17,
                      )),
                      Text(
                        '20',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      1.3.h.heightBox,
                      Center(
                          child: Icon(
                        Icons.card_giftcard_outlined,
                        color: Colors.white,
                        size: 22,
                      )),
                      Text(
                        '12',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 7.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      0.7.h.heightBox,
                    ],
                  ).pSymmetric(h: 0.0.w),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.transparent,
          titleStyle: TextStyle(color: Colors.white),
          middleTextStyle: TextStyle(color: Colors.white),
          radius: 0);
    });
  }
}

// import 'package:e_commerce_apps/view/nav_bar/nav_bar_controller.dart';
// import 'package:e_commerce_apps/view/nav_bar/profiles/profile.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:velocity_x/velocity_x.dart';
//
// import 'cartegory/category_page.dart';
// import 'explores/explore_page.dart';
// import 'home_page/home_pagee.dart';
//
// class NavBar extends StatefulWidget {
//   NavBar({Key? key}) : super(key: key);
//
//   BottomController _bottomController =
//       Get.put(BottomController(), permanent: true);
//
//   @override
//   _NavBarState createState() => _NavBarState();
// }
//
// class _NavBarState extends State<NavBar> {
//   int pageIndex = 0;
//   GlobalKey<ScaffoldState> _key = GlobalKey();
//   //static ExampleViewModel exampleViewModel = ExampleViewModel(pageColors: [Colors.orange], appearance: CircularSliderAppearance());
//   final pages = [
//     HomePage(),
//     //const Page1(),
//     CategoryPage(),
//     //StudioPage(),
//     //const Page4(),
//     Explorepage(),
//     Profile(),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _key,
//       backgroundColor: const Color(0xffC4DFCB),
//       body: pages[pageIndex],
//       bottomNavigationBar: buildMyNavBar(context),
//     );
//   }
//
//   Container buildMyNavBar(BuildContext context) {
//     return Container(
//       height: 60,
//       decoration: BoxDecoration(
//         color: Color(0xffebeced),
//         borderRadius: const BorderRadius.only(
//           topLeft: Radius.circular(1),
//           topRight: Radius.circular(1),
//         ),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               pageIndex == 0
//                   ? const Icon(
//                       Icons.home_filled,
//                       color: Colors.pink,
//                       size: 25,
//                     )
//                   : const Icon(
//                       Icons.home_outlined,
//                       color: Colors.grey,
//                       size: 27,
//                     ),
//               pageIndex == 0
//                   ? 'Home'.text.size(12).pink500.make()
//                   : 'Home'.text.gray700.size(13).make(),
//             ],
//           ).onInkTap(() {
//             //_bottomController.changeTabIndex(0);
//             setState(() {
//               pageIndex = 0;
//             });
//           }),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               pageIndex == 1
//                   ? const Icon(
//                       Icons.dashboard,
//                       color: Colors.pink,
//                       size: 25,
//                     )
//                   : const Icon(
//                       Icons.dashboard,
//                       color: Colors.grey,
//                       size: 27,
//                     ),
//               pageIndex == 1
//                   ? 'Category'.text.pink500.size(12).make()
//                   : 'Category'.text.gray700.size(13).make(),
//             ],
//           ).onInkTap(() {
//             setState(() {
//               pageIndex = 1;
//             });
//           }),
//           // Column(
//           //   children: [
//           //     pageIndex == 2
//           //         ? const Icon(
//           //             Icons.live_tv,
//           //             color: Colors.pink,
//           //             size: 35,
//           //           )
//           //         : const Icon(
//           //             Icons.live_tv,
//           //             color: Colors.grey,
//           //             size: 35,
//           //           ),
//           //     pageIndex == 2
//           //         ? 'Studio'.text.pink500.make()
//           //         : 'Studio'.text.gray700.make(),
//           //   ],
//           // ).onInkTap(() {
//           //   setState(() {
//           //     pageIndex = 2;
//           //   });
//           // }),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               pageIndex == 2
//                   ? const Icon(
//                       FontAwesomeIcons.star,
//                       color: Colors.pink,
//                       size: 25,
//                     )
//                   : const Icon(
//                       FontAwesomeIcons.star,
//                       color: Colors.grey,
//                       size: 27,
//                     ),
//               pageIndex == 2
//                   ? 'Explore'.text.pink500.size(12).make()
//                   : 'Explore'.text.gray700.size(13).make(),
//             ],
//           ).onInkTap(() {
//             setState(() {
//               pageIndex = 2;
//             });
//           }),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               pageIndex == 3
//                   ? const Icon(
//                       Icons.person,
//                       color: Colors.pink,
//                       size: 25,
//                     )
//                   : const Icon(
//                       Icons.person_outline,
//                       color: Colors.grey,
//                       size: 27,
//                     ),
//               pageIndex == 3
//                   ? 'Profile'.text.pink500.size(12).make()
//                   : 'Profile'.text.gray700.size(13).make(),
//             ],
//           ).onInkTap(() {
//             setState(() {
//               pageIndex = 3;
//             });
//           }),
//         ],
//       ),
//     );
//   }
// }
//
// class Page1 extends StatelessWidget {
//   const Page1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 1",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 2",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Page4 extends StatelessWidget {
//   const Page4({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 4",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class Page5 extends StatelessWidget {
//   const Page5({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color(0xffC4DFCB),
//       child: Center(
//         child: Text(
//           "Page Number 5",
//           style: TextStyle(
//             color: Colors.green[900],
//             fontSize: 45,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ),
//     );
//   }
// }

///todo............
///
