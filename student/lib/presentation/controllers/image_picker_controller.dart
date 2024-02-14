import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  Rx<File> image = File('').obs;

  Future pickImageFromGallery() async {
    try {
      final pickedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedImage == null) {
        return;
      }
      final imageTemp = File(pickedImage.path);
      image.value = imageTemp;
    } on PlatformException catch (e) {
      return e;
    }
  }
}
