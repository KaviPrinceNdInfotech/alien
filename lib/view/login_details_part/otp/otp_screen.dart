import 'dart:async';

import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/login/login_email/login_email.dart';
import 'package:alien/widgets/rec_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'otp_input.dart';

class OtpVerificationScreen extends StatefulWidget {
  OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen>
    with TickerProviderStateMixin {
  String elapsedTime = '00:60';
  int _start = 60;
  List<TextEditingController> otp = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  late Timer _timer;
  String formatTime(int secs) {
    var minutes = ((secs % 3600) ~/ 60).toString().padLeft(2, '0');
    var seconds = (secs % 60).toString().padLeft(2, '0');
    return "$minutes:$seconds";
  }

  String result = '';
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_start < 1) {
        timer.cancel();
        setState(() {
          elapsedTime = '00:00';
        });
      } else {
        _start = _start - 1;
        setState(() {
          elapsedTime = formatTime(_start);
        });
        print(elapsedTime);
      }
    });
  }

  void otpdigits() {
    for (int i = 0; i < 4; i++) result += otp[i].text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ).onTap(() {
          Get.back();
        }),
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    3.h.heightBox,
                    Text(
                      AppTexts.enter +
                          " " +
                          AppTexts.verification +
                          " " +
                          AppTexts.code,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    1.h.heightBox,
                    Text(
                      AppTexts.kindly +
                          " " +
                          AppTexts.enter +
                          " " +
                          AppTexts.the +
                          " " +
                          "4-" +
                          AppTexts.digit +
                          " " +
                          AppTexts.sent +
                          " " +
                          AppTexts.to,
                      style: TextStyle(
                        wordSpacing: 1,
                        fontSize: 9.sp,
                        color: Colors.grey,
                      ),
                    ),
                    1.h.heightBox,

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        """+91-9978787878 """
                            .text
                            .size(3.sp)
                            .blue700
                            .make()
                            .centered(),
                        Icon(
                          Icons.edit,
                          size: 15,
                        ).onTap(() {
                          Get.back();
                        }),
                      ],
                    ),

                    18.h.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (int i = 0; i < 4; i++)
                          OtpInput(
                              controller: otp[i],
                              autoFocus: i == 0 ? true : false)
                      ],
                    ),

                    19.h.heightBox,
                    Container(
                      height: 6.h,
                      width: 85.w,
                      child: Center(
                        child: RactangularButton(
                            title: AppTexts.continuee,
                            onTap: () {
                              otpdigits();
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(result.toString())));
                              result = "";
                              //Get.to(() => RegisterPage());

                              ///Get.to(() => LoginMobilepage());
                              Get.to(() => LoginPageEmail());
                              // Navigator.pushNamed(context, signUp2ScreenRoute);
                            }),
                      ),
                    ),
                    // Container(
                    //         height: 7.h,
                    //         width: 85.w,
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.circular(10),
                    //             color: Color(0xFF2C4177),
                    //             boxShadow: [
                    //               BoxShadow(
                    //                 color: Colors.grey,
                    //                 blurRadius: 2,
                    //               )
                    //             ]),
                    //         child: "Continue"
                    //             .text
                    //             .white
                    //             .semiBold
                    //             .size(15.sp)
                    //             .makeCentered())
                    //     .onTap(() {
                    //   otpdigits();
                    //   ScaffoldMessenger.of(context).showSnackBar(
                    //       SnackBar(content: Text(result.toString())));
                    //   result = "";
                    //   Get.to(() => RegisterPage());
                    //   //Navigator.pushNamed(context, '/personal');
                    // }),
                    4.h.heightBox,
                    Column(
                      children: [
                        " $elapsedTime s"
                            .text
                            .gray700
                            .size(7.sp)
                            .makeCentered(),
                        1.h.heightBox,
                        "Resend Code "
                            .text
                            .blue700
                            .size(12.sp)
                            .makeCentered()
                            .onTap(() {
                          Get.back();
                        }),
                      ],
                    )
                  ]),
            ),
          ).px0(),
        ),
      ),
    );
  }
}
