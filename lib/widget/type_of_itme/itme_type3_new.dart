import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ItmeType3New extends StatelessWidget {
  String decItme;
  int numItme;
  // IconData iconsItme;
  final URL3;
  VoidCallback nextPage;
  bool isNew;
  ItmeType3New({
    super.key,
    // required this.iconsItme,
    // required this.titleItme,
    required this.numItme,
    required this.URL3,
    required this.decItme,
    required this.nextPage,
    required this.isNew,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(AppMargin.m15),
      width: AppSize.z191N,
      height: AppSize.z288,
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppPadding.p20),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            width: AppSize.z191N,
            height: AppSize.z140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(URL3),
                fit: BoxFit.cover,
              ),
              borderRadius:  BorderRadius.only(
                topLeft: Radius.circular(AppPadding.p20),
                topRight: Radius.circular(AppPadding.p20),
              ),
              border: Border.all(
                color:MyColors.MyAction,
                width: AppPadding.p2,
              ),
            ),
            child: Column(
              children: [
                if(isNew)
                Container(
                  margin: EdgeInsets.only(
                    left: AppMargin.m10,
                    top: AppMargin.m10,
                  ),
                  padding:  EdgeInsets.symmetric(
                    horizontal: AppPadding.p4,
                    vertical: AppPadding.p2,
                  ),
                  decoration: BoxDecoration(
                    color:MyColors.redAccentColor,
                    borderRadius: BorderRadius.circular(AppPadding.p15),
                  ),
                  child:  Text(
                    MyText.textGeneral,
                    style:MyTextStyle.style17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(AppPadding.p10),
            child: Row(
              children: [
                Container(
                  width: AppSize.z25,
                  height: AppSize.z25,
                  decoration: BoxDecoration(
                    color: MyColors.MyAction,
                    borderRadius: BorderRadius.circular(AppPadding.p50),
                  ),
                  child: Center(
                    child: Text(
                      numItme.toString(),
                      style: MyTextStyle.style20
                    ),
                  ),
                ),
                 SizedBox(
                  width: AppSize.z10,
                ),
                 Icon(
                  Icons.menu_book_rounded,
                  color: MyColors.black_N_Color,
                ),
                 SizedBox(
                  width: AppSize.z75,
                ),
                 Text(
                  MyText.textGenera2,
                  style: MyTextStyle.style18
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(AppPadding.p10),
            child: Text(
              decItme,
              style: MyTextStyle.style23,
              textAlign: TextAlign.right,
            ),
          ),
           SizedBox(
            height: AppSize.z11,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  nextPage();
                },
                child: Container(
                  padding:  EdgeInsets.only(
                    left: AppPadding.p5,
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
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.chevron_left_rounded,
                          color: MyColors.whiteColor,
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
