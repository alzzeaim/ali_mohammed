import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
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
      height: 350,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              border: Border.all(
                color: MyColors.MyAction,
                width: 2,
              ),
              image: DecorationImage(
                image: AssetImage(imageMeneger.image4),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              title1,
              style: MyTextStyle.style1,
              textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              " الحلقة $title2",
              style: MyTextStyle.style1,
              textAlign: TextAlign.right,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                    color: Colors.white,
                  ),
                  label: Text(
                    "شاهد",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
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
