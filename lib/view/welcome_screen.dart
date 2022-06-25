import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/profile_setting_part/profile_seetingsss/profile_settingss.dart';
import 'package:alien/view/welcome_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'nav_bar/navbar_persistant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
              image: AssetImage('lib/assets/alian4.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              3.h.heightBox,
              SizedBox(
                child: Column(
                  children: [
                    Text(
                      'Alien',
                      style: TextStyle(
                        letterSpacing: 2,
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    2.h.heightBox,
                    Text(
                      'Trillion ways to connect with your Destinety',
                      style: TextStyle(
                        letterSpacing: 0,
                        wordSpacing: 1,
                        color: Colors.white,
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
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
                          width: 27.w,
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
                                Get.to(() => WelcomeScreen2());
                              }),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              2.h.heightBox,
            ],
          ).pSymmetric(h: 3.w),
        ).onTap(() {
          Get.to(() => WelcomeScreen2());
        }),
      ),
    );
  }
}
