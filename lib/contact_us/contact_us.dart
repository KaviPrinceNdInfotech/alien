import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            2.h.heightBox,
            Align(
              alignment: Alignment.center,
              child: Text(
                'Contact Us',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  wordSpacing: 2,
                  fontSize: 19.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            3.h.heightBox,
            PhysicalModel(
              elevation: 4,
              color: Colors.grey,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(150),
              ),
              child: Container(
                height: 60.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Color(0xff272727),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                  ),
                  border: Border.all(
                    width: 1,
                    color: Colors.white54,
                    //style: BorderStyle.solid,
                  ),
                ),
                child: Column(
                  children: [
                    7.h.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          4.w.widthBox,
                          Text(
                            '000-111-222-33',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    2.h.heightBox,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                          ),
                          4.w.widthBox,
                          Text(
                            'prince123@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.send_time_extension_outlined,
                            color: Colors.white,
                          ),
                          4.w.widthBox,
                          Text(
                            'prince123@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ).pSymmetric(h: 5.w),
              ),
            ).p(16),
          ],
        ),
      ),
    );
  }
}
