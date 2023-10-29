import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

AppBar myAppBar({
  required String tilte,
  String? textBack,
  required VoidCallback backPage,
}) {
  return AppBar(
    leading: SizedBox(),
    title: Text(tilte, textAlign: TextAlign.center, style: MyTextStyle.style26),
    actions: [
      GestureDetector(
        onTap: () {
          backPage();
        },
        child: Padding(
          padding:  EdgeInsets.only(
            right: AppPadding.p15,
            top: AppPadding.p15,
          ),
          child: Row(
            children: [
              Text(
                MyText.textGenera7,
                style: MyTextStyle.style30,
              ),
              Icon(
                Icons.chevron_right_rounded,
                color:MyColors.greyColor,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
