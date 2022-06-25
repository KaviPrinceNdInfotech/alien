import 'package:get/get.dart';

enum gender { male, female, other }

class LoginController extends GetxController {
  Rx<gender> selectedGender = gender.male.obs;
}
