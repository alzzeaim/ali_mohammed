import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';

import '../constant/text.dart';
import '../constant/text_style.dart';

class ViewTheReligiousAndArticles extends StatelessWidget {
  String title;
  String dec;
   ViewTheReligiousAndArticles({
    super.key,required this.title,required this.dec,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(AppMargin.m15),
          width: double.infinity,
          height: AppSize.z210,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageMeneger.image6,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(AppSize.z20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(AppPadding.p10),
          margin: EdgeInsets.symmetric(vertical: AppMargin.m10, horizontal: AppMargin.m20),
          width: double.infinity,
          decoration: BoxDecoration(
            color:MyColors.whiteColor,
            borderRadius: BorderRadius.circular(AppSize.z20),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                 title,
                  style: MyTextStyle.style27,
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: AppSize.z10,
                ),
                Container(
                  width: double.infinity,
                  height: 2,
                  decoration: BoxDecoration(
                    color:MyColors.blackColor,
                    borderRadius: BorderRadius.circular(AppSize.z15),
                  ),
                ),
                SizedBox(
                  height: AppSize.z10,
                ),
                Text(dec,
                    textAlign: TextAlign.right, style: MyTextStyle.style28)
              ]),
        )
      ],
    );
  }
}
