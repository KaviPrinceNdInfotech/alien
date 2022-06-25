import 'package:alien/constant/colors/color.dart';
import 'package:alien/view/login_details_part/catagary/cat_controller/cata_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';

class RactangularButton extends StatelessWidget {
  RactangularButton({Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;

  CatController _catController = Get.put(CatController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.sp),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 6.h,
          width: 100.w,
          decoration: BoxDecoration(
              color: themeColor, borderRadius: BorderRadius.circular(3.sp)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
