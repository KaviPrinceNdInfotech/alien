import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/select_gender/gender_selection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class UserName extends StatelessWidget {
  const UserName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            2.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                ).onTap(() {
                  Get.back();
                }),
                Text("Skip").onTap(() {
                  Get.to(() => GenderSelection());
                }),
              ],
            ).pSymmetric(h: 1.w),
            2.h.heightBox,
            Icon(
              Icons.supervised_user_circle_outlined,
              size: 45,
            ),
            4.h.heightBox,
            Text(
              AppTexts.user + " " + AppTexts.name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
            1.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  " " + 'unique' + " ",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'digital profile on earth',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            2.h.heightBox,
            SizedBox(
              height: 4.h,
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 2.h,
                      width: 30.w,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          'prince@',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8.sp,
                          ),
                        ),
                      ),
                    ).pSymmetric(h: 2.w);
                  }),
            ),
            4.h.heightBox,
            Container(
              height: 6.h,
              width: 100.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.error_outline,
                    color: Colors.black,
                  ),
                  hintText: ' User Name',
                  border: InputBorder.none,
                ),

                // keyboardAppearance: ,
              ),
            ),
            2.h.heightBox,
            Spacer(),
            Align(
              alignment: Alignment.centerRight,
              child: Text(AppTexts.nextt).onTap(() {
                Get.to(() => GenderSelection());
              }),
            ),
            2.h.heightBox,
          ],
        ).pSymmetric(h: 5.w),
      ),
    );
  }
}
