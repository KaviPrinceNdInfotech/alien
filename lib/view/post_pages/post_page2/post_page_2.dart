import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/nav_bar/navbar_persistant.dart';
import 'package:alien/view/post_pages/post_page2/post_page2_controller.dart';
import 'package:alien/view/post_pages/post_page2/tabs_view/match_profile.dart';
import 'package:alien/view/post_pages/post_page2/tabs_view/personal.dart';
import 'package:alien/view/post_pages/post_page2/tabs_view/view_settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PostPage2 extends StatelessWidget {
  PostPage2({Key? key}) : super(key: key);
  PostPage2Controller _postPage2Controller = Get.put(PostPage2Controller());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            5.h.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PhysicalModel(
                  color: Colors.grey.shade300,
                  elevation: 3,
                  shape: BoxShape.circle,
                  //shadowColor: Colors.grey,
                  child: Container(
                    height: 5.h,
                    width: 9.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      //border: Border.all(color: Colors.black)
                    ),
                    child: Center(
                        child: Text(
                      'Photo',
                      style: TextStyle(
                        fontSize: 7.sp,
                      ),
                    )),
                  ),
                ),
                Container(
                  height: 4.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      AppTexts.Trillion + " " + AppTexts.Connect,
                      style: TextStyle(
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.savings).onTap(() {}),
                    PopupMenuButton(
                      child: Text(
                        AppTexts.Felling,
                        style: TextStyle(
                          fontSize: 9.sp,
                        ),
                      ),
                      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                        const PopupMenuItem(
                          child: Text(
                            'Happy',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            'Sad',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            'Guilty',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                        const PopupMenuItem(
                          child: Text(
                            'Hungry',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ).pSymmetric(h: 2.w),
              ],
            ).pSymmetric(h: 2.w),
            1.h.heightBox,
            TabBar(
              indicatorColor: Colors.black,
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(
                color: Colors.black,
              )),
              labelColor: Colors.black,
              unselectedLabelColor: Colors.blue,
              labelPadding:
                  const EdgeInsets.only(bottom: 2, top: 0, right: 2, left: 2),
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: const TextStyle(fontWeight: FontWeight.w500),
              indicatorPadding: const EdgeInsets.only(top: 0, bottom: 0),
              tabs: [
                Container(
                    height: 25.0,
                    width: 25.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Personal Profile',
                      style: TextStyle(
                        fontSize: 9.sp,
                      ),
                    ))),
                Container(
                    height: 25.0,
                    width: 25.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'Match Profile',
                      style: TextStyle(
                        fontSize: 9.sp,
                      ),
                    ))),
                Container(
                    height: 25.0,
                    width: 23.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                        child: Text(
                      'View Control',
                      style: TextStyle(
                        fontSize: 9.sp,
                      ),
                    ))),
              ],
            ),
            SizedBox(
              height: 78.h,
              child: TabBarView(
                children: <Widget>[
                  PersonalProfile(),
                  MatchProfile(),
                  ViewProfile(),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Back').onTap(() {
                  Get.back();
                }),
                Text('Skip').onTap(() {
                  // Get.back();
                }),
                Text('Next').onTap(() {
                  Get.to(() => NavBar());
                }),
              ],
            ).pSymmetric(h: 4.w),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
