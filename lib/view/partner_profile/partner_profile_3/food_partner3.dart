import 'package:alien/view/partner_profile/partner_profile_3/partner_pro3_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class Partnerprofile3Food extends StatelessWidget {
  Partnerprofile3Food({Key? key}) : super(key: key);
  Profilepartner3controller _profilepartner3controller = Get.find();

  final List<String> text1 = [
    'Healthy Food',
    'Fast Food',
    'Food',
    'North Indian',
    'South Indian',
    'Continental',
    'Maxican',
    'Chinese',
    'Add Veriety',
  ];

  final List<String> text2 = [
    'Felling lonely',
    'You can share a bond together',
    'we are under the same day',
    'North Indian',
    'South Indian',
    'Continental',
    'Maxican',
    'Chinese',
    'Add Veriety',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      2.h.heightBox,
      SizedBox(
        height: 76.h,
        child: ListView.builder(
            itemCount: text1.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  _profilepartner3controller.toggle(index);
                },
                child: Obx(
                  () => Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Container(
                      width: double.infinity,
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: _profilepartner3controller.selectedIndex.value ==
                                index
                            ? Colors.transparent
                            : Colors.transparent,
                        border: Border.all(
                            color: _profilepartner3controller
                                        .selectedIndex.value ==
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
                                  color: _profilepartner3controller
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
                                color: _profilepartner3controller
                                            .selectedIndex.value ==
                                        index
                                    ? Colors.blue
                                    : Colors.transparent,
                                splashColor: Colors.purple,
                                onPressed: () {
                                  _profilepartner3controller.toggle(index);
                                },
                              ),
                            ),
                          ).onTap(() {
                            _profilepartner3controller.toggle(index);
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
