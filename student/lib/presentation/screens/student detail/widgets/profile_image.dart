import 'dart:io';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/core/assets.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/data/model/student.dart';

class DetailProfileImageWidget extends StatelessWidget {
  const DetailProfileImageWidget({
    super.key,
    required this.studentModel,
  });

  final StudentModel studentModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: kGetHeight * 0.42,
          decoration: BoxDecoration(
            color: kDarkBlue,
            image: DecorationImage(
              image: FileImage(File(studentModel.profile!)),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: InkWell(
            onTap: () => Get.back(),
            child: Material(
              color: kDarkBlue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Container(
                margin: const EdgeInsets.only(
                  right: 12,
                  left: 10,
                  top: 10,
                  bottom: 10,
                ),
                width: kGetWidth * 0.04,
                child: Image.asset(
                  leftArrowIcon,
                  color: kWhiteColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
