import 'package:alien/constant/app_texts/app_texts.dart';
import 'package:alien/view/login_details_part/looking_allien/looking_alienss.dart';
import 'package:alien/view/login_details_part/name_verify/alian_match_controller/alian_match_contro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class AlienMatch extends StatelessWidget {
  var size, height, width;
  AlienMatch({Key? key}) : super(key: key);
  AlienMatchController _alienMatchController = Get.put(AlienMatchController());

  final List<String> text1 = [
    'Alien Men\'s',
    'Alien Women\'s',
    'Other\'s',
  ];

  final List<String> text2 = [
    'Felling lonely',
    'You can share a bond together',
    'we are under the same day'
  ];

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Column(
        children: [
          7.h.heightBox,
          Align(
            alignment: Alignment.center,
            child: Text(
              'Find Your Alien Match',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          1.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.yourr,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Alien' + " " + AppTexts.name,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.will +
                    " " +
                    AppTexts.show +
                    " " +
                    AppTexts.on +
                    " " +
                    AppTexts.your +
                    " " +
                    AppTexts.match +
                    " " +
                    AppTexts.profilee +
                    " " +
                    AppTexts.match +
                    " " +
                    AppTexts.profilee,
                //'will show on your match profile. Match profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              //fontWeight: FontWeight.bol
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.will +
                    " " +
                    AppTexts.visible +
                    " " +
                    AppTexts.to +
                    " " +
                    AppTexts.people +
                    " " +
                    AppTexts.who +
                    " " +
                    AppTexts.are +
                    " ",
                // 'will visible to people who are ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.interestedd + " ",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.ine + " ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.match,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppTexts.you + " " + AppTexts.are,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              //fontWeight: FontWeight.bol
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                AppTexts.interested + " " + AppTexts.ine + ".....",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 8.sp,
                  //fontWeight: FontWeight.bold,
                ),
              ),

              //fontWeight: FontWeight.bol
            ],
          ),
          6.h.heightBox,
          Container(
            height: 13.h,
            width: 25.w,
            decoration: BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                    image: AssetImage('lib/assets/Alian3.jpg'),
                    fit: BoxFit.fill)),
          ),
          2.h.heightBox,
          SizedBox(
            height: 30.h,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      _alienMatchController.toggle(index);
                    },
                    child: Obx(
                      () => Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Container(
                          width: double.infinity,
                          height: 7.h,
                          decoration: BoxDecoration(
                            color: _alienMatchController.selectedIndex.value ==
                                    index
                                ? Colors.transparent
                                : Colors.transparent,
                            border: Border.all(
                                color:
                                    _alienMatchController.selectedIndex.value ==
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
                                      color: _alienMatchController
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
                                    color: _alienMatchController
                                                .selectedIndex.value ==
                                            index
                                        ? Colors.blue
                                        : Colors.transparent,
                                    splashColor: Colors.purple,
                                    onPressed: () {
                                      _alienMatchController.toggle(index);
                                    },
                                  ),
                                ),
                              ).onTap(() {
                                _alienMatchController.toggle(index);
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
          ),
          6.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Back').onTap(() {
                Get.back();
              }),
              Text('Next').onTap(() {
                Get.to(() => LookingAlien());
              }),
            ],
          ).pSymmetric(h: 4.w),
        ],
      ),
    );
  }
}
