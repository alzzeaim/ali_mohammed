import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/top_search_widget.dart';

import '../../constant/padding.dart';
import '../../constant/size.dart';
import '../../widget/build_tab_bar_view.dart';
import '../../widget/build_tab_bar_widget.dart';
import '../bottom_bar.dart';
import 'Recently_added_Voices.dart';

class VoicePage extends StatefulWidget {
  const VoicePage({super.key});

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage>
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
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetTitle(
          Title: MyText.title29,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RootAppScreen(),
              ),
            );
          }),

      // body: SafeArea(child: Text("voicePage")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TopSearchWidget(),
              SizedBox(height: AppSize.z20),
              buildTabBar(
                  icon: Icons.wallet,
                  context: context,
                  tabController: tabController,
                  title2: MyText.title29),
              buildTabBarView(
                tabController: tabController,
                page1: RecentlyAddedVoices(isNew: true),
                page2: RecentlyAddedVoices(isNew: false),
              )
            ],
          ),
        ),
      ),
      // body: TabBarPage(
      //   tap11: MyText.textOfTapBarl1,
      //   tap22: MyText.title29,
      //   page1: RecentlyAddedVoices(
      //     isNew: true,
      //   ),
      //   page2: RecentlyAddedVoices(
      //     isNew: false,
      //   ),
      // ),
    );
  }
}
