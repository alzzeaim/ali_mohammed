import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/video_page.dart';

import '../../widget/app_bar_actions.dart';
import '../../widget/app_bar_title.dart';

class NextVideo extends StatefulWidget {
  NextVideo({
    super.key,
  });

  @override
  State<NextVideo> createState() => _NextVideoState();
}

class _NextVideoState extends State<NextVideo> {
  final List titles = [
    {
      'title1': MyText.title40,
      'title2': MyText.title41,
      'title3': MyText.title42,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(
          titel: MyText.title21,
        ),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => videoPage(),
              ),
            );
          })
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return ItmeOfVideos(
                title1: titles[0]["title1"],
                title2: titles[0]["title2"],
                title3: titles[0]["title3"]);
          },
        ),
      ),
    );
  }
}

class ItmeOfVideos extends StatelessWidget {
  String title1;
  String title2;
  String title3;

  ItmeOfVideos({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.z350,
      margin: EdgeInsets.all(AppMargin.m20),
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppPadding.p20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: AppSize.z200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppPadding.p20),
                topRight: Radius.circular(AppPadding.p20),
              ),
              border: Border.all(
                color: MyColors.MyAction,
                width: AppSize.z2,
              ),
              image: DecorationImage(
                image: AssetImage(imageMeneger.image4),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: AppSize.z20,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppPadding.p20),
            child: Text(
              title1,
              style: MyTextStyle.style1,
              textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal:AppPadding.p20),
            child: Text(
              " الحلقة $title2",
              style: MyTextStyle.style1,
              textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: AppPadding.p20, vertical: AppPadding.p15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    primary: MyColors.MyAction,
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.shower_outlined,
                    color:MyColors.whiteColor,
                  ),
                  label: Text(
                    "شاهد",
                    style: TextStyle(
                      // color:MyColors.whiteColor,
                      color: MyColors.MyAction,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: AppSize.z20,
                ),
                Expanded(
                  child: Text(
                    "   من سلسلة$title3 ",
                    style: MyTextStyle.style2,
                    textAlign: TextAlign.right,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
