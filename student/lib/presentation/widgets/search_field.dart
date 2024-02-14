import 'package:flutter/cupertino.dart';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_workers/utils/debouncer.dart';
import 'package:student/core/assets.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/presentation/controllers/student_controller.dart';

class CustomSearchFieldWidget extends StatelessWidget {
  CustomSearchFieldWidget({super.key});

  final studentController = Get.put(StudentController());
  final Debouncer debouncer =
      Debouncer(delay: const Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kGetHeight * 0.07,
      child: CupertinoSearchTextField(
        backgroundColor: const Color.fromARGB(255, 212, 206, 206),
        borderRadius: BorderRadius.circular(15),
        prefixInsets: EdgeInsetsDirectional.zero,
        suffixInsets: const EdgeInsetsDirectional.only(end: 10),
        prefixIcon: Container(
          margin: const EdgeInsets.only(left: 10, right: 5),
          width: 22,
          child: Image.asset(
            searchIcon,
            color: const Color(0xFF737373),
          ),
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: Color(0xFF737373),
        ),
        style: const TextStyle(
          color: kBlackColor,
          letterSpacing: 0.3,
          fontSize: 16,
        ),
        onChanged: (value) {
          debouncer.call(() {
            studentController.fetchAllStudent(query: value);
          });
        },
      ),
    );
  }
}
