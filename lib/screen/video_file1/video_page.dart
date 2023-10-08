import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/Recently_added_videos.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/videos.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

import '../../screen/homePage.dart';

class videoPage extends StatefulWidget {
  const videoPage({super.key});

  @override
  State<videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<videoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title:  AppBarTitle(titel: MyText.title23),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
            );
          })
        ],
      ),
      // body: SafeArea(child: Text("video_page")),
      body: TabBarPage(
        tap11: MyText.text_general1,
        tap22: MyText.title23,
        page1: const RecentlyAddedVideos(),
        page2: const Videos(),
      ),
    );
  }
}
