import 'package:alien/view/partner_profile/partner_profile_3/partner_profile3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PartnerProfile2 extends StatelessWidget {
  PartnerProfile2({Key? key}) : super(key: key);

  final List<String> page2Text = [
    'Car Pool',
    'Taxi',
    'Food Service',
    'Plumber',
    'Hair Cut',
    'Electronics Repair',
    'Car Repair',
  ];

  final List<String> page2text2 = [
    'Services',
    'Male Only',
    'Female only',
    'Other',
    'All',
  ];
  final List<String> page2Text3 = [
    'Days & Time',
    'Morning',
    'To',
  ];

  final List<String> page2Text4 = [
    'Mon',
    'Tue',
    'Wed',
    'Thr',
    'Fri',
    'Sat',
    'Sun',
    "All\n"
        "day",
  ];
  final List<String> page2Text5 = [
    'Location',
    'Delhi',
    'To',
    'Gurgaon',
  ];

  final List<String> page2Text6 = [
    '12:00',
    'To',
    '11:59',
  ];

  final List<String> page2Text7 = [
    'Range',
    'Near Me',
    'Delhi',
    'Delhi/NCR',
    'States',
    'All India'
  ];
  final List<String> page2Text8 = [
    'Location',
    'Delhi',
    'To',
    'Gurgaon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            3.h.heightBox,
            Row(
              children: [
                Container(
                  height: 6.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                      child: Text(
                    'Manufacturing Partner',
                    style: TextStyle(
                      fontSize: 10.sp,
                    ),
                  ).p(8)),
                ),
                1.w.widthBox,
                Container(
                  height: 6.h,
                  width: 53.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: page2Text.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Center(
                          child: Text(
                            '${page2Text[index]} , ',
                            style: TextStyle(
                              fontSize: 9.sp,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 6.h,
                width: 40.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'Sales Partner',
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ).p(8)),
              ),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 6.h,
                width: 40.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                    child: Text(
                  'Service Partner',
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ).p(8)),
              ),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                width: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Center(
                    child: Text(
                  'car Pool with fellow Alien',
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ).p(8)),
              ),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 5.h,
                width: 30.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(0),
                ),
                child: Center(
                    child: Text(
                  'Alien Taxi',
                  style: TextStyle(
                    fontSize: 10.sp,
                  ),
                ).p(8)),
              ),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Container(
              height: 5.h,
              //width: 53.w,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: page2text2.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 4.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        page2text2[index],
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ).p(4)),
                    ).pSymmetric(h: 0.5.w);
                  }),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              //width: 53.w,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: page2Text8.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 4.h,
                      //width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        page2Text8[index],
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ).pSymmetric(h: 3.w)),
                    ).pSymmetric(h: 0.5.w);
                  }),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            SizedBox(
              height: 5.h,
              child: ListView.builder(
                  itemCount: page2Text4.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext ctx, int index) {
                    return PhysicalModel(
                      color: Colors.grey.shade300,
                      elevation: 3,
                      shape: BoxShape.circle,
                      //shadowColor: Colors.grey,
                      child: Container(
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //border: Border.all(color: Colors.black)
                        ),
                        child: Center(
                            child: Text(
                          page2Text4[index],
                          style: TextStyle(
                            fontSize: 7.sp,
                          ),
                        )),
                      ),
                    ).p(2);
                  }),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Container(
              height: 5.h,
              //width: 53.w,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 4.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        'Services',
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ).p(4)),
                    ).pSymmetric(h: 0.5.w);
                  }),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              //width: 53.w,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: page2Text5.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 4.h,
                      //width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        page2Text5[index],
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ).pSymmetric(h: 3.w)),
                    ).pSymmetric(h: 0.5.w);
                  }),
            ).pSymmetric(h: 3.w),
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 4.h,
                  width: 47.w,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: 5.h,
                    width: 45.w,
                    //width: 53.w,
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   color: Colors.black,
                        // ),
                        ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: page2Text6.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            height: 4.h,
                            //width: 30.w,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(0),
                            ),
                            child: Center(
                                child: Text(
                              page2Text6[index],
                              style: TextStyle(
                                fontSize: 10.sp,
                              ),
                            ).pSymmetric(h: 3.w)),
                          ).pSymmetric(h: 0.5.w);
                        }),
                  ).pSymmetric(h: 3.w),
                ),
              ],
            ),
            2.h.heightBox,
            Container(
              height: 5.h,
              width: 100.w,
              //width: 53.w,
              decoration: BoxDecoration(
                  // border: Border.all(
                  //   color: Colors.black,
                  // ),
                  ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: page2Text7.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      height: 4.h,
                      //width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Center(
                          child: Text(
                        page2Text7[index],
                        style: TextStyle(
                          fontSize: 10.sp,
                        ),
                      ).pSymmetric(h: 3.w)),
                    ).pSymmetric(h: 0.5.w);
                  }),
            ).pSymmetric(h: 3.w),
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
                  Get.to(() => PartnerProfile3());
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
