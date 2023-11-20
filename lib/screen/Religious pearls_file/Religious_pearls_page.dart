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
import 'Recently_added_Religious.dart';

class ReligiousPearlsPage extends StatefulWidget {
  const ReligiousPearlsPage({super.key});

  @override
  State<ReligiousPearlsPage> createState() => _ReligiousPearlsPageState();
}

class _ReligiousPearlsPageState extends State<ReligiousPearlsPage>
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
          Title: MyText.title19,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RootAppScreen(),
              ),
            );
          }),

      // body: SafeArea(child: Text("Religious pearls_page")),

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
                  title2: MyText.title19),
              buildTabBarView(
                tabController: tabController,
                page1: RecentlyAddedReligious(isNew: true),
                page2: RecentlyAddedReligious(isNew: false),
              )
            ],
          ),
        ),
      ),
    );
  }
}
