import 'package:alien/view/home_page/home_controller/home_controllers.dart';
import 'package:alien/view/home_page/videos/video_view.dart';
import 'package:alien/view/partner_profile/partner_profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:video_player/video_player.dart';

class Trendings extends StatelessWidget {
  Trendings({Key? key}) : super(key: key);
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          child: ListView.builder(
              //physics: NeverScrollableScrollPhysics(),
              //scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 7.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 4.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              2.w.widthBox,
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  0.6.h.heightBox,
                                  Text(
                                    'Travel the world',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  0.3.h.heightBox,
                                  Row(
                                    children: [
                                      Text(
                                        'Rohit Saini . 5h.',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 7.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Icon(
                                        Icons.circle,
                                        color: Colors.orange,
                                        size: 15,
                                      ),
                                      0.5.w.widthBox,
                                      Text(
                                        '2.5K',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 7.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              0.h.heightBox,
                              Icon(
                                Icons.add,
                                color: Colors.blue,
                                size: 25,
                              ).onTap(() {
                                Get.to(PartnerProfile1());
                              }),
                              Icon(
                                Icons.more_vert_rounded,
                                color: Colors.black,
                                size: 25,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ).pSymmetric(h: 2.w),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        homeController.controller!.value.isPlaying
                            ? homeController.controller!.pause()
                            : homeController.controller!.play();
                      },
                      child: Stack(
                        children: [
                          Container(
                              height: 40.5.h,
                              width: 100.w,
                              color: Colors.grey,
                              child: Obx(() {
                                if (homeController.isLoader.value == false &&
                                    homeController.controller != null &&
                                    homeController
                                        .controller!.value.isInitialized) {
                                  return VideoPlayer(
                                      homeController.controller!);
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              })

                              //     ?  VideoPlayer(_videoLectureController.controller!)
                              //     : Center(
                              //         child: CircularProgressIndicator(),
                              //       ),
                              ).onDoubleTap(() {
                            Get.to(() => VideoPlayers());
                          }),
                          homeController.controller!.value.isPlaying
                              ? Container()
                              : Icon(
                                  Icons.play_arrow,
                                  color: Colors.transparent,
                                  size: 3.h,
                                ),

                          ///todo here we have video bottom progress indicartor
                          Positioned(
                              bottom: 0,
                              child: SizedBox(
                                height: 1.3.h,
                                width: 100.w,
                                child: VideoProgressIndicator(
                                    homeController.controller!,
                                    allowScrubbing: true),
                              )),
                          Positioned(
                            left: 3,
                            top: 2,
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
                                    child: Icon(
                                  Icons.push_pin,
                                  size: 17,
                                )),
                              ),
                            ),
                          ),
                          Positioned(
                            right: 2,
                            top: 2,
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
                                    child: Icon(
                                  Icons.volume_down,
                                  size: 17,
                                )),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 3.h,
                            //left: 0,
                            right: 1,
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
                                Text(
                                  '01:30',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.sp,
                                  ),
                                ),
                              ],
                            ).pSymmetric(h: 0.5.w),
                          ),

                          Positioned(
                            left: 0,
                            bottom: 1.h,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                            left: 13.w,
                            bottom: 1.h,
                            child: Container(
                              height: 2.h,
                              //width: 11.w,
                              decoration: BoxDecoration(
                                //shape: BoxShape.circle,
                                color: Colors.white10,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        ],
                      ),
                    ),
                    0.5.h.heightBox,
                    Text(
                      'Memory',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),
                    ).paddingSymmetric(horizontal: 2.w),
                    Text(
                      'My name is kumar prince this the poetry video',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      ),
                    ).paddingSymmetric(horizontal: 2.w),
                    2.h.heightBox,
                    Row(
                      children: [
                        PhysicalModel(
                          elevation: 2,
                          color: Colors.grey,
                          shadowColor: Colors.grey,
                          shape: BoxShape.circle,
                          child: Container(
                            height: 4.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                        0.7.w.widthBox,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 4.5.h,
                            width: 78.w,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: TextField(
                              minLines: 1,
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.faceGrin,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                suffixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.settings_voice,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                  fontSize: 10.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13.5.w,
                          height: 4.h,
                          child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  // SizedBox(
                                  //   height: 5.h,
                                  //   width: 10.w,
                                  //   child: ExpansionTile(
                                  //     title: Icon(
                                  //       Icons.keyboard_arrow_down,
                                  //       size: 10,
                                  //       color: Colors.transparent,
                                  //     ),
                                  //     backgroundColor: Colors.white,
                                  //     collapsedBackgroundColor: Colors.white,
                                  //     collapsedIconColor: Colors.black,
                                  //     iconColor: Colors.black,
                                  //     children: [
                                  //       Column(
                                  //         children: [
                                  //           Positioned(
                                  //             left: 0,
                                  //             bottom: 5.w,
                                  //             child: Container(
                                  //               height: 4.6.h,
                                  //               width: 65.w,
                                  //               decoration: BoxDecoration(
                                  //                 color: Colors.grey.shade200,
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(4),
                                  //               ),
                                  //               child: TextField(
                                  //                 decoration: InputDecoration(
                                  //                   contentPadding:
                                  //                       EdgeInsets.all(8),
                                  //                   hintText: 'Search...',
                                  //                   border: OutlineInputBorder(
                                  //                     borderSide: BorderSide(
                                  //                       width: 0,
                                  //                       style: BorderStyle.none,
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           SizedBox(height: 2.h),
                                  //         ],
                                  //       )
                                  //     ],
                                  //   ),
                                  // ),
                                  2.w.widthBox,

                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.message,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.group_add,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.call,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.videocam,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white10,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.email_outlined,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    1.2.h.heightBox,
                    Row(
                      children: [
                        7.7.w.widthBox,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 4.5.h,
                            width: 78.w,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: TextField(
                              minLines: 1,
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.faceGrin,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                suffixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.settings_voice,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                  fontSize: 10.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13.5.w,
                          height: 4.h,
                          child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  // SizedBox(
                                  //   height: 5.h,
                                  //   width: 10.w,
                                  //   child: ExpansionTile(
                                  //     title: Icon(
                                  //       Icons.keyboard_arrow_down,
                                  //       size: 10,
                                  //       color: Colors.transparent,
                                  //     ),
                                  //     backgroundColor: Colors.white,
                                  //     collapsedBackgroundColor: Colors.white,
                                  //     collapsedIconColor: Colors.black,
                                  //     iconColor: Colors.black,
                                  //     children: [
                                  //       Column(
                                  //         children: [
                                  //           Positioned(
                                  //             left: 0,
                                  //             bottom: 5.w,
                                  //             child: Container(
                                  //               height: 4.6.h,
                                  //               width: 65.w,
                                  //               decoration: BoxDecoration(
                                  //                 color: Colors.grey.shade200,
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(4),
                                  //               ),
                                  //               child: TextField(
                                  //                 decoration: InputDecoration(
                                  //                   contentPadding:
                                  //                       EdgeInsets.all(8),
                                  //                   hintText: 'Search...',
                                  //                   border: OutlineInputBorder(
                                  //                     borderSide: BorderSide(
                                  //                       width: 0,
                                  //                       style: BorderStyle.none,
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           SizedBox(height: 2.h),
                                  //         ],
                                  //       )
                                  //     ],
                                  //   ),
                                  // ),
                                  2.w.widthBox,

                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.call,
                                            size: 10,
                                          ),
                                          Icon(
                                            Icons.video_call,
                                            size: 13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    1.2.h.heightBox,
                    Row(
                      children: [
                        7.7.w.widthBox,
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            height: 4.5.h,
                            width: 78.w,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.grey, width: 0.5),
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: TextField(
                              minLines: 1,
                              maxLines: 1,
                              style: TextStyle(fontSize: 12),
                              decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        FontAwesomeIcons.faceGrin,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.add,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                suffixIcon: SizedBox(
                                  height: 4.h,
                                  width: 9.w,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.music_note,
                                        color: Colors.black,
                                        size: 15,
                                      ),
                                      1.w.widthBox,
                                      Icon(
                                        Icons.settings_voice,
                                        color: Colors.black,
                                        size: 18,
                                      )
                                    ],
                                  ).p(4),
                                ),
                                contentPadding: EdgeInsets.all(8),
                                hintText: 'Search...',
                                hintStyle: TextStyle(
                                  fontSize: 10.sp,
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13.5.w,
                          height: 4.h,
                          child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  // SizedBox(
                                  //   height: 5.h,
                                  //   width: 10.w,
                                  //   child: ExpansionTile(
                                  //     title: Icon(
                                  //       Icons.keyboard_arrow_down,
                                  //       size: 10,
                                  //       color: Colors.transparent,
                                  //     ),
                                  //     backgroundColor: Colors.white,
                                  //     collapsedBackgroundColor: Colors.white,
                                  //     collapsedIconColor: Colors.black,
                                  //     iconColor: Colors.black,
                                  //     children: [
                                  //       Column(
                                  //         children: [
                                  //           Positioned(
                                  //             left: 0,
                                  //             bottom: 5.w,
                                  //             child: Container(
                                  //               height: 4.6.h,
                                  //               width: 65.w,
                                  //               decoration: BoxDecoration(
                                  //                 color: Colors.grey.shade200,
                                  //                 borderRadius:
                                  //                     BorderRadius.circular(4),
                                  //               ),
                                  //               child: TextField(
                                  //                 decoration: InputDecoration(
                                  //                   contentPadding:
                                  //                       EdgeInsets.all(8),
                                  //                   hintText: 'Search...',
                                  //                   border: OutlineInputBorder(
                                  //                     borderSide: BorderSide(
                                  //                       width: 0,
                                  //                       style: BorderStyle.none,
                                  //                     ),
                                  //                   ),
                                  //                 ),
                                  //               ),
                                  //             ),
                                  //           ),
                                  //           SizedBox(height: 2.h),
                                  //         ],
                                  //       )
                                  //     ],
                                  //   ),
                                  // ),
                                  2.w.widthBox,

                                  0.2.w.widthBox,
                                  PhysicalModel(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle,
                                    elevation: 2,
                                    child: Container(
                                      height: 3.5.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.blue,
                                      ),
                                      child: Center(
                                          child: Icon(
                                        Icons.send,
                                        size: 15,
                                      )),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
        ).pSymmetric(h: 0.w),
      ],
    );
  }
}
