import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileSettingController extends GetxController {
  //image pick code
  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  //image crop code,
  var cropImagePath = ''.obs;
  var cropImageSize = ''.obs;

  //Compress code of image,

  var compressImagePath = ''.obs;
  var compressImageSize = ''.obs;

  RxBool on = false.obs;
  RxBool off = true.obs; // our observable

  // swap true/false & save it to observable
  void toggle() => on.value = on.value ? false : true;
  // a variable to On Off Switch in flutter

  ///todo it is start here in get builder..........upper get x
  var isSwitcheded = false;

  // instance of GetStorage, to store data in key value pair.
  final switchdatacontroller = GetStorage();

  GetXSwitchState() {
    print("Constructor called");
    // when user re-visit app, we check previous state of app weather it was on or off.
    if (switchdatacontroller.read('getXIsSwitched') != null) {
      isSwitcheded = switchdatacontroller.read('getXIsSwitched');
      update();
    }
  }

  // called when user click on switch to on/off it
  changeSwitchState(bool value) {
    isSwitcheded = value;

    // store data in getstorage true or false
    //here in key 'getXIsSwitched' we store bool type either true or else
    // if true then switch is ON else OFF
    switchdatacontroller.write('getXIsSwitched', isSwitcheded);

    // update the UI
    update();
  }

  ///till here it is get builder...........reamains in getx state obx

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  //image picker...

  // void getImage(ImageSource imageSource) async {
  //   final pickedFile = await ImagePicker().pickImage(
  //     source: imageSource,
  //     maxWidth: 20.w,
  //     maxHeight: 10.h,
  //   );
  //   if (pickedFile != null) {
  //     selectedImagePath.value = pickedFile.path;
  //     selectedImageSize.value =
  //         ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
  //                 .toStringAsFixed(1) +
  //             "Mb";

  //from here crop....

  //     final cropImageFile = await ImageCropper().cropImage(
  //         //aspectRatio: 2/2,
  //         sourcePath: selectedImagePath.value,
  //         aspectRatioPresets: [
  //           CropAspectRatioPreset.square,
  //           CropAspectRatioPreset.ratio3x2,
  //           CropAspectRatioPreset.original,
  //           CropAspectRatioPreset.ratio4x3,
  //         ],
  //         uiSettings: [
  //           AndroidUiSettings(
  //               toolbarTitle: 'Cropper',
  //               toolbarColor: Colors.deepOrange,
  //               toolbarWidgetColor: Colors.white,
  //               initAspectRatio: CropAspectRatioPreset.original,
  //               lockAspectRatio: false),
  //           IOSUiSettings(
  //             title: 'Cropper',
  //           ),
  //         ],
  //         maxWidth: 100,
  //         maxHeight: 200,
  //         compressFormat: ImageCompressFormat.jpg);
  //     cropImagePath.value = cropImageFile!.path;
  //     cropImageSize.value =
  //         ((File(cropImagePath.value)).lengthSync() / 1024 / 1024)
  //                 .toStringAsFixed(2) +
  //             " Mb";
  //
  //     // Compress
  //
  //     // final dir = await Directory.systemTemp;
  //     // final targetPath = dir.absolute.path + "/temp.jpg";
  //     // var compressedFile = await FlutterImageCompress.compressAndGetFile(
  //     //     cropImagePath.value, targetPath,
  //     //     quality: 90);
  //     // compressImagePath.value = compressedFile!.path;
  //     // compressImageSize.value =
  //     //     ((File(compressImagePath.value)).lengthSync() / 1024 / 1024)
  //     //             .toStringAsFixed(2) +
  //     //         " Mb";
  //     //
  //     // uploadImage(compressedFile);
  //   } else {
  //     Get.snackbar('Erros', 'No image selected',
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white);
  //   }
  // }

  //it is use in image compression class..........

  // void uploadImage(File file) {
  //   Get.dialog(
  //     Center(
  //       child: CircularProgressIndicator(),
  //     ),
  //     barrierDismissible: false,
  //   );
  //   ImageUploadProvider().uploadImage(file).then((resp) {
  //     Get.back();
  //     if (resp == "success") {
  //       Get.snackbar('Success', 'File Uploaded',
  //           snackPosition: SnackPosition.BOTTOM,
  //           backgroundColor: Colors.green,
  //           colorText: Colors.white);
  //     } else if (resp == "fail") {
  //       Get.snackbar('Error', 'File upload failed',
  //           snackPosition: SnackPosition.BOTTOM,
  //           backgroundColor: Colors.red,
  //           colorText: Colors.white);
  //     }
  //   }, onError: (err) {
  //     Get.back();
  //     Get.snackbar('Error', 'File upload failed',
  //         snackPosition: SnackPosition.BOTTOM,
  //         backgroundColor: Colors.red,
  //         colorText: Colors.white);
  //   });
  // }
}
