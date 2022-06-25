//import 'package:alien/view/otp/otp_via_email.dart';
import 'package:alien/view/login_details_part/otp/otp_via_email.dart';
import 'package:alien/widgets/rec_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginPageEmail extends StatelessWidget {
  const LoginPageEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            7.h.heightBox,
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
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isDense: true,
                prefixIconConstraints:
                    BoxConstraints(minWidth: 0, minHeight: 0),
                hintText: '  Email ID',
                labelText: 'Email Id',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            6.h.heightBox,
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
                            'http://cdn.onlinewebfonts.com/svg/img_262951.png'),
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
            3.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Next'),
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
                      Get.to(() => OtpVerificationEmail());

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
