import 'package:alien/view/home_page/chatss/chatting_view/chatting_page_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      // color: Colors.blue,
      child: SizedBox(
        height: 100.h,
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return PhysicalModel(
                color: Colors.white24,
                elevation: 2,
                child: Container(
                  height: 10.h,
                  width: 100.w,
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.orange,
                        child: Center(child: Text('KP')),
                      ),
                      3.w.widthBox,
                      SizedBox(
                        width: 60.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Kumar Prince",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              "Hi this is kumar prince .......",
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 30.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Fri,12:34 pm",
                                style: TextStyle(
                                  color: Colors.green.shade900,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8.sp,
                                ),
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.blue,
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ).pSymmetric(h: 2.w),
                ).onTap(() {
                  Get.to(() => WhatsAppss());
                }),
              );
            }),
      ),
    );
  }
}
