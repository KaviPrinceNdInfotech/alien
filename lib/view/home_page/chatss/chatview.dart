import 'package:alien/view/home_page/chatss/request/request_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'callss/call_chat.dart';
import 'categary/category_chat.dart';
import 'chatwidgets/chat.dart';
import 'group/group_page.dart';

class ChhatView extends StatelessWidget {
  const ChhatView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(12.h),
        child: AppBar(
          automaticallyImplyLeading: false,
          //flexibleSpace: SomeWidget(),
          //toolbarHeight: 100,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'Connect',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
            ),
          ),
          actions: [
            Row(
              children: [
                Icon(Icons.mic_none_rounded),
                2.w.widthBox,
                InkWell(onTap: () {}, child: Icon(Icons.person)),
              ],
            ),
          ],
          // bottom: TabBar(
          //   indicatorColor: Colors.white,
          //   indicatorSize: TabBarIndicatorSize.label,
          //   isScrollable: true,
          //   //indicatorColor: Colors.deepOrange,
          //   //indicatorWeight: 5.w,
          //   indicator: BoxDecoration(
          //       //color: Colors.grey,
          //       image: DecorationImage(
          //     image: NetworkImage(
          //         "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/73964184-1a38-4389-9f56-055b68215845/d38j83h-593bb15e-88ab-4b64-a541-cea8c538ec58.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzczOTY0MTg0LTFhMzgtNDM4OS05ZjU2LTA1NWI2ODIxNTg0NVwvZDM4ajgzaC01OTNiYjE1ZS04OGFiLTRiNjQtYTU0MS1jZWE4YzUzOGVjNTguZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.u_v12KnizFteXD2Ayqz-utPlL6PKjd-7oPyVjFe7vmQ"),
          //     fit: BoxFit.fitWidth,
          //   )),
          //   indicatorPadding: EdgeInsets.all(0),
          //   tabs: [
          //     Column(
          //       children: [
          //         Icon(
          //           Icons.message,
          //           size: 18,
          //         ),
          //         Text(
          //           'Chat',
          //           style: TextStyle(
          //             fontSize: 10.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(
          //           Icons.people_outline,
          //           size: 18,
          //         ),
          //         Text(
          //           'Groups',
          //           style: TextStyle(
          //             fontSize: 10.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(
          //           Icons.category,
          //           size: 18,
          //         ),
          //         Text(
          //           'Categories',
          //           style: TextStyle(
          //             fontSize: 10.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(
          //           Icons.call,
          //           size: 18,
          //         ),
          //         Text(
          //           'Call',
          //           style: TextStyle(
          //             fontSize: 11.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
          //         Icon(
          //           Icons.request_page_outlined,
          //           size: 18,
          //         ),
          //         Text(
          //           'Request',
          //           style: TextStyle(
          //             fontSize: 10.sp,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
      body: Column(
        children: [
          // TabBarView(
          //   children: <Widget>[
          //     Chats(),
          //     Center(
          //       child: Text('chat'),
          //     ),
          //     Center(
          //       child: Text('chat'),
          //     ),
          //     Center(
          //       child: Text('chat'),
          //     ),
          //     Center(
          //       child: Text('chat'),
          //     ),
          //   ],
          // ),
          //Divider(),
          DefaultTabController(
            length: 5,
            child: Column(
              children: <Widget>[
                Material(
                    elevation: 0,
                    color: Colors.black,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 93.5.w,
                          child: TabBar(
                            indicatorColor: Colors.white,
                            indicatorSize: TabBarIndicatorSize.label,
                            isScrollable: true,
                            //indicatorColor: Colors.deepOrange,
                            //indicatorWeight: 5.w,
                            // indicator: BoxDecoration(
                            //     //color: Colors.grey,
                            //     image: DecorationImage(
                            //   image: NetworkImage(
                            //       "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/73964184-1a38-4389-9f56-055b68215845/d38j83h-593bb15e-88ab-4b64-a541-cea8c538ec58.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzczOTY0MTg0LTFhMzgtNDM4OS05ZjU2LTA1NWI2ODIxNTg0NVwvZDM4ajgzaC01OTNiYjE1ZS04OGFiLTRiNjQtYTU0MS1jZWE4YzUzOGVjNTguZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.u_v12KnizFteXD2Ayqz-utPlL6PKjd-7oPyVjFe7vmQ"),
                            //   fit: BoxFit.fitWidth,
                            // )),
                            indicatorPadding: EdgeInsets.all(0),

                            tabs: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.message,
                                    size: 18,
                                  ),
                                  Text(
                                    'Chat',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.people_outline,
                                    size: 18,
                                  ),
                                  Text(
                                    'Groups',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.category,
                                    size: 18,
                                  ),
                                  Text(
                                    'Categories',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.call,
                                    size: 18,
                                  ),
                                  Text(
                                    'Call',
                                    style: TextStyle(
                                      fontSize: 11.sp,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.request_page_outlined,
                                    size: 18,
                                  ),
                                  Text(
                                    'Request',
                                    style: TextStyle(
                                      fontSize: 10.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        PopupMenuButton(
                          itemBuilder: (context) => [
                            PopupMenuItem(
                                child: Row(
                              children: [Icon(Icons.settings), Text('Status')],
                            )),
                            PopupMenuItem(
                                child: Row(
                              children: [
                                Icon(Icons.private_connectivity),
                                Text('Privecy')
                              ],
                            )),
                            PopupMenuItem(
                                child: Row(
                              children: [
                                Icon(Icons.media_bluetooth_on),
                                Text('Media')
                              ],
                            )),
                          ],
                          child: Icon(
                            Icons.more_vert_rounded,
                            color: Colors.white70,
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 70.h,
                  child: TabBarView(
                    children: <Widget>[
                      Chats(),
                      GroupPage(),
                      CatagaryChat(),
                      CallChat(),
                      ReqestPage(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
