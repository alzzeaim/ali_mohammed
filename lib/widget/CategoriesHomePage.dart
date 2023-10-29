import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';


// ignore: must_be_immutable
class CategoriesHomePage extends StatelessWidget {
  IconData iconn;
  final name_cato;
  double? wi;
  VoidCallback newPage;
  CategoriesHomePage(
      {super.key,
      required this.iconn,
      required this.name_cato,
      this.wi = 110,
      required this.newPage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        newPage();
      },
      child: Container(
        margin:  EdgeInsets.only(
          left: AppMargin.m15,
          top: AppMargin.m15,
        ),
        width: wi,
        height: AppSize.z124,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppPadding.p10),
          color:MyColors.whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconn,
              color:MyColors.MyAction,
              size: AppSize.z60,
            ),
             SizedBox(
              height: AppSize.z10,
            ),
            Text(
              name_cato,
              style:  TextStyle(
                  color:MyColors.grey_N_Color,
                  fontSize: AppSize.z14,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
