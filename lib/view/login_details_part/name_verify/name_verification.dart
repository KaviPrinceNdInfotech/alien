import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/user_name/user_namee.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class VerifyName extends StatelessWidget {
  const VerifyName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ).onTap(() {
                  Get.back();
                }),
                Text(AppTexts.nextt).onTap(() {
                  Get.to(() => UserName());
                }),
              ],
            ).paddingSymmetric(horizontal: 4.w),
            4.h.heightBox,
            Text(
              'Your alien name.',
              style: TextStyle(
                fontSize: 15.sp,
                //color: Colors.blueAccent,
                fontWeight: FontWeight.w500,
              ),
            ),
            0.3.h.heightBox,
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppTexts.a +
                        " " +
                        AppTexts.anonymous +
                        " " +
                        AppTexts.identity +
                        " " +
                        AppTexts.that +
                        " " +
                        AppTexts.can +
                        " " +
                        AppTexts.define +
                        " " +
                        " ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    AppTexts.personally + " ",
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    AppTexts.you + " " + AppTexts.can,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9.sp,
                      //color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            0.5.heightBox,
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppTexts.choose +
                        " " +
                        AppTexts.to +
                        " " +
                        AppTexts.go +
                        " " +
                        AppTexts.anonymous +
                        " ," +
                        AppTexts.hide +
                        " " +
                        AppTexts.or +
                        " ",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    AppTexts.changee + " ",
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    AppTexts.it + " " + AppTexts.any + " " + AppTexts.time,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 9.sp,
                      //color: Colors.blueAccent,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            6.h.heightBox,
            Container(
              height: 20.h,
              width: 39.w,
              color: Colors.transparent,
              child: Image.asset(
                'lib/assets/alian9.jpeg',
                fit: BoxFit.fill,
              ),
            ),
            6.h.heightBox,
            TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: Icon(
                  Icons.error_outline,
                  size: 19.sp,
                  color: Colors.grey,
                ),
                isDense: true,
                prefixIconConstraints:
                    BoxConstraints(minWidth: 0, minHeight: 0),
                hintText: '  Alien Name',
                labelText: ' Alien Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ).pSymmetric(h: 4.w),
            12.h.heightBox,
            // Container(
            //   height: 6.h,
            //   width: 93.w,
            //   child: Center(
            //     child: RactangularButton(
            //         title: 'Continue',
            //         onTap: () {
            //           //Get.to(() => OtpVerificationEmail());
            //
            //           ///Get.to(() => LoginMobilepage());
            //           //Get.to(() => GymClass());
            //           // Navigator.pushNamed(context, signUp2ScreenRoute);
            //         }),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
