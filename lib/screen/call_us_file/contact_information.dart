import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(AppPadding.p20),
              margin: EdgeInsets.only(top: AppMargin.m100),
              width: double.infinity,
              height: AppSize.z250,
              decoration: BoxDecoration(
                color: MyColors.whiteColor,
                borderRadius: BorderRadius.circular(AppSize.z20),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(AppPadding.p15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child: Text(MyText.phonNumber,
                              style: MyTextStyle.style3),
                        ),
                        SizedBox(
                          width: AppSize.z15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child: Icon(
                            Icons.phone,
                            color: MyColors.MyAction,
                            size: AppSize.z24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppPadding.p15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child: Text(MyText.emailAddres,
                              style: MyTextStyle.style3),
                        ),
                        SizedBox(
                          width: AppSize.z15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child: Icon(
                            Icons.email_outlined,
                            color: MyColors.MyAction,
                            size: AppSize.z24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(AppPadding.p15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child:
                              Text(MyText.location, style: MyTextStyle.style3),
                        ),
                        SizedBox(
                          width: AppSize.z15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: AppPadding.p10),
                          child: Icon(
                            Icons.location_on_outlined,
                            color: MyColors.MyAction,
                            size: AppSize.z24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
