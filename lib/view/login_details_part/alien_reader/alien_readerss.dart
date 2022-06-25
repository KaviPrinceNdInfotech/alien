import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/profile_setting_part/profile_seetingsss/profile_settingss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'alien_reader_controller.dart';

class AlienReader extends StatelessWidget {
  AlienReader({Key? key}) : super(key: key);

  AlienReaderController _alienReaderController =
      Get.put(AlienReaderController());

  final List<String> _selectedAnimals = [
    "lion",
    "lion",
    "lion",
    "lion",
    "lion",
    "lion",
    "lion",
  ];
  final List<String> text1 = [
    'Nearby',
    'Faraway',
    'City',
    'State',
    'Country',
    'Planets',
    'All Aliens',
  ];
  final List<String> text2 = [
    'Alien lives  near by',
    'Alien lives outside of 10 km range',
    'Alien lives in city',
    'Alien lives in state',
    'Alien lives in country',
    'Alien lives in Planet',
    'Alien lives in Universe',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          7.h.heightBox,
          Align(
            alignment: Alignment.center,
            child: Text(
              AppTexts.alienss + " " + AppTexts.radar + " ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.you + " " + AppTexts.can + " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.set + " ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.yourr + " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.distance,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.preferencess +
                    " " +
                    AppTexts.to +
                    " " +
                    AppTexts.meet +
                    " " +
                    AppTexts.or +
                    " " +
                    AppTexts.match +
                    " " +
                    AppTexts.withe +
                    " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              //fontWeight: FontWeight.bol
            ],
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.other + " " + AppTexts.alien,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              //fontWeight: FontWeight.bol
            ],
          ),
          6.h.heightBox,
          Column(
            children: [
              2.h.heightBox,
              SizedBox(
                height: 60.h,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: text1.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          _alienReaderController.toggle(index);
                        },
                        child: Obx(
                          () => Padding(
                            padding: EdgeInsets.all(6.0),
                            child: Container(
                              width: double.infinity,
                              height: 6.h,
                              decoration: BoxDecoration(
                                color: _alienReaderController
                                            .selectedIndex.value ==
                                        index
                                    ? Colors.transparent
                                    : Colors.transparent,
                                border: Border.all(
                                    color: _alienReaderController
                                                .selectedIndex.value ==
                                            index
                                        ? Colors.blue
                                        : Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 4.2.h,
                                    width: 13.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: _alienReaderController
                                                      .selectedIndex.value ==
                                                  index
                                              ? Colors.blue
                                              : Colors.black),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        icon: Center(
                                          child: Icon(
                                            Icons.check,
                                          ),
                                        ),
                                        iconSize: 15,
                                        color: _alienReaderController
                                                    .selectedIndex.value ==
                                                index
                                            ? Colors.blue
                                            : Colors.transparent,
                                        splashColor: Colors.purple,
                                        onPressed: () {
                                          _alienReaderController.toggle(index);

                                          if (index == 0) {
                                            _alienReaderController
                                                .toggle(index);
                                            // Get.to(() => CatagaryPage());
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WaterTracking());
                                          } else if (index == 1) {
                                            //Get.to(() => DateOfBirth());
                                          } else if (index == 2) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 3) {
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 4) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 5) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 6) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 7) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          } else if (index == 8) {
                                            //Get.to(() => BestSeller());
                                            //Get.to(() => WalkTracking());
                                          }
                                        },
                                      ),
                                    ),
                                  ).onTap(() {
                                    _alienReaderController.toggle(index);
                                  }).p(1),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        text1[index],
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        text2[index],
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 7.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              1.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Back').onTap(() {
                    Get.back();
                  }),
                  Text('Skip').onTap(() {
                    //Get.back();
                  }),
                  Text('Next').onTap(() {
                    Get.to(() => ProfileSettingss());
                  }),
                ],
              ).pSymmetric(h: 4.w),
              // MultiSelectChipDisplay(
              //   chipWidth: double.infinity,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(1),
              //       color: Colors.white),
              //   items:
              //       _selectedAnimals.map((e) => MultiSelectItem(e, e)).toList(),
              //   onTap: (value) {
              //     // setState(() {
              //     //   _selectedAnimals.remove(value);
              //     // });
              //   },
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
