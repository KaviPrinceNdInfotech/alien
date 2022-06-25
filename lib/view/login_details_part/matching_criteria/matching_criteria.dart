import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/alien_reader/alien_readerss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'matching_criteria_controller.dart';

class MatchingCriteriaPage extends StatelessWidget {
  var height, width, size;
  MatchingCriteriaPage({Key? key}) : super(key: key);

  final List<String> matchcatname = [
    'Friendly',
    'Emotional',
    'Foodie',
    'F',
    'Spiritual',
    'Positive',
    'Adventure',
    'Party Animal',
    'Party Animal',
    'Romantic ',
    'Open minded',
    'Confident',
    'Caring',
    'Traveller',
    'Mature',
    'Sexy',
    'Animal Lover',
    'Animal Lover',
    'J',
    'Creative',
    'Creative',
  ];

  final List<String> subcategary = [
    'Feeling lonely',
    'Feeling lonely',
    'Feeling lonely',
    'You can share a bond together',
    'You can share a bond together',
    'You can share a bond together',
    'We are under the same sky',
    'We are under the same sky',
    'We are under the same sky',
    'It will encourage you to date',
    'It will encourage you to date',
    'It will encourage you to date',
    'Short term relationship',
    'Short term relationship',
    'Short term relationship',
    'Searching for soulmate',
    'Searching for soulmate',
    'Searching for soulmate',
    'Life time journey together',
    'Life time journey together',
    'Life time journey together',
  ];

  MatchingCriteriaController _matchingCriteriaController =
      Get.put(MatchingCriteriaController());

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    print(height);
    print(width);
    return Scaffold(
      body: Column(
        children: [
          7.h.heightBox,
          Align(
            alignment: Alignment.center,
            child: Text(
              'Matching Criteria',
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
                    AppTexts.your +
                    " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Aliens.',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.whos + " " + AppTexts.and,
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
                AppTexts.match + " " + AppTexts.preferencess + " ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.on +
                    " " +
                    AppTexts.setting +
                    " " +
                    AppTexts.page +
                    " " +
                    AppTexts.looking +
                    " " +
                    AppTexts.forr,
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
          SizedBox(
            height: 58.h,
            child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 4 / 3,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  mainAxisExtent: 6.h + 0,
                ),
                itemCount: matchcatname.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Obx(
                    () => Container(
                      height: 6.h,
                      width: width / 1,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: _matchingCriteriaController
                                          .selectedIndex.value ==
                                      index
                                  ? Colors.blue
                                  : Colors.black)),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              matchcatname[index],
                              style: TextStyle(
                                color: _matchingCriteriaController
                                            .selectedIndex.value ==
                                        index
                                    ? Colors.blue
                                    : Colors.black,
                                fontSize: 9.sp,
                              ),
                            ),
                            Text(
                              subcategary[index],
                              style: TextStyle(
                                color: _matchingCriteriaController
                                            .selectedIndex.value ==
                                        index
                                    ? Colors.lightBlue.shade200
                                    : Colors.grey,
                                fontSize: 6.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).onTap(() {
                      _matchingCriteriaController.toggle(index);
                      if (index == 0) {
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
                    }),
                  );
                }),
          ).pSymmetric(h: 2.w),
          // 7.h.heightBox,
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     CatRactangularButton(title: 'Earning', onTap: () {}),
          //     1.w.widthBox,
          //     CatRactangularButton(title: 'Earning', onTap: () {}),
          //     1.w.widthBox,
          //     CatRactangularButton(title: 'Earning', onTap: () {}),
          //   ],
          // ).pSymmetric(v: 0.5.h),
          7.h.heightBox,
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
                Get.to(() => AlienReader());
              }),
            ],
          ).pSymmetric(h: 4.w),
        ],
      ),
    );
  }
}
