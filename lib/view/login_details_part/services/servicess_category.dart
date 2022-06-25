import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/find_your_match/find_your_matchs.dart';
import 'package:alien/view/login_details_part/services/services_controller/services_cat_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ServiceCatagaryPage extends StatelessWidget {
  var height, width, size;
  ServiceCatagaryPage({Key? key}) : super(key: key);

  final List<String> servcatname = [
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

  ServiceCatContrioller _serviceCatContrioller =
      Get.put(ServiceCatContrioller());

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
              AppTexts.services,
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
                AppTexts.services +
                    " " +
                    AppTexts.you +
                    " " +
                    AppTexts.can +
                    " " +
                    AppTexts.avail +
                    AppTexts.withe +
                    " " +
                    AppTexts.others +
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
                itemCount: servcatname.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Obx(
                    () => Container(
                      height: 6.h,
                      width: width / 1,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color:
                                  _serviceCatContrioller.selectedIndex.value ==
                                          index
                                      ? Colors.blue
                                      : Colors.black)),
                      child: Center(
                        child: Text(
                          servcatname[index],
                          style: TextStyle(
                            color: _serviceCatContrioller.selectedIndex.value ==
                                    index
                                ? Colors.blue
                                : Colors.black,
                            fontSize: 9.sp,
                          ),
                        ),
                      ),
                    ).onTap(() {
                      _serviceCatContrioller.toggle(index);
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
                Get.to(() => AlienMatch());
              }),
            ],
          ).pSymmetric(h: 4.w),
        ],
      ),
    );
  }
}
