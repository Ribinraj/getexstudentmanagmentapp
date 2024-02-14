import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/core/colors.dart';

kWidth(double width) => SizedBox(width: width);
kHeight(double height) => SizedBox(height: height);

const kDivider = Divider(
  height: 2,
  color: kLightblack,
  thickness: 1,
);

final kGetHeight = Get.height;
final kGetWidth = Get.width;

kGetSnackbar(String message) => Get.rawSnackbar(
      messageText: Text(
        message,
        style: const TextStyle(
          color: kWhiteColor,
          fontWeight: FontWeight.w400,
          fontSize: 13,
        ),
      ),
      margin: const EdgeInsets.all(20),
      borderRadius: 10,
      backgroundColor: kBlueGrey,
    );
