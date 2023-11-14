import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType4_2New extends StatelessWidget {
  String decItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;
  ItmeType4_2New({
    super.key,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.symmetric(
        horizontal: AppMargin.m10,
        vertical: AppMargin.m20,
      ),
      width: double.infinity,
      height: AppSize.z320,
      decoration: BoxDecoration(
        color:MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSize.z20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: AppSize.z180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(URL3),
                fit: BoxFit.cover,
              ),
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(AppSize.z20),
                topRight: Radius.circular(AppSize.z20),
              ),
              border: Border.all(
                color: MyColors.MyAction,
                width: AppSize.z2,
              ),
            ),
            child: Column(
              children: [
                if (isNew)
                  Container(
                    // width: 20,
                    // height: 20,
                    margin: EdgeInsets.only(
                      left: AppMargin.m10,
                      top: AppMargin.m10,
                    ),
                    padding:  EdgeInsets.symmetric(
                      horizontal: AppPadding.p4,
                      vertical: AppPadding.p2,
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.redAccentColor,
                      borderRadius: BorderRadius.circular(AppSize.z15),
                    ),
                    child:  Text(
                      MyText.textGeneral,
                      style: MyTextStyle.style25
                      
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppPadding.p10),
            child: Text(
              decItme,
              style:MyTextStyle.style24,
              textAlign: TextAlign.right,
            ),
          ),
           SizedBox(
            height: AppSize.z11,
          ),
          GestureDetector(
            onTap: () {
              nextPage();
            },
            child: Container(
              width: double.infinity,
              padding:  EdgeInsets.only(
                left: AppPadding.p5,
                right: AppPadding.p10,
                top: AppPadding.p5,
                bottom: AppPadding.p5,
              ),
              decoration:  BoxDecoration(
                color:MyColors.MyAction,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppSize.z20),
                  bottomLeft: Radius.circular(AppSize.z20),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Icon(
                      Icons.chevron_left_rounded,
                      color: MyColors.whiteColor,
                    ),
                    Text(
                      MyText.textGenera5,
                      style: MyTextStyle.style21,
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
