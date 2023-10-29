import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType2New extends StatelessWidget {
  VoidCallback nextPage;
  String title;
  bool isNew;
  ItmeType2New({
    super.key,
    required this.title,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppMargin.m20),
      width: double.infinity,
      height: AppSize.z120,
      decoration: BoxDecoration(
        color:MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppPadding.p15),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isNew)
                Container(
                  margin: EdgeInsets.only(left: AppMargin.m10),
                  padding:  EdgeInsets.symmetric(
                    horizontal: AppPadding.p4,
                    vertical: AppPadding.p2,
                  ),
                  decoration: BoxDecoration(
                    color: MyColors.redAccentColor,
                    borderRadius: BorderRadius.circular(AppPadding.p15),
                  ),
                  child: Text(
                    MyText.textGeneral,
                    style: MyTextStyle.style17,
                  ),
                ),
              SizedBox(
                height: AppSize.z50,
              ),
              GestureDetector(
                onTap: () {
                  nextPage();
                },
                child: Container(
                  height: AppSize.z40,
                  padding:  EdgeInsets.only(
                    left:AppPadding.p5,
                    right: AppPadding.p10,
                    top: AppPadding.p5,
                    bottom: AppPadding.p5,
                  ),
                  decoration:  BoxDecoration(
                    color:MyColors.MyAction,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppPadding.p20),
                      bottomLeft: Radius.circular(AppPadding.p20),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.chevron_left_rounded,
                        color:MyColors.whiteColor,
                      ),
                      Text(
                        MyText.textGenera4,
                        style: MyTextStyle.style21,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(title,
                    textAlign: TextAlign.right, style: MyTextStyle.style22),
              ],
            ),
          ),
          SizedBox(
            width: AppSize.z10,
          ),
          Padding(
            padding:  EdgeInsets.only(right: AppPadding.p10),
            child: Icon(
              Icons.insert_drive_file_outlined,
              size: AppSize.z24,
              color:MyColors.MyAction,
            ),
          )
        ],
      ),
    );
  }
}
