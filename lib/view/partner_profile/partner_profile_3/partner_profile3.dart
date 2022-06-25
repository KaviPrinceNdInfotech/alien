import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/partner_profile/partner_profile_3/partner_pro3_controller.dart';
import 'package:alien/view/partner_profile/partner_profile_3/partner_profile3_doctor.dart';
import 'package:alien/view/partner_profile/partner_profile_3/pat_profile3_services.dart';
import 'package:alien/view/post_pages/post_page2/post_page_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'food_partner3.dart';

class PartnerProfile3 extends StatelessWidget {
  var size, height, width;
  PartnerProfile3({Key? key}) : super(key: key);
  Profilepartner3controller _profilepartner3controller =
      Get.put(Profilepartner3controller());

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
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 10.0,
          backgroundColor: Colors.white,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              width: double.infinity,
              child: TabBar(
                indicatorColor: Colors.black,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.blue,
                labelPadding: const EdgeInsets.only(bottom: 10),
                indicatorSize: TabBarIndicatorSize.label,
                labelStyle: const TextStyle(fontWeight: FontWeight.w500),
                indicatorPadding: const EdgeInsets.only(top: 1, bottom: 1),

                tabs: [
                  Container(
                      height: 30.0,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                          child: Text(
                        AppTexts.Food,
                      ))),
                  Container(
                      height: 30.0,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(AppTexts.Doctor))),
                  Container(
                      height: 30.0,
                      width: 25.w,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text(AppTexts.Services))),
                ],
                // controller: _profilepartner3controller.controller,
                // tabs: _profilepartner3controller.myTabs,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 140.w,
              child: TabBarView(
                children: [
                  Partnerprofile3Food(),
                  Partnerprofile3Doctor(),
                  Partnerprofile3Service(),
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
                  Get.to(() => PostPage2());
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
