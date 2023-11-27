import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

import '../constant/colors.dart';
import '../constant/size.dart';

class ListOfSearch extends StatelessWidget {
  String text1;
  ListOfSearch({
    super.key,
    required this.text1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: AppMargin.m5,
        horizontal: AppMargin.m5,
      ),
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p10, vertical: AppPadding.p10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSize.z20),
        color: MyColors.backGroundSearch,
      ),
      child: Text(
        text1,
        style: MyTextStyle.style32,
      ),
    );
  }
}
