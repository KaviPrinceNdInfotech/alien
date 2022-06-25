import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/partner_profile/partner_profile_controllers/partner_profile1_controllers.dart';
import 'package:alien/view/partner_profile/partner_profile_p2/partner_profile_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PartnerProfile1 extends StatelessWidget {
  PartnerProfile1({Key? key}) : super(key: key);
  Partnerprofile1Controller _partnerprofile1controller =
      Get.put(Partnerprofile1Controller());

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
                      Obx(
                        () => Switch(
                            activeColor: Colors.green,
                            inactiveThumbColor: Colors.black,
                            onChanged: (val) =>
                                _partnerprofile1controller.toggle(),
                            value: _partnerprofile1controller.on.value),
                      ),
                      Obx(() => Text(
                            _partnerprofile1controller.on.value
                                ? AppTexts.online
                                : _partnerprofile1controller.off.value
                                    ? AppTexts.offline
                                    : '',
                            style: TextStyle(
                              fontSize: 8.sp,
                              color: _partnerprofile1controller.on.value
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
            4.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 7.h,
                width: 37.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.clean_hands,
                      size: 25,
                    ),
                    Text(
                      AppTexts.Partner + " " + AppTexts.Profile,
                      style: TextStyle(
                        fontSize: 10.sp,
                      ),
                    ).onTap(() {
                      Get.to(() => PartnerProfile2());
                    })
                  ],
                ).pSymmetric(h: 3.w),
              ),
            ).pSymmetric(h: 2.w),
            4.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 5.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Center(
                    child: Text(
                      AppTexts.Choose + " " + AppTexts.Profile,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10.sp,
                      ),
                    ),
                  )),
            ).pSymmetric(h: 2.w),
            2.h.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 5.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: Center(
                    child: Text(
                      AppTexts.Days + " " + AppTexts.and + " " + AppTexts.Time,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                      ),
                    ),
                  )),
            ).pSymmetric(h: 2.w),
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        'Mon',
                        style: TextStyle(
                          fontSize: 8.sp,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ).pSymmetric(h: 2.w),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 7.h,
                    width: 12.5.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.mail)),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 7.h,
                    width: 12.5.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.video_call)),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 7.h,
                    width: 12.5.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.call)),
                  ),
                ),
                PhysicalModel(
                  elevation: 3,
                  color: Colors.grey,
                  shape: BoxShape.circle,
                  child: Container(
                    height: 7.h,
                    width: 12.5.w,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      shape: BoxShape.circle,
                    ),
                    child: Center(child: Icon(Icons.cloud_circle)),
                  ),
                ),
              ],
            ).pSymmetric(h: 2.w),
            4.h.heightBox,
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
                  Get.to(() => PartnerProfile2());
                }),
              ],
            ).pSymmetric(h: 4.w),
            4.h.heightBox,
          ],
        ),
      ),
    );
  }
}
