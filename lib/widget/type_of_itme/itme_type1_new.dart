import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType1New extends StatelessWidget {
  // String titleItme;
  String decItme;
  int numItme;
  IconData iconsItme;
  final URL2;
  VoidCallback nextPage;
  bool isNew;
  ItmeType1New({
    super.key,
    required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL2,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        nextPage();
      },
      child: Container(
        margin:  EdgeInsets.symmetric(
          horizontal: AppMargin.m10,
          vertical: AppMargin.m20,
        ),
        width: double.infinity,
        height: AppSize.z150,
        decoration: BoxDecoration(
          color:MyColors.whiteColor,
          borderRadius: BorderRadius.circular(AppSize.z15),
        ),
        child: Padding(
          padding:  EdgeInsets.only(right: AppPadding.p10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.only(
                    left: AppPadding.p10,
                    right: AppPadding.p10,
                    top: AppPadding.p10,
                    bottom: AppPadding.p10,
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (isNew)
                            Container(
                              padding:  EdgeInsets.symmetric(
                                horizontal: AppPadding.p4,
                                vertical: AppPadding.p2,
                              ),
                              decoration: BoxDecoration(
                                color: MyColors.redAccentColor,
                                borderRadius: BorderRadius.circular(AppSize.z15),
                              ),
                              child: Text(MyText.textGeneral,
                                  style: MyTextStyle.style17),
                            ),
                          Text(MyText.textGenera2, style: MyTextStyle.style18),
                        ],
                      ),
                       SizedBox(
                        height: AppSize.z5,
                      ),
                      Text(
                        decItme,
                        style: MyTextStyle.style19,
                        textAlign: TextAlign.right,
                      ),
                       SizedBox(
                        height: AppSize.z40,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Icon(
                              iconsItme,
                              color:MyColors.MyAction,
                              size: AppSize.z30,
                            ),
                           
                             SizedBox(
                              width: AppSize.z90,
                            ),
                            const Text(
                              MyText.textGenera3,
                            ),
                             SizedBox(
                              width: AppSize.z5,
                            ),
                            Container(
                              width: AppSize.z25,
                              height: AppSize.z25,
                              decoration: BoxDecoration(
                                color: MyColors.MyAction,
                                borderRadius: BorderRadius.circular(AppSize.z15),
                              ),
                              child: Center(
                                child: Text(
                                  numItme.toString(),
                                  style:MyTextStyle.style20
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: AppSize.z150,
                height: AppSize.z130,
                decoration: BoxDecoration(
                    border: Border.all(
                        color:MyColors.MyAction, width: AppSize.z2),
                    borderRadius: BorderRadius.circular(AppSize.z15),
                    image: DecorationImage(
                        image: AssetImage(URL2), fit: BoxFit.cover)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
