//import 'package:alien/view/services/servicess_category.dart';
import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/services/servicess_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'cat_controller/cata_controller.dart';

class CatagaryPage extends StatelessWidget {
  var size, width, height;
  CatagaryPage({Key? key}) : super(key: key);
  CatController _catController = Get.put(CatController());

  final List<String> catname = [
    'Earning',
    'News',
    'Local News',
    'Sports news',
    'News',
    'Carpool',
    'Earning',
    'News',
    'Local News',
    'Sports news',
    'News',
    'Carpool',
    'Earning',
    'News',
    'Local News',
    'Sports news',
    'News',
    'Carpool',
    'Earning',
    'News',
    'Local News',
    'Sports news',
    'News',
    'Carpool',
  ];

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
              AppTexts.topic,
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
                AppTexts.topic +
                    " " +
                    AppTexts.inee +
                    " " +
                    AppTexts.which +
                    " " +
                    AppTexts.you +
                    " " +
                    AppTexts.are +
                    " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.interestedd + " ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.you +
                    " " +
                    AppTexts.are +
                    " " +
                    AppTexts.interestedd +
                    " " +
                    AppTexts.inee,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
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
                itemCount: catname.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Obx(
                    () => Container(
                      height: 6.h,
                      width: width / 1,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: _catController.selectedIndex.value == index
                                  ? Colors.blue
                                  : Colors.black)),
                      child: Center(
                        child: Text(
                          catname[index],
                          style: TextStyle(
                            color: _catController.selectedIndex.value == index
                                ? Colors.blue
                                : Colors.black,
                            fontSize: 9.sp,
                          ),
                        ),
                      ),
                    ).onTap(() {
                      _catController.toggle(index);
                      if (index == 0) {
                        //Get.to(() => ManPage());
                        //Get.to(() => BestSeller());
                        //Get.to(() => WaterTracking());
                      } else if (index == 1) {
                        //Get.to(() => ManPage());
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
                Get.to(() => ServiceCatagaryPage());
              }),
            ],
          ).pSymmetric(h: 4.w),
        ],
      ),
    );
  }
}
