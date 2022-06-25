//import 'package:alien/view/catagary/catagary_page.dart';
import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/catagary/catagary_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'date_birth_controller/date_birth_controllrerr.dart';

class DateOfBirth extends StatelessWidget {
  DateOfBirth({Key? key}) : super(key: key);
  BirthController _birthController = Get.put(BirthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            7.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Text(
                AppTexts.whats +
                    " " +
                    AppTexts.your +
                    " " +
                    AppTexts.on +
                    " " +
                    AppTexts.earth,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            1.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Text(
                AppTexts.information +
                    " " +
                    AppTexts.help +
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
                    AppTexts.quickly,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            6.h.heightBox,
            Icon(
              FontAwesomeIcons.cakeCandles,
              size: 70.sp,
            ),
            15.sp.heightBox,
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
                    child:
                        "${_birthController.date.value}    ${_birthController.month.value}    ${_birthController.year.value}"
                            .text
                            .size(18.sp)
                            .color(Colors.blue.shade900)
                            .make()
                            .px(2.w)
                            .objectCenter(),
                  ),
                )).pSymmetric(h: 5.w),
            35.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Next').onTap(() {
                  Get.to(() => CatagaryPage());
                }),
              ],
            ).pSymmetric(h: 5.w),
          ],
        ),
      ),
    );
  }

  void _showModalAge(BuildContext context) {
    List<int> yearList = [for (var i = 1900; i < 3100; i++) i];
    List<String> monthList = [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "Jul",
      "Aug",
      "Sep",
      "Oct",
      "Nov",
      "Dec"
    ];
    List<String> dateList = [
      "01",
      "02",
      "03",
      "04",
      "05",
      "06",
      "07",
      "08",
      "09",
      "10",
      "11",
      "01",
      "12",
      "13",
      "14",
      "15",
      "16",
      "17",
      "18",
      "19",
      "20",
      "21",
      "22",
      "23",
      "24",
      "25",
      "26",
      "27",
      "28",
      "29",
      "30",
      "31",
    ];
    //List<int> dateList = [for (var i = 01; i < 31; i++) i];
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
              "Age".text.black.bold.size(13.sp).make().py(8),
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
                              _birthController.onyearChanged(yearList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in yearList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color:
                                            _birthController.year.value == item
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
                              _birthController.onmonthChanged(monthList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in monthList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color:
                                            _birthController.month.value == item
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
                              _birthController.ondateChanged(dateList[value]);
                            },
                            childDelegate: ListWheelChildLoopingListDelegate(
                              children: [
                                for (var item in dateList)
                                  Text(
                                    item.toString(),
                                    style: TextStyle(
                                        fontSize: 16.sp,
                                        color:
                                            _birthController.date.value == item
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
