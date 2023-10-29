import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

import '../screen/homePage.dart';

class AppBarActions extends StatelessWidget {
  VoidCallback backPage;
  AppBarActions({super.key, required this.backPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        backPage();
      },
      child: Padding(
        padding: const EdgeInsets.only(
          right: 15,
          top: 15,
        ),
        child: Row(
          children: [
            Text(
            MyText.textGenera7,
              style: MyTextStyle.style30
            ),
            Icon(
              Icons.chevron_right_rounded,
              color:MyColors.greyColor,
            ),
          ],
        ),
      ),
    );
  }
}

