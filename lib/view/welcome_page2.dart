import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/nav_bar/navbar_persistant.dart';
import 'package:alien/view/profile_setting_part/profile_seetingsss/profile_settingss.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'login_details_part/login/login_page.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            color: Colors.brown,
            image: DecorationImage(
              image: AssetImage('lib/assets/alian1.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              3.h.heightBox,
              SizedBox(
                child: Column(
                  children: [],
                ),
              ),
              Spacer(),
              Column(
                children: [
                  Text(
                    'By continuing you agree with our',
                    style: TextStyle(
                      //decoration: TextDecoration.underline,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                    ),
                  ),
                  Text(
                    'Term & Conditions ',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue,
                      fontWeight: FontWeight.w400,
                      fontSize: 9.sp,
                    ),
                  ),
                  3.h.heightBox,
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 28.w,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 6.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'lib/assets/alianlanguage.png'),
                                  ),
                                ),
                              ).onTap(() {
                                Get.to(() => NavBar());
                              }),
                              Text(
                                'English',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                ),
                              ).onTap(() {
                                Get.to(() => ProfileSettingss());
                              }),
                              Icon(
                                Icons.arrow_drop_up_outlined,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Text(
                                AppTexts.lets +
                                    " " +
                                    " " +
                                    AppTexts.find +
                                    "  " +
                                    AppTexts.more +
                                    " ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 8.sp,
                                ),
                              ),
                              Text(
                                AppTexts.alien,
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 8.sp,
                                ),
                              ).onTap(() {
                                Get.to(() => LoginPage());
                              }),
                            ],
                          ),
                        ),
                      ],
                    ).pSymmetric(h: 3.w),
                  ),
                ],
              ),
              2.h.heightBox,
              2.h.heightBox,
            ],
          ).pSymmetric(h: 0.w),
        ),
      ),
    );
  }
}
