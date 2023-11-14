import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/Recently_added_videos.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';

import '../../constant/padding.dart';
import '../../constant/size.dart';
import '../../widget/build_tab_bar_view.dart';
import '../../widget/build_tab_bar_widget.dart';
import '../bottom_bar.dart';

class videoPage extends StatefulWidget {
  const videoPage({super.key});

  @override
  State<videoPage> createState() => _videoPageState();
}

class _videoPageState extends State<videoPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarWidgetTitle(
          Title: MyText.title23,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const RootAppScreen(),
              ),
            );
          }),

      // body: SafeArea(child: Text("video_page")),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: AppSize.z20),
                buildTabBar(
                    icon: Icons.wallet,
                    context: context,
                    tabController: tabController,
                    title2: MyText.title23),
                buildTabBarView(
                  tabController: tabController,
                  page1: RecentlyAddedVideos(isNew: true),
                  page2: RecentlyAddedVideos(isNew: false),
                )
              ],
            ),
          ),
        ),
      ),

      // body: TabBarPage(
      //   tap11: MyText.textOfTapBarl1,
      //   tap22: MyText.title23,
      //   page1: const RecentlyAddedVideos(
      //     isNew: true,
      //   ),
      //   page2: const RecentlyAddedVideos(
      //     isNew: false,
      //   ),
      // ),
    );
  }
}
