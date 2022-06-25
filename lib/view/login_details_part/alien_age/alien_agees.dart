//import 'package:alien/view/tall_height/tall_height_page.dart';
import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/tall_height/tall_height_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'age_controller.dart';

class AlienAge extends StatelessWidget {
  var size, height, width;
  AlienAge({Key? key}) : super(key: key);

  AlienAgeController _alienAgeController = Get.put(AlienAgeController());

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppTexts.alienss + " ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.age + " ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 13.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.preferencess + " ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13.sp,
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
                  AppTexts.you + " " + AppTexts.can + " " + AppTexts.set + " ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.age + " ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 8.sp,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  AppTexts.your +
                      " " +
                      AppTexts.age +
                      " " +
                      AppTexts.yrs +
                      " " +
                      AppTexts.preferences +
                      " " +
                      AppTexts.to +
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

                Text(
                  AppTexts.your + " " + AppTexts.profile + " ",
                  //'(yrs).preference to match with your profile',
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
              Icons.graphic_eq_rounded,
              size: 80,
            ),
            10.sp.heightBox,
            Obx(() => InkWell(
                  onTap: () {
                    _showModalAge(context);
                  },
                  child: Container(
                    height: 7.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: Vx.green100, width: 2),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: //"MM/YY   "
                        " ${_alienAgeController.year.value}  "
                                "      -      "
                                "${_alienAgeController.month.value}  "
                            .text
                            .size(12.sp)
                            .color(Colors.blue.shade900)
                            .make()
                            .px(2.w)
                            .objectCenter(),
                  ),
                )).pSymmetric(h: 10.w),
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
                  Get.to(() => TallHeight());
                }),
              ],
            ).pSymmetric(h: 7.w),
            Spacer(),
          ],
        ),
      ),
    );
  }

  void _showModalAge(BuildContext context) {
    List<int> subheightList = [for (var i = 18; i < 1000; i += 2) i];
    List<int> subheightList1 = [for (var i = 18; i < 1000; i += 2) i];

    List<String> heightList = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10",
      "11",
      "12",
    ];

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 50.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Alien Age".text.black.bold.size(13.sp).make().py(8),
              "".text.color(Colors.grey).size(13.sp).make(),
              4.h.heightBox,
              Stack(
                children: [
                  Positioned(
                    top: 8.h,
                    left: 7.w,
                    child: Container(
                      height: 7.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: Vx.black,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 25.h,
                        width: 30.w,
                        child: Obx(() => ListWheelScrollView.useDelegate(
                            diameterRatio: 2,
                            magnification: 1.5,
                            useMagnifier: true,
                            itemExtent: 4.h,
                            onSelectedItemChanged: (value) {
                              _alienAgeController
                                  .onyearChanged(subheightList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in subheightList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: _alienAgeController.year.value ==
                                                item
                                            ? Colors.white
                                            : Colors.black),
                                  )
                              ],
                            ))),
                      ),
                      SizedBox(
                        height: 22.h,
                        width: 30.w,
                        child: Obx(() => ListWheelScrollView.useDelegate(
                            diameterRatio: 2,
                            magnification: 1.5,
                            useMagnifier: true,
                            itemExtent: 5.h,
                            onSelectedItemChanged: (value) {
                              _alienAgeController
                                  .onmonthChanged(subheightList1[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in subheightList1)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color:
                                            _alienAgeController.month.value ==
                                                    item
                                                ? Colors.white
                                                : Colors.black),
                                  )
                              ],
                            ))),
                      ),
                    ],
                  ),
                ],
              ),
              /* 2.h.heightBox,
              Container(
                height: 5.h,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                    child: Text(
                  'Selected',
                  style: TextStyle(color: Colors.white, fontSize: 13.sp),
                )),
              ).onTap(() {
                print(registrationController.age.value);
                //Navigator.pop(context);
              }) */
            ],
          ).p12(),
        );
      },
    );
  }
}
