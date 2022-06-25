import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({Key? key, required this.controller, required this.autoFocus})
      : super(key: key);
  final bool autoFocus;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 8.h,
        width: 18.w,
        decoration: BoxDecoration(
            border: Border.all(
              color: Vx.gray700,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: TextField(
          style: TextStyle(fontSize: 20.sp),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: InputBorder.none,
            counterText: '',
            focusColor: Colors.black,
          ),
          autofocus: autoFocus,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          controller: controller,
          maxLength: 1,
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          },
        ).centered(),
      ),
    );
  }
}
