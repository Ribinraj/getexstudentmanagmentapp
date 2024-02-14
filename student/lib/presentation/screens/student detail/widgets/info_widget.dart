import 'package:flutter/material.dart';

import 'package:student/core/colors.dart';
import 'package:student/core/constants.dart';
import 'package:student/data/model/student.dart';
import 'package:student/presentation/screens/addstudent/widgets/sub_heading.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget(
      {super.key,
      required this.heading,
      required this.heading2,
      required this.studentModel});

  final String heading;
  final String heading2;
  final StudentModel studentModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SubHeadingWidget(
          text: heading,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kDarkBlue,
        ),
        kHeight(kGetHeight * 0.01),
        _detailListTile(
          title: 'Date of Birth',
          trailing: studentModel.dob,
        ),
        _detailListTile(
          title: 'Gender',
          trailing: studentModel.gender,
        ),
        _detailListTile(
          title: 'Phone number',
          trailing: studentModel.phoneNumber,
        ),
        _addressListTile(
          title: 'Email Address',
          subText: studentModel.emailAddress,
        ),
        kHeight(kGetHeight * 0.03),
        SubHeadingWidget(
          text: heading2,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: kDarkBlue,
        ),
        kHeight(kGetHeight * 0.01),
        _detailListTile(
          title: 'Roll no.',
          trailing: studentModel.rollNumber,
        ),
        kHeight(kGetHeight * 0.04),
      ],
    );
  }

  Container _addressListTile({String? title, String? subText}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
      width: kGetWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kBlackColor, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubHeadingWidget(
            text: title!,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
          ),
          kHeight(kGetHeight * 0.01),
          Text(subText!),
        ],
      ),
    );
  }

  Container _detailListTile({String? title, String? trailing}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      width: kGetWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: kBlackColor, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SubHeadingWidget(
            text: title!,
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: kBlackColor,
          ),
          Text(trailing!),
        ],
      ),
    );
  }
}
