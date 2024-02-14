import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:student/core/constants.dart';
import 'package:student/data/model/student.dart';

class ListCardWidget extends StatelessWidget {
  const ListCardWidget({
    super.key,
    required this.studentModel,
  });

  final StudentModel studentModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 212, 212),
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 2,
            color: Color(0x0D000000),
          )
        ],
      ),
      width: kGetWidth,
      height: kGetHeight * 0.14,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: FileImage(File(studentModel.profile!)),
            ),
            kWidth(kGetWidth * 0.03),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  studentModel.name!,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(studentModel.department ?? ''),
                Text(studentModel.rollNumber ?? ''),
              ],
            ),
            const Spacer(),
            const Icon(CupertinoIcons.arrow_right)
          ],
        ),
      ),
    );
  }
}
