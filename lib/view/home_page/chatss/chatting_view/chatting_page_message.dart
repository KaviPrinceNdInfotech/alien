import 'package:alien/constant/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class WhatsAppss extends StatelessWidget {
  const WhatsAppss({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: chat,
        leadingWidth: 18.w,
        leading: Row(
          children: [
            InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 15,
                )),
            3.w.widthBox,
            Container(
              height: 7.h,
              width: 7.w,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.lightGreenAccent, width: 2),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOXGwb9n6rcdsvkm9mg0swqhOOhmg1_TyjMg&usqp=CAU'),
                    fit: BoxFit.fitWidth),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ).pSymmetric(h: 2.w),
        centerTitle: false,
        title: Text(
          'Kumar Prince',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.sp,
          ),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.phone,
                size: 17,
              ),
              3.w.widthBox,
              Icon(
                Icons.videocam,
                size: 17,
              ),
            ],
          ).paddingSymmetric(horizontal: 3.w),
        ],
      ),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              SizedBox(
                height: 80.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hi......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hello......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hi......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hello......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hi......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hello......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hi......'),
                            ),
                          ),
                        ).p(8),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.teal.shade300,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 12.h,
                            width: 50.w,
                            decoration: BoxDecoration(
                              color: Colors.white24,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Hello......'),
                            ),
                          ),
                        ).p(8),
                      ),
                    ],
                  ),
                ),
              ),
              //Spacer(),
            ],
          ),
          Positioned(
            bottom: 2,
            child: Container(
              height: 8.h,
              width: 100.w,
              decoration: BoxDecoration(
                  //border: Border.all(color: chat),
                  //color: Colors.white,
                  //borderRadius: BorderRadius.circular(20),
                  ),
              child: Row(
                children: [
                  Container(
                    height: 8.h,
                    width: 85.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),

                      border: Border.all(color: chat),
                      color: Colors.white,
                      //borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.left,
                        //keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          prefixIcon: SizedBox(
                              width: 13.w,
                              height: 5.h,
                              child: Icon(Icons.supervised_user_circle)),

                          suffixIcon: Icon(
                            Icons.attachment,
                            color: chat,
                          ),
                          //isDense: true,

                          hintText: 'Type your message...',
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                          ),
                          // labelText: 'Enter Your Message',
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(20.0),
                          // ),
                        ),
                      ),
                    ),
                  ),
                  2.w.widthBox,
                  Icon(
                    Icons.send,
                    color: chat,
                  ),
                ],
              ),
            ),
          ),
          0.5.heightBox,
        ],
      ),
    );
  }
}
