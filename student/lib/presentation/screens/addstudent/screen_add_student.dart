import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/core/assets.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/presentation/controllers/image_picker_controller.dart';
import 'package:student/presentation/controllers/student_controller.dart';
import 'package:student/presentation/screens/addstudent/widgets/button.dart';
import 'package:student/presentation/screens/addstudent/widgets/sections.dart';

class ScreenAddStudent extends StatelessWidget {
  ScreenAddStudent({super.key});

  final studentController = Get.put(StudentController());
  final imagePickerController = Get.put(ImagePickerController());
  final formKey = GlobalKey<FormState>();

  final nameController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final departmentController = TextEditingController();
  final rollNumberController = TextEditingController();
  final studentClassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 108, 97, 97),
              Color.fromARGB(255, 255, 255, 255)
            ])),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  kHeight(kGetHeight * 0.04),
                  Obx(
                    () => headAndImageSection(
                      text: 'Add New \nStudent Info?',
                      onTap: () {
                        imagePickerController.pickImageFromGallery();
                      },
                      image: imagePickerController.image.value.path == ''
                          ? Image.asset(
                              management,
                              color: kDarkBlue,
                            ).image
                          : Image.file(
                              imagePickerController.image.value,
                            ).image,
                    ),
                  ),
                  kHeight(kGetHeight * 0.04),
                  personalInfoSection(
                    nameController: nameController,
                    dobController: dobController,
                    genderController: genderController,
                    phoneNumberController: phoneNumberController,
                    emailController: emailController,
                  ),
                  kHeight(kGetHeight * 0.04),
                  otherDetailSection(
                    departmentController: departmentController,
                    rollNumberController: rollNumberController,
                    studentClassController: studentClassController,
                  ),
                  kHeight(kGetHeight * 0.02),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: CustomAddButton(
        nameController: nameController,
        dobController: dobController,
        genderController: genderController,
        phoneNumberController: phoneNumberController,
        emailController: emailController,
        departmentController: departmentController,
        rollNumberController: rollNumberController,
        studentClassController: studentClassController,
        formkey: formKey,
      ),
    );
  }
}
