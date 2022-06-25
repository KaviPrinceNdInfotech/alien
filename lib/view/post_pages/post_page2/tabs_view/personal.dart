import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../post_page2_controller.dart';

class PersonalProfile extends StatelessWidget {
  PersonalProfile({Key? key}) : super(key: key);
  PostPage2Controller _postPage2Controller = Get.find();

  final List<String> text1 = [
    'Bio',
    'Name',
    'Code Name',
    'User Name',
    'Gender',
    'Email Id',
    'Phone Number',
    'Alternate Number',
    'Date Of Birth',
  ];

  final List<String> text2 = [
    'People I am following only',
    'Only me',
    'Everyone can see',
    'People Following me only',
    'People Following me only',
    'Matches user can see only',
    'Contacts saved in my phone only',
    'Outside my Phone & TC Account Contact',
    'Select user can match',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      0.h.heightBox,
      SizedBox(
        height: 75.h,
        child: ListView.builder(
            itemCount: text1.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  _postPage2Controller.toggle(index);
                },
                child: Obx(
                  () => Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Container(
                      width: double.infinity,
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: _postPage2Controller.selectedIndex.value == index
                            ? Colors.transparent
                            : Colors.transparent,
                        border: Border.all(
                            color: _postPage2Controller.selectedIndex.value ==
                                    index
                                ? Colors.blue
                                : Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 9.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: _postPage2Controller
                                              .selectedIndex.value ==
                                          index
                                      ? Colors.blue
                                      : Colors.black),
                            ),
                            child: Center(
                              child: IconButton(
                                icon: Center(
                                  child: Icon(
                                    Icons.check,
                                  ).pOnly(right: 3.h, bottom: 4.h, top: 0),
                                ),
                                iconSize: 15,
                                color:
                                    _postPage2Controller.selectedIndex.value ==
                                            index
                                        ? Colors.blue
                                        : Colors.transparent,
                                splashColor: Colors.purple,
                                onPressed: () {
                                  _postPage2Controller.toggle(index);
                                },
                              ),
                            ),
                          ).onTap(() {
                            _postPage2Controller.toggle(index);
                          }).p(8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                text1[index],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                text2[index],
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 7.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
      )
    ]);
  }
}
