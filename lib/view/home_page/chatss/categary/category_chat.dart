import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class CatagaryChat extends StatelessWidget {
  const CatagaryChat({Key? key}) : super(key: key);

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
                color: Colors.white60,
                elevation: 7,
                child: Container(
                  height: 10.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    // gradient: gradient7,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.red,
                        child: Center(child: Text('Jobs')),
                      ),
                      3.w.widthBox,
                      SizedBox(
                        width: 60.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Jobs",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                              ),
                            ),
                            Text(
                              "You Can talk about jobs .......",
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
                  ).pSymmetric(h: 3.w),
                ).p(2),
              );
            }),
      ),
    );
  }
}
