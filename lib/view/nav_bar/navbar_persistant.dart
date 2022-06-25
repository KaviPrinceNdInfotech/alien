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
        height: 8.h,
        child: Container(
          //height: 7.h,
          decoration: BoxDecoration(
            //gradient: gradient4,
            color: Colors.white,
          ),
          child: PageView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Obx(
                  () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(0);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                FontAwesomeIcons.redditAlien,
                                color: _bottomController.tabindex.value == 0
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 22,
                              ),
                              Text("Alien",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 0
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
                        InkWell(
                          onTap: () {
                            print('call');
                            _bottomController.changeTabIndex(1);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.compare,
                                color: _bottomController.tabindex.value == 1
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 20,
                              ),
                              Text("Explore",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 1
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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

                              Icon(
                                Icons.favorite,
                                color: _bottomController.tabindex.value == 2
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 20,
                              ),
                              Text("Wishlist",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 2
                                              ? Colors.black
                                              : Colors.grey.shade600,
                                      fontSize: 8.sp,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
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
                              Icon(
                                Icons.chat_bubble_outline_outlined,
                                color: _bottomController.tabindex.value == 3
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 20,
                              ),
                              Text("Ma",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 3
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
                            _bottomController.changeTabIndex(1);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.video_call,
                                color: _bottomController.tabindex.value == 4
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 20,
                              ),
                              Text("Clip",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 44
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.border_inner_sharp,
                                color: _bottomController.tabindex.value == 1
                                    ? Colors.black
                                    : Colors.grey.shade600,
                                size: 20,
                              ),
                              Text("ma",
                                  style: TextStyle(
                                      color:
                                          _bottomController.tabindex.value == 1
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
              index: _bottomController.tabindex.value,
              children: [
                HomePage(),
                //DrawerPracticee(),
//     const Page1(),
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
