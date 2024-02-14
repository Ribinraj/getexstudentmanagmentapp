import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:student/presentation/screens/addstudent/screen_add_student.dart';
import 'package:student/presentation/screens/mainscreen/main_screen.dart';
import 'package:student/presentation/screens/student%20detail/screen_student_detail.dart';
import 'package:student/presentation/screens/studentlist/screen_student_list.dart';
import 'package:student/presentation/screens/updatestudent/screen_update_student.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Student Management',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'NetflixSans', primarySwatch: Colors.grey),
      home: const MainScreen(),
      getPages: [
        GetPage(
          name: '/screen_student_add',
          page: () => ScreenAddStudent(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_update',
          page: () => ScreenUpdateStudent(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_list',
          page: () => ScreenStudentList(),
          transition: Transition.fade,
        ),
        GetPage(
          name: '/screen_student_detail',
          page: () => ScreenStudentDetail(),
          transition: Transition.fade,
        )
      ],
    );
  }
}
