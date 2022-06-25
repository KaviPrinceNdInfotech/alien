import 'package:alien/view/login_details_part/otp/otp_screen.dart';
import 'package:alien/widgets/rec_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('').onTap(() {
                  Get.back();
                }),
                Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                  ),
                ).onTap(() {
                  Get.to(() => OtpVerificationScreen());
                }),
              ],
            ).pSymmetric(h: 4.w),
            4.h.heightBox,
            Icon(
              Icons.account_circle_outlined,
              size: 85.sp,
            ),
            4.h.heightBox,
            Container(
              height: 8.h,
              width: 100.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'India',
                    style: TextStyle(color: Colors.black, fontSize: 12.sp),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.black,
                  )
                ],
              ).pSymmetric(h: 3.w),
            ),
            4.h.heightBox,
            TextField(
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              //keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: SizedBox(
                  width: 13.w,
                  height: 5.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '+91',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        height: 2.5.h,
                        width: 0.5.w,
                      )
                    ],
                  ).pSymmetric(h: 2.w),
                ),
                isDense: true,
                prefixIconConstraints:
                    BoxConstraints(minWidth: 0, minHeight: 0),
                hintText: 'Phone or Email',
                hintStyle: TextStyle(
                  fontSize: 12.sp,
                ),
                labelText: 'Phone or Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            5.h.heightBox,
            Text(
              """We will you send a text with verification code. Message and data rates
            may apply. The verified phone number can be used to log in.""",
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            Text(
              """Learn What happens if number changes""",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 8.sp,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 9.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage(
                            'lib/assets/google.png',
                          ),
                          fit: BoxFit.fitHeight)),
                ),
                Container(
                  height: 9.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://img.freepik.com/free-vector/meta-icon-social-media-flat-graphic-vector-3-november-2021-bangkok-thailand_53876-157871.jpg?w=360'),
                      )),
                ),
                Container(
                  height: 9.h,
                  width: 17.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfm-UUgGwx08GdkT8v9mp4dpWYq5i0d_Arxg&usqp=CAU'),
                      )),
                ),
              ],
            ),
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Next').onTap(() {
                  Get.to(() => OtpVerificationScreen());
                }),
              ],
            ).pSymmetric(h: 4.w),
            4.h.heightBox,
            Container(
              height: 6.h,
              width: 93.w,
              child: Center(
                child: RactangularButton(
                    title: 'Continue',
                    onTap: () {
                      Get.to(() => OtpVerificationScreen());

                      ///Get.to(() => LoginMobilepage());
                      //Get.to(() => GymClass());
                      // Navigator.pushNamed(context, signUp2ScreenRoute);
                    }),
              ),
            ),
            Spacer(),
            2.h.heightBox,
          ],
        ).p(12),
      ),
    );
  }
}
