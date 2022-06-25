import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/matching_criteria/matching_criteria.dart';
import 'package:alien/view/login_details_part/tall_height/tall_height_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class TallHeight extends StatelessWidget {
  TallHeight({Key? key}) : super(key: key);
  HeightController _heightController = Get.put(HeightController());
  int _itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          7.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.how +
                    " " +
                    AppTexts.tall +
                    " " +
                    AppTexts.are +
                    " " +
                    AppTexts.quest,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '',
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
                AppTexts.information +
                    " " +
                    AppTexts.helps +
                    " " +
                    AppTexts.us +
                    " " +
                    AppTexts.to +
                    " " +
                    AppTexts.provide +
                    " " +
                    AppTexts.you +
                    " " +
                    AppTexts.best +
                    " " +
                    AppTexts.result +
                    " " +
                    AppTexts.quickly +
                    " ",
                //'Information helps us to provide you best ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                '',
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
            Icons.height,
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
                      "${_heightController.month.value}"
                              " (${_heightController.year.value}cm) "
                          .text
                          .size(18.sp)
                          .color(Colors.grey.shade900)
                          .make()
                          .px(2.w)
                          .objectCenter(),
                ),
              )).pSymmetric(h: 24.w),
          10.sp.heightBox,
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
                Get.to(() => MatchingCriteriaPage());
              }),
            ],
          ).pSymmetric(h: 7.w),
          Spacer(),
        ],
      ),
    );
  }

  void _showModalAge(BuildContext context) {
    List<String> heightList = [
      "3'0",
      "3'1",
      "3'2",
      "3'3",
      "3'4",
      "3'5",
      "3'6",
      "3'8",
      "3'9",
      "4'0",
      "4'1",
      "4'2",
      "4'3",
      "4'4",
      "4'5",
      "4'6",
      "4'6",
      "4'7",
      "4'8",
      "4'9",
      "5'0",
      "4'1",
      "4'2",
      "4'3",
      "4'4",
      "4'5",
      "4'6",
      "4'6",
      "4'7",
      "4'8",
      "4'9",
      "5'0",
    ];
    List<int> subheightList = [for (var i = 92; i < 305; i++) i];

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
              "Height".text.black.bold.size(13.sp).make().py(8),
              "".text.color(Colors.grey).size(13.sp).make(),
              5.h.heightBox,
              Stack(
                children: [
                  Positioned(
                    top: 8.h,
                    left: 5.w,
                    child: Container(
                      height: 6.h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: Vx.black,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 22.h,
                        width: 30.w,
                        child: Obx(() => ListWheelScrollView.useDelegate(
                            diameterRatio: 2,
                            magnification: 1.5,
                            useMagnifier: true,
                            itemExtent: 5.h,
                            onSelectedItemChanged: (value) {
                              _heightController
                                  .onmonthChanged(heightList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in heightList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color: _heightController.month.value ==
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
                              _heightController
                                  .onyearChanged(subheightList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in subheightList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color:
                                            _heightController.year.value == item
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
