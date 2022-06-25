import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CatRactangularButton extends StatelessWidget {
  const CatRactangularButton(
      {Key? key, required this.title, required this.onTap})
      : super(key: key);
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.sp),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 4.h,
          width: 26.w,
          decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(0.sp)),
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 10.sp, color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
