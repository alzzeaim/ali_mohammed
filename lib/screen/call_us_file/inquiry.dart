import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';


class inquiry extends StatelessWidget {
  const inquiry({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: AppMargin.m15),
          width: double.infinity,
          decoration: BoxDecoration(
            color: MyColors.whiteColor,
            borderRadius: BorderRadius.circular(AppPadding.p15),
          ),
          child: Padding(
            padding:  EdgeInsets.all(AppPadding.p15),
            
            child: Column(
              children: [
                Text(
                  MyText.title45,
                  style: MyTextStyle.style3,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: AppPadding.p15),
                  child: SizedBox(
                    height: AppSize.z45,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: MyText.enterName,
                        hintStyle: MyTextStyle.style4,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppPadding.p20),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: MyColors.grey200Color,
                        suffixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: MyColors.grey500Color,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.z20,
                ),
                SizedBox(
                  height: AppSize.z45,
                  child: TextFormField(
                    // maxLines: 1,
                    // maxLength: 20,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: MyText.enterEmail,
                      hintStyle: MyTextStyle.style4,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(AppPadding.p20),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: MyColors.grey200Color,
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: MyColors.grey500Color,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top: AppPadding.p20),
                  child: SizedBox(
                    height: AppSize.z45,
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: MyText.enterPhone,
                        hintStyle:MyTextStyle.style4,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppPadding.p20),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: MyColors.grey200Color,
                        suffixIcon: Icon(
                          Icons.phone_outlined,
                          color: MyColors.grey500Color,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: AppSize.z15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      MyText.theMessage,
                      style:MyTextStyle.style5
                    ),
                    SizedBox(
                      width: AppSize.z10,
                    ),
                    Icon(
                      Icons.message_outlined,
                      color:MyColors.grey500Color,
                    )
                  ],
                ),
                SizedBox(
                  height: AppSize.z10,
                ),
                TextFormField(
                  maxLines: 5,
                  // maxLength: 20,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintStyle: MyTextStyle.style4,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppPadding.p20),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor:MyColors.grey200Color,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.all(AppMargin.m20),
                      padding:
                          EdgeInsets.symmetric(horizontal: AppPadding.p20, vertical: AppPadding.p5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color:MyColors.MyAction,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(AppPadding.p20)),
                      child: Text(MyText.thisCode),
                    ),
                    SizedBox(
                      width: AppSize.z100,
                      height: AppSize.z45,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintText:MyText.ValidationCode,
                          hintStyle: MyTextStyle.style4,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppPadding.p20),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: MyColors.grey200Color,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: MyColors.MyAction,
                      ),
                      onPressed: () {},
                      icon: Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      label: Text(
                      MyText.send,
                        style:MyTextStyle.style6
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
