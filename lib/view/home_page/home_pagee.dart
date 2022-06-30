import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/home_page/home_controller/home_controllers.dart';
import 'package:alien/view/home_page/tabs./trending_tab/trending_view.dart';
import 'package:alien/view/nav_barrrrrr_practice/nav_bar_practice.dart';
import 'package:alien/view/show_hide/show_hide_view.dart';
import 'package:alien/view/widgetss/drower_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

const TextStyle kstyle = TextStyle(fontSize: 10);

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> _key = GlobalKey();
    bool showFab = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      drawer: MainDrawer(),
      // appBar: AppBar(
      //   elevation: 0.5,
      //   backgroundColor: Colors.white,
      //   leading: Padding(
      //     padding: const EdgeInsets.all(8.0),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           height: 4.h,
      //           width: 7.w,
      //           decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(5),
      //               //color: Colors.blue,
      //               border: Border.all(color: Colors.black)),
      //           child: Center(
      //             child: Align(
      //               alignment: Alignment.center,
      //               child: Text(
      //                 'User Profile Photo',
      //                 style: TextStyle(
      //                   fontSize: 5.sp,
      //                   color: Colors.black,
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ).onTap(() {
      //           Get.to(() => NavBar());
      //         }),
      //       ],
      //     ),
      //   ),
      //   leadingWidth: 12.w,
      //   title: Obx(() => Align(
      //         alignment: Alignment.centerLeft,
      //         child: SizedBox(
      //           width: 32.w,
      //
      //           //height: 15.h,
      //           child: DropdownButton(
      //             iconEnabledColor: Colors.black,
      //             //iconDisabledColor: Colors.pink,
      //             icon: Icon(Icons.keyboard_arrow_down_outlined),
      //             underline: Container(
      //               height: 0,
      //               color: Colors.deepPurpleAccent,
      //             ),
      //             //value: homeController.selected.value,
      //             hint: Text(
      //               'Alien Pin',
      //               style: TextStyle(
      //                 fontWeight: FontWeight.w600,
      //                 color: Colors.black,
      //                 fontSize: 16.sp,
      //               ),
      //             ),
      //             onChanged: (String? newValue) {
      //               homeController.selected.value = newValue!;
      //             },
      //             value: homeController.selected.value == ""
      //                 ? null
      //                 : homeController.selected.value,
      //             items: homeController.dropdownText.map((selectedType) {
      //               return DropdownMenuItem(
      //                 child: Row(
      //                   children: [
      //                     Obx(
      //                       () => Checkbox(
      //                         value: homeController.handlerRequired.value,
      //                         onChanged: homeController.onHandlerChanged,
      //                         //homeController.selected.value = newValue!;
      //                       ),
      //                     ),
      //                     SizedBox(
      //                       //height: 4.h,
      //                       width: 11.w,
      //                       child: Text(
      //                         selectedType,
      //                         style: TextStyle(
      //                           fontWeight: FontWeight.bold,
      //                           color: Colors.black,
      //                           fontSize: 7.sp,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 value: selectedType,
      //               );
      //             }).toList(),
      //           ),
      //         ),
      //       )),
      //   actions: [
      //     Row(
      //       children: [
      //         Icon(
      //           Icons.youtube_searched_for_sharp,
      //           color: Colors.black,
      //         ),
      //         1.w.widthBox,
      //         Icon(
      //           FontAwesomeIcons.redditAlien,
      //           color: Colors.black,
      //         ).onTap(() {
      //           Get.to(() => MyApp());
      //         }),
      //         1.w.widthBox,
      //       ],
      //     ).paddingSymmetric(horizontal: 0.w),
      //   ],
      // ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                // backgroundColor: Colors.blueAccent,
                elevation: 2,
                expandedHeight: 17.h,

                backgroundColor: Colors.black,
                //pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  // title: Text(
                  //   'Alien',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //   ),
                  // ),
                  background: Image.network(
                    'https://wallpaperaccess.com/full/4310302.jpg'
                    // 'https://wallpaperaccess.com/full/3073959.jpg'
                    // 'https://images.theconversation.com/files/309424/original/file-20200110-97140-1rwkigh.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1356&h=668&fit=crop'
                    ,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 4.h,
                        width: 7.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            //color: Colors.blue,
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                _key.currentState!.openDrawer();
                              },
                              child: Text(
                                'User Profile Photo',
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ).onTap(() {
                        _key.currentState!.openDrawer();
                        // Get.to(() => NavBar());
                      }),
                    ],
                  ),
                ),
                leadingWidth: 12.w,
                title: Obx(() => Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: 32.w,

                        //height: 15.h,
                        child: DropdownButton(
                          iconEnabledColor: Colors.white,
                          //iconDisabledColor: Colors.pink,
                          icon: Icon(Icons.keyboard_arrow_down_outlined),
                          underline: Container(
                            height: 0,
                            color: Colors.deepPurpleAccent,
                          ),
                          //value: homeController.selected.value,
                          hint: Text(
                            'Alien Pin',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                          onChanged: (String? newValue) {
                            homeController.selected.value = newValue!;
                          },
                          value: homeController.selected.value == ""
                              ? null
                              : homeController.selected.value,
                          items:
                              homeController.dropdownText.map((selectedType) {
                            return DropdownMenuItem(
                              child: Row(
                                children: [
                                  Obx(
                                    () => Checkbox(
                                      value:
                                          homeController.handlerRequired.value,
                                      onChanged:
                                          homeController.onHandlerChanged,
                                      //homeController.selected.value = newValue!;
                                    ),
                                  ),
                                  SizedBox(
                                    //height: 4.h,
                                    width: 11.w,
                                    child: Text(
                                      selectedType,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: 7.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              value: selectedType,
                            );
                          }).toList(),
                        ),
                      ),
                    )),
                actions: [
                  Row(
                    children: [
                      Icon(
                        Icons.youtube_searched_for_sharp,
                        color: Colors.white,
                      ).onTap(() {
                        Get.to(() => ShowHide());
                      }),
                      1.w.widthBox,
                      Icon(
                        FontAwesomeIcons.redditAlien,
                        color: Colors.white,
                      ).onTap(() {
                        Get.to(() => MyApp());
                      }),
                      1.w.widthBox,
                    ],
                  ).paddingSymmetric(horizontal: 0.w),
                ],
              ),
              restPage(),
            ],
          ),
        ],
      ),
    );
  }

  Widget restPage() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          // Obx(() => SizedBox(
          //       height: 6.h,
          //       child: DropdownButton(
          //         //value: homeController.selected.value,
          //         hint: Text(
          //           'Book Type',
          //           style: TextStyle(
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black,
          //             fontSize: 13.sp,
          //           ),
          //         ),
          //         onChanged: (String? newValue) {
          //           homeController.selected.value = newValue!;
          //         },
          //         value: homeController.selected.value == ""
          //             ? null
          //             : homeController.selected.value,
          //         items: homeController.dropdownText.map((selectedType) {
          //           return DropdownMenuItem(
          //             child: Row(
          //               children: [
          //                 Obx(
          //                   () => Checkbox(
          //                     value: homeController.handlerRequired.value,
          //                     onChanged: homeController.onHandlerChanged,
          //                     //homeController.selected.value = newValue!;
          //                   ),
          //                 ),
          //                 SizedBox(
          //                   //height: 4.h,
          //                   //width: 19.w,
          //                   child: Text(
          //                     selectedType,
          //                     style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                       color: Colors.black,
          //                       fontSize: 8.sp,
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             value: selectedType,
          //           );
          //         }).toList(),
          //       ),
          //     )),

          SizedBox(
            height: 10.1.h,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: 1,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Positioned(
                          //   top: 9.6.h,
                          //   left: 15.5.w,
                          //   // right: 0.w,
                          //   // bottom: 0.h,
                          //   child: Icon(
                          //     Icons.camera_enhance,
                          //     color: Colors.black,
                          //     size: 16,
                          //   ),
                          // ),

                          Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black)),
                              ).paddingSymmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              Text(
                                AppTexts.Add + " " + AppTexts.heightlight,
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 6.6.h,
                            left: 11.5.w,
                            // right: 0.w,
                            // bottom: 0.h,
                            child: Icon(
                              Icons.camera_enhance,
                              color: Colors.black,
                              size: 16,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 7.h,
                            width: 13.w,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.black)),
                          ).paddingSymmetric(
                            horizontal: 2.w,
                            vertical: 1.h,
                          ),
                          Text(
                            'Rohit Saini',
                            style: TextStyle(
                              fontSize: 5.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Positioned(
                          //   top: 9.6.h,
                          //   left: 15.5.w,
                          //   // right: 0.w,
                          //   // bottom: 0.h,
                          //   child: Icon(
                          //     Icons.camera_enhance,
                          //     color: Colors.black,
                          //     size: 16,
                          //   ),
                          // ),

                          Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black)),
                              ).paddingSymmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              Text(
                                'Neeraj_Chopra',
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 6.0.h,
                            left: 10.5.w,
                            // right: 0.w,
                            // bottom: 0.h,
                            child: Icon(
                              Icons.video_call,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Positioned(
                          //   top: 9.6.h,
                          //   left: 15.5.w,
                          //   // right: 0.w,
                          //   // bottom: 0.h,
                          //   child: Icon(
                          //     Icons.camera_enhance,
                          //     color: Colors.black,
                          //     size: 16,
                          //   ),
                          // ),

                          Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black)),
                              ).paddingSymmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              Text(
                                AppTexts.anonymous,
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                              top: 6.9.h,
                              left: 5.2.w,
                              //right: 0.w,
                              // bottom: 0.h,
                              child: Container(
                                height: 1.5.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    'Live',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 6.sp,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Positioned(
                          //   top: 9.6.h,
                          //   left: 15.5.w,
                          //   // right: 0.w,
                          //   // bottom: 0.h,
                          //   child: Icon(
                          //     Icons.camera_enhance,
                          //     color: Colors.black,
                          //     size: 16,
                          //   ),
                          // ),

                          Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black)),
                              ).paddingSymmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              Text(
                                AppTexts.join + " " + AppTexts.startup,
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 6.0.h,
                            left: 10.5.w,
                            // right: 0.w,
                            // bottom: 0.h,
                            child: Icon(
                              Icons.video_call,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Positioned(
                          //   top: 9.6.h,
                          //   left: 15.5.w,
                          //   // right: 0.w,
                          //   // bottom: 0.h,
                          //   child: Icon(
                          //     Icons.camera_enhance,
                          //     color: Colors.black,
                          //     size: 16,
                          //   ),
                          // ),

                          Column(
                            children: [
                              Container(
                                height: 7.h,
                                width: 13.w,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(color: Colors.black)),
                              ).paddingSymmetric(
                                horizontal: 2.w,
                                vertical: 1.h,
                              ),
                              Text(
                                AppTexts.community,
                                style: TextStyle(
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 5.0.h,
                            left: 11.5.w,
                            // right: 0.w,
                            // bottom: 0.h,
                            child: Icon(
                              Icons.video_call,
                              color: Colors.red,
                              size: 20,
                            ),
                          ),
                          Positioned(
                              top: 6.9.h,
                              left: 5.w,
                              //right: 0.w,
                              // bottom: 0.h,
                              child: Container(
                                height: 1.5.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(2),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Center(
                                  child: Text(
                                    'Live',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 6.sp,
                                    ),
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ],
                  );
                }),
          ),
          Divider(),

          ///todo from here tab bar custom in any project,,.......................
          DefaultTabController(
            length: 6,
            child: Column(
              children: <Widget>[
                Material(
                    elevation: 1,
                    color: Colors.white,
                    child: TabBar(
                      isScrollable: true, // Required
                      unselectedLabelColor: Colors.blue, // Other tabs color

                      labelColor: Colors.red, // Space between tabs
                      indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.red, width: 2),
                        // Indicator height
                        // insets: EdgeInsets.symmetric(
                        //     horizontal: 25), // Indicator width
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          child: Text(
                            AppTexts.trending,
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppTexts.Post,
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppTexts.most + " " + AppTexts.View,
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Tab(
                          child: Text(
                            AppTexts.my + " " + AppTexts.favourite,
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Tab 5',
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Tab(
                          child: Text(
                            'Tab 6',
                            style: TextStyle(
                                fontSize: 9.sp, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 100.h,
                  child: TabBarView(
                    children: <Widget>[
                      Trendings(),
                      Trendings(),
                      Trendings(),
                      Trendings(),
                      Trendings(),
                      Trendings(),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///todo here hidden text.................

          // SizedBox(
          //     height: 15.h,
          //     child: SingleChildScrollView(
          //       child: Column(
          //         children: [
          //           Text("one", style: kstyle),
          //           Visibility(
          //             // hiding the child widget
          //             visible: true,
          //             child: Text(
          //               "two",
          //               style: kstyle,
          //             ),
          //           ),
          //           Text(
          //             "three",
          //             style: kstyle,
          //           ),
          //         ],
          //       ),
          //     )),

          // Visibility widget to manage visibility
        ],
      ),
    );
  }
}

///from here multiple selected dropdown.........

// DropDownMultiSelect(
// options: homeController.options,
// whenEmpty: 'Select State Management Library',
// onChanged: (value) {
// homeController.selectedOptionList.value = value;
// homeController.selectedOption.value = "";
// homeController.selectedOptionList.value.forEach((element) {
// homeController.selectedOption.value =
// homeController.selectedOption.value + " " + element;
// });
// },
// selectedValues: homeController.selectedOptionList.value,
// ),
// SizedBox(
// height: 20,
// ),
// Obx(() => Text(homeController.selectedOption.value)),
