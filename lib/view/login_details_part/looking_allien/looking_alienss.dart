import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/alien_age/alien_agees.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'looking_allien_controller.dart';

class LookingAlien extends StatelessWidget {
  var size, height, width;
  LookingAlien({Key? key}) : super(key: key);
  LookingAlienController _lookingAlienController =
      Get.put(LookingAlienController());
  //AlienMatchController _alienMatchController = Get.put(AlienMatchController());

  final List<String> text1 = [
    'Friend',
    'Online friend',
    'Long Distance Relationship',
    'Blind date',
    'Casual Relationship',
    'Serious Relationship',
    'Marriage',
  ];

  final List<String> text2 = [
    'Searching For new alien friend',
    'You can share a bond together',
    'You can be on other planet but lives under the same sky',
    'it will encourage you to date differently',
    'Short term relationship small Sharing',
    'Searching for soulmate to travel on other planet',
    'want to increase alien population together',
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            7.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Text(
                AppTexts.looking + " " + AppTexts.alienss + " " + AppTexts.forr,
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
                  AppTexts.you +
                      " " +
                      AppTexts.can +
                      " " +
                      AppTexts.set +
                      " " +
                      AppTexts.your,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.visibility,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.whos,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),

                //fontWeight: FontWeight.bol
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.and + " ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.match + " " + AppTexts.preferences + " ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.on + " " + AppTexts.setting + " " + AppTexts.page,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),

                //fontWeight: FontWeight.bol
              ],
            ),
            2.h.heightBox,
            Icon(
              FontAwesomeIcons.searchengin,
              size: 60,
            ),
            2.h.heightBox,
            SizedBox(
              height: 60.h,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: text1.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        _lookingAlienController.toggle(index);
                      },
                      child: Obx(
                        () => Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Container(
                            width: double.infinity,
                            height: 6.h,
                            decoration: BoxDecoration(
                              color:
                                  _lookingAlienController.selectedIndex.value ==
                                          index
                                      ? Colors.transparent
                                      : Colors.transparent,
                              border: Border.all(
                                  color: _lookingAlienController
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
                                        color: _lookingAlienController
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
                                      color: _lookingAlienController
                                                  .selectedIndex.value ==
                                              index
                                          ? Colors.blue
                                          : Colors.transparent,
                                      splashColor: Colors.purple,
                                      onPressed: () {
                                        _lookingAlienController.toggle(index);

                                        if (index == 0) {
                                          _lookingAlienController.toggle(index);
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
                                  _lookingAlienController.toggle(index);
                                }).p(1),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                Text('Next').onTap(() {
                  Get.to(() => AlienAge());
                }),
              ],
            ).pSymmetric(h: 4.w),
          ],
        ),
      ),
    );
  }
}
