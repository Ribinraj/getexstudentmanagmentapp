import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/core/assets.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/presentation/widgets/heading.dart';
import 'package:student/presentation/widgets/search_field.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 23, 22, 22),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 5),
                    width: 18,
                    child: Image.asset(
                      leftArrowIcon,
                      color: kWhiteColor,
                    ),
                  ),
                ),
                kWidth(kGetWidth * 0.05),
                const HeadingWidget(
                  text: 'List of Students',
                  textColor: kWhiteColor,
                ),
              ],
            ),
            kHeight(kGetHeight * 0.03),
            CustomSearchFieldWidget()
          ],
        ),
      ),
    );
  }
}
