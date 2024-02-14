import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:student/core/assets.dart';
import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Color.fromARGB(255, 108, 97, 97),
                Color.fromARGB(255, 255, 255, 255)
              ])),
          child: Center(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  kHeight(kGetHeight * 0),
                  const Text(
                    'My School',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Lottie.asset(animation),
                      ),
                      kHeight(kGetHeight * 0.04),
                      _mainPageBtn(
                        btnText: 'Add New Student',
                        onPressed: () => Get.toNamed('/screen_student_add'),
                        context: context,
                      ),
                      kHeight(kGetHeight * 0.04),
                      _mainPageBtn(
                        btnText: 'View All Students',
                        onPressed: () => Get.toNamed('/screen_student_list'),
                        context: context,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  MaterialButton _mainPageBtn(
      {required String btnText,
      required void Function()? onPressed,
      required BuildContext context}) {
    return MaterialButton(
      padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: kBlackColor,
      textColor: kWhiteColor,
      onPressed: onPressed,
      child: Text(
        btnText,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }
}
