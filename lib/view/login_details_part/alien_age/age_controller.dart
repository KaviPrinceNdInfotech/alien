import 'package:get/get.dart';

class AlienAgeController extends GetxController {
  RxBool selectPartner = false.obs;
  //late List<Contact> contacts;
  Rx year = 18.obs;
  Rx month = 20.obs;
  //RxString month = '1000'.obs;
  onyearChanged(value) {
    year(value);
  }

  onmonthChanged(value) {
    month(value);
  }
  // RxList<Contact> selectedContact = <Contact>[].obs;
  // onSelectPartnerChanged(bool val) async {
  //   if (val == true) {
  //     await Permission.contacts.request();
  //     if (await Permission.contacts.isGranted) {
  //       contacts = await ContactsService.getContacts();
  //       // Get.bottomSheet(SelectPartnerBottomModal(),
  //       //     isScrollControlled: false,
  //       //     ignoreSafeArea: false,
  //       //     enableDrag: false);
  //       selectPartner(val);
  //     } else {
  //       Get.snackbar(
  //           'Permission Error', 'Permission For Contacts is not granted');
  //     }
  //   } else {
  //     selectPartner(val);
  //   }
  // }

  // addContact(value) {
  //   selectedContact.value.add(value);
  //   Get.snackbar('Contact', 'Added');
  // }

  // checkContact(value) {
  //   return selectedContact.value.contains(value);
  // }

  // removeContact(value) {
  //   selectedContact.value.remove(value);
  // }

  RxBool makeGoalPublic = false.obs;
  onMakeGoalPublicChanged(bool value) {
    makeGoalPublic(value);
  }

  String getInitials(String name) => name.isNotEmpty
      ? name.trim().split(' ').map((l) => l[0]).take(2).join()
      : '';
}
