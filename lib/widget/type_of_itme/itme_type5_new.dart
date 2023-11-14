import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType5New extends StatelessWidget {
  String decItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;

  ItmeType5New({
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
      height: AppSize.z430,
      decoration: BoxDecoration(
        color:MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSize.z20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: AppMargin.m10),
            alignment: Alignment.topLeft,
            width: double.infinity,
            height: AppSize.z270,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(URL3),
                fit: BoxFit.none,
              ),
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(AppSize.z20),
                topRight: Radius.circular(AppSize.z20),
              ),
              
            ),
            child: Stack(
              children: [
                if (isNew)
                  Container(
                   
                    margin: EdgeInsets.only(
                      left: AppMargin.m10,
                      top: AppMargin.m10,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: MyColors.redAccentColor,
                      borderRadius: BorderRadius.circular(AppSize.z15),
                    ),
                    child: Text(MyText.textGeneral, style: MyTextStyle.style25),
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppPadding.p10),
            child: Text(
              decItme,
              style: MyTextStyle.style24,
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(
            height: AppMargin.m11,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  nextPage();
                },
                child: Container(
                  margin: EdgeInsets.all(AppMargin.m15),
                  padding: EdgeInsets.all(AppPadding.p5),
                  width: AppSize.z100,
                  height: AppSize.z30,
                  decoration: BoxDecoration(
                    color:MyColors.MyAction,
                    borderRadius: BorderRadius.circular(AppSize.z10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.file_download_outlined,
                        color:MyColors.whiteColor,
                        size: AppSize.z20,
                      ),
                      Text(MyText.textGenera6, style: MyTextStyle.style21)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
