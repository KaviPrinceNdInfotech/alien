import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ReqestPage extends StatelessWidget {
  const ReqestPage({Key? key}) : super(key: key);

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
                    color: Colors.green,
                    // gradient: gradient7,
                  ),
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
                              "Kavi Singh",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.sp,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "India",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.sp,
                                  ),
                                ),
                                Icon(
                                  Icons.circle,
                                  size: 4,
                                  color: Colors.purple,
                                ),
                                Text(
                                  "Mon 11:12",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 7.sp,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: PhysicalModel(
                          elevation: 5,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            height: 5.h,
                            width: 10.w,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Follow",
                                  style: TextStyle(
                                    color: Colors.green.shade900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 8.sp,
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                  size: 16,
                                )
                              ],
                            ),
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
