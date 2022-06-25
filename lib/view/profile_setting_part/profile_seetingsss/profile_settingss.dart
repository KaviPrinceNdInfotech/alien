import 'dart:io';

import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/partner_profile/partner_profile_page.dart';
import 'package:alien/view/profile_setting_part/profile_seetingsss/profile_setting_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileSettingss extends StatelessWidget {
  ProfileSettingss({Key? key}) : super(key: key);
  final ProfileSettingController _profileSettingController =
      Get.put(ProfileSettingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 4.h,
                  width: 26.w,
                  // width: ,
                  child: Row(
                    children: [
                      ///Todo from here get builder switches
                      // GetBuilder<ProfileSettingController>(
                      //     builder: (_) => Switch(
                      //         value: _profileSettingController.isSwitcheded,
                      //         onChanged: (value) {
                      //           _profileSettingController
                      //               .changeSwitchState(value);
                      //         })),

                      // Obx will rebuild Text & Switch when "on" observable changes

                      ///todo till here get builder switches

                      Obx(
                        () => Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.black,
                            onChanged: (val) =>
                                _profileSettingController.toggle(),
                            value: _profileSettingController.on.value),
                      ),
                      Obx(() => Text(
                            _profileSettingController.on.value
                                ? AppTexts.online + ""
                                : _profileSettingController.off.value
                                    ? AppTexts.offline
                                    : '',
                            style: TextStyle(
                              fontSize: 8.sp,
                              color: _profileSettingController.on.value
                                  ? Colors.green
                                  : Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            // ' ${_profileSettingController.on}'
                          )),
                    ],
                  ),
                ),
                Text(
                  'Alien',
                  style: TextStyle(
                    fontSize: 12.sp,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                  //width: double.infinity,
                  child: Row(
                    children: [
                      Icon(
                        Icons.emoji_emotions_sharp,
                        size: 28,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
            3.h.heightBox,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PhysicalModel(
                  elevation: 7,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: InkWell(
                    onTap: () {
                      // _profileSettingController.getImage(ImageSource.gallery);
                    },
                    child: Container(
                      height: 13.h,
                      width: 23.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //5.5.h.heightBox,
                          Obx(() => _profileSettingController
                                      .selectedImagePath.value ==
                                  ''
                              ? Text(
                                  'Photo',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 9.sp,
                                  ),
                                )
                              : Image.file(File(_profileSettingController
                                  .selectedImagePath.value))),
                          Obx(() => Text(
                                _profileSettingController
                                            .selectedImageSize.value ==
                                        ''
                                    ? ''
                                    : _profileSettingController
                                        .selectedImageSize.value,
                                style: TextStyle(fontSize: 7),
                              )),

                          GestureDetector(
                            onTap: () {
                              // _profileSettingController
                              //     .getImage(ImageSource.gallery);
                            },
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.black,
                              size: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                4.w.widthBox,
                SizedBox(
                  height: 20.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                          2.w.widthBox,
                          Text(
                            'Abhinav Kumar, 25',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp,
                            ),
                          ),
                          1.w.widthBox,
                          Icon(
                            Icons.check_circle,
                            size: 20,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                          2.w.widthBox,
                          Text(
                            'Abhinav Kumar',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle,
                            size: 30,
                          ),
                          2.w.widthBox,
                          Text(
                            'James Bond',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ).pSymmetric(h: 3.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.follow_the_signs,
                      size: 30,
                    ),
                    Text(
                      '150',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      AppTexts.following,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'People want to know about',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.accessibility_sharp,
                      size: 30,
                    ),
                    Text(
                      '750',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppTexts.followers,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'People want to know about me',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.favorite,
                      size: 30,
                    ),
                    Text(
                      '57',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppTexts.matchhh,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'People match with my profile',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.cloud_circle_rounded,
                      size: 30,
                    ),
                    Text(
                      '5421',
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppTexts.Alien + " " + AppTexts.coins,
                      style: TextStyle(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Total Reward generated',
                      style: TextStyle(
                        fontSize: 5.sp,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ],
            ).pSymmetric(h: 2.w),
            1.h.heightBox,
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(
                    Icons.settings_outlined,
                    size: 40,
                  ),
                  Text(AppTexts.Setting),
                ],
              ),
            ).pSymmetric(h: 2.w),
            2.h.heightBox,
            SizedBox(
              height: 39.h,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return PhysicalModel(
                            elevation: 4,
                            color: Colors.black,
                            clipBehavior: Clip.none,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              //height: 49.h,
                              width: 96.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.account_circle,
                                        size: 25,
                                      ),
                                      3.w.widthBox,
                                      Text(
                                        'Edit profile',
                                        style: TextStyle(
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ).pSymmetric(h: 2.w, v: 2.w),
                                  ListTile(
                                    title: Text(
                                      "Public Profile",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "Post",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Comments",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Dedicate",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //Text("A blog for learning flutter"),
                                    leading:
                                        Icon(Icons.supervisor_account_sharp),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Partner Profile",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "Chat",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Voice Call",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Video call",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.wc),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Match Profile",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Text(
                                          "Age",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Distance",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        1.w.widthBox,
                                        Container(
                                          height: 2.h,
                                          width: 0.3.w,
                                          color: Colors.grey,
                                        ),
                                        1.w.widthBox,
                                        Text(
                                          "Criteria",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.favorite),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  Column(
                                    children: [
                                      ExpansionTile(
                                        title: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 25,
                                          color: Colors.transparent,
                                        ),
                                        backgroundColor: Colors.white,
                                        collapsedBackgroundColor: Colors.white,
                                        collapsedIconColor: Colors.black,
                                        iconColor: Colors.black,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.w, vertical: 0.h),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    "Connect Profile",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),
                                                  subtitle: Row(
                                                    children: [
                                                      Text(
                                                        "Chat",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      1.w.widthBox,
                                                      Container(
                                                        height: 2.h,
                                                        width: 0.3.w,
                                                        color: Colors.grey,
                                                      ),
                                                      1.w.widthBox,
                                                      Text(
                                                        "Voice Call",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      1.w.widthBox,
                                                      Container(
                                                        height: 2.h,
                                                        width: 0.3.w,
                                                        color: Colors.grey,
                                                      ),
                                                      1.w.widthBox,
                                                      Text(
                                                        "Video Call",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .cloud_circle_outlined),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                                SizedBox(height: 2.h),
                                                ListTile(
                                                  title: Text(
                                                    "Connect Profile",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),
                                                  subtitle: Row(
                                                    children: [
                                                      Text(
                                                        "Chat",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      1.w.widthBox,
                                                      Container(
                                                        height: 2.h,
                                                        width: 0.3.w,
                                                        color: Colors.grey,
                                                      ),
                                                      1.w.widthBox,
                                                      Text(
                                                        "Voice Call",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      1.w.widthBox,
                                                      Container(
                                                        height: 2.h,
                                                        width: 0.3.w,
                                                        color: Colors.grey,
                                                      ),
                                                      1.w.widthBox,
                                                      Text(
                                                        "Video Call",
                                                        style: TextStyle(
                                                          color: Colors.blue,
                                                          fontSize: 9.sp,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .cloud_circle_outlined),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ).paddingSymmetric(horizontal: 2.w),
                                ],
                              ),
                            ),
                          ).pSymmetric(h: 2.w);
                        }),
                    1.h.heightBox,
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return PhysicalModel(
                            elevation: 4,
                            color: Colors.black,
                            clipBehavior: Clip.none,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              //height: 49.h,
                              width: 96.w,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.bar_chart,
                                        size: 25,
                                      ),
                                      3.w.widthBox,
                                      Text(
                                        'Add your Business & Advertisement',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ).pSymmetric(h: 2.w, v: 2.w),
                                  ListTile(
                                    title: Text(
                                      "Add Your Business",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.add_a_photo_outlined),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Start Advertisement",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.legend_toggle_outlined),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Start Advertisement",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading:
                                        Icon(Icons.mobile_screen_share_rounded),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  Column(
                                    children: [
                                      ExpansionTile(
                                        title: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 25,
                                          color: Colors.transparent,
                                        ),
                                        backgroundColor: Colors.white,
                                        collapsedBackgroundColor: Colors.white,
                                        collapsedIconColor: Colors.black,
                                        iconColor: Colors.black,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.w, vertical: 0.h),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    "Entertainment",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),

                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .filter_b_and_w_sharp),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                                SizedBox(height: 2.h),
                                                ListTile(
                                                  title: Text(
                                                    "Entertainment",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),

                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .filter_b_and_w_sharp),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ).paddingSymmetric(horizontal: 2.w),
                                ],
                              ),
                            ),
                          ).pSymmetric(h: 2.w);
                        }),
                    1.h.heightBox,
                    ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return PhysicalModel(
                              elevation: 4,
                              color: Colors.black,
                              clipBehavior: Clip.none,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                //height: 49.h,
                                width: 96.w,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.edit_road_sharp,
                                        size: 25,
                                      ),
                                      3.w.widthBox,
                                      Text(
                                        'Edit Topic',
                                        style: TextStyle(
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ).pSymmetric(h: 2.w, v: 2.w),
                                  ListTile(
                                    title: Text(
                                      "Sports",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.sports_football),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "News",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.newspaper),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Entertainment",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 11.sp,
                                      ),
                                    ),

                                    //Text("A blog for learning flutter"),
                                    leading: Icon(Icons.filter_b_and_w_sharp),
                                    trailing:
                                        Icon(Icons.arrow_forward_ios_sharp),
                                    // Checkbox(
                                    //   value: true,
                                    //   onChanged: (value) {},
                                    // ),
                                    //tileColor: Colors.grey,

                                    //selected: true,
                                    dense: true,
                                    selectedTileColor: Colors.green[400],
                                    onTap: () {
                                      // setState(() {
                                      //
                                      // });
                                    },
                                  ),
                                  Column(
                                    children: [
                                      ExpansionTile(
                                        title: Icon(
                                          Icons.keyboard_arrow_down,
                                          size: 25,
                                          color: Colors.transparent,
                                        ),
                                        backgroundColor: Colors.white,
                                        collapsedBackgroundColor: Colors.white,
                                        collapsedIconColor: Colors.black,
                                        iconColor: Colors.black,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.w, vertical: 0.h),
                                            child: Column(
                                              children: [
                                                ListTile(
                                                  title: Text(
                                                    "Entertainment",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),

                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .filter_b_and_w_sharp),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                                SizedBox(height: 2.h),
                                                ListTile(
                                                  title: Text(
                                                    "Entertainment",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 11.sp,
                                                    ),
                                                  ),

                                                  //Text("A blog for learning flutter"),
                                                  leading: Icon(Icons
                                                      .filter_b_and_w_sharp),
                                                  trailing: Icon(Icons
                                                      .arrow_forward_ios_sharp),
                                                  // Checkbox(
                                                  //   value: true,
                                                  //   onChanged: (value) {},
                                                  // ),
                                                  //tileColor: Colors.grey,

                                                  //selected: true,
                                                  dense: true,
                                                  selectedTileColor:
                                                      Colors.green[400],
                                                  onTap: () {
                                                    // setState(() {
                                                    //
                                                    // });
                                                  },
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ).paddingSymmetric(horizontal: 2.w),
                                ]),
                              )).pSymmetric(h: 2.w);
                        }),
                  ],
                ),
              ),
            ),

            ///todo panorma........
            // Obx(
            //   () => Panorama(
            //     zoom: 1,
            //     animSpeed: 1.0,
            //     child: _profileSettingController.selectedImagePath.value != ''
            //         ? Image.file(
            //             File(_profileSettingController.selectedImagePath.value))
            //         : Image.asset('lib/assets/alian9.jpeg'),
            //   ),
            // ),

            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Skip').onTap(() {
                  // Get.back();
                }),
                Text('Next').onTap(() {
                  Get.to(() => PartnerProfile1());
                }),
              ],
            ).pSymmetric(h: 4.w),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
