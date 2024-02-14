import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/presentation/controllers/student_controller.dart';
import 'package:student/presentation/screens/addstudent/widgets/sub_heading.dart';
import 'package:student/presentation/screens/studentlist/widgets/appbar.dart';
import 'package:student/presentation/screens/studentlist/widgets/card.dart';

class ScreenStudentList extends StatelessWidget {
  ScreenStudentList({super.key});

  final studentController = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kGetHeight * 0.2),
          child: const CustomAppbarWidget(),
        ),
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 108, 97, 97),
                Color.fromARGB(255, 255, 255, 255)
              ])),
          child: Obx(
            () => Center(
              child: studentController.allStudent.isNotEmpty
                  ? ListView.builder(
                      padding: const EdgeInsets.only(bottom: 20),
                      itemCount: studentController.allStudent.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => Get.toNamed('/screen_student_detail',
                              arguments: index),
                          child: ListCardWidget(
                            studentModel: studentController.allStudent[index],
                          ),
                        );
                      },
                    )
                  : const SubHeadingWidget(
                      text: 'List is Empty!!!',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kDarkBlue,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
