import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/controllers/login_detail_controller/login_controller.dart';
import 'package:alien/view/login_details_part/date_birth/date_of_birth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class GenderSelection extends StatelessWidget {
  GenderSelection({Key? key}) : super(key: key);

  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            7.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Text(
                AppTexts.you + " " + AppTexts.are + " " + AppTexts.aa,
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
                AppTexts.gender +
                    " " +
                    AppTexts.cant +
                    " " +
                    AppTexts.be +
                    " " +
                    AppTexts.changed +
                    " " +
                    AppTexts.en +
                    " " +
                    AppTexts.profile,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            6.h.heightBox,
            Icon(
              FontAwesomeIcons.transgender,
              size: 70.sp,
            ),
            6.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Obx(
                      () => Container(
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: _loginController.selectedGender.value ==
                                  gender.male
                              ? Colors.transparent
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Obx(
                          () => Image.asset(
                            'lib/assets/man-icon-png-29.png',
                            color: _loginController.selectedGender.value ==
                                    gender.male
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ).onTap(() {
                        _loginController.selectedGender.value = gender.male;
                      }),
                    ),
                    Obx(
                      () => Text(
                        AppTexts.male,
                        style: TextStyle(
                          color: _loginController.selectedGender.value ==
                                  gender.male
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                2.w.widthBox,
                Column(
                  children: [
                    Obx(
                      () => Container(
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: _loginController.selectedGender.value ==
                                  gender.female
                              ? Colors.transparent
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Obx(
                          () => Image.asset(
                            'lib/assets/man-icon-png-29.png',
                            color: _loginController.selectedGender.value ==
                                    gender.female
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ).onTap(() {
                        _loginController.selectedGender.value = gender.female;
                      }),
                    ),
                    Obx(
                      () => Text(
                        AppTexts.female,
                        style: TextStyle(
                          color: _loginController.selectedGender.value ==
                                  gender.female
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                2.w.widthBox,
                Column(
                  children: [
                    Obx(
                      () => Container(
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: _loginController.selectedGender.value ==
                                  gender.other
                              ? Colors.transparent
                              : Colors.transparent,
                          shape: BoxShape.circle,
                        ),
                        child: Obx(
                          () => Image.asset(
                            'lib/assets/man-icon-png-29.png',
                            color: _loginController.selectedGender.value ==
                                    gender.other
                                ? Colors.blue
                                : Colors.grey,
                          ),
                        ),
                      ).onTap(() {
                        _loginController.selectedGender.value = gender.other;
                      }),
                    ),
                    Obx(
                      () => Text(
                        AppTexts.other,
                        style: TextStyle(
                          color: _loginController.selectedGender.value ==
                                  gender.other
                              ? Colors.blue
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            12.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Next').onTap(() {
                  Get.to(() => DateOfBirth());
                }),
              ],
            ).pSymmetric(h: 5.w),
          ],
        ),
      ),
    );
  }
}
