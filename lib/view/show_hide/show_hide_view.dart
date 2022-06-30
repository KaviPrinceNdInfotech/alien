import 'package:alien/view/show_hide/show_hide_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowHide extends StatelessWidget {
  ShowHide({Key? key}) : super(key: key);
  ShowHideController _showHideController = Get.put(ShowHideController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Password Toggle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Obx(() => TextField(
                  obscureText: _showHideController.isVisible.value,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                      suffix: InkWell(
                        child: Icon(
                          _showHideController.isVisible.value
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onTap: () {
                          _showHideController.isVisible.value =
                              !_showHideController.isVisible.value;
                        },
                      )),
                )),
          ],
        ),
      ),
    );
  }
}
