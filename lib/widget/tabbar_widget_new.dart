import 'dart:js_util';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';
import 'build_tab_bar_view.dart';
import 'build_tab_bar_widget.dart';

class TabBarWidgetNew extends StatelessWidget {
  TabBarWidgetNew(
      {required this.page1,
      required this.page2,
      required this.tap11,
      required this.tap22,
      required this.icon,
      required this.tabController,
      super.key});
  String tap11;
  String tap22;
  Widget page1;
  Widget page2;
  IconData icon;
  TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
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
                buildTabBar(icon: icon,
                  context: context,
                  tabController: tabController,
                  title1: tap11,
                  title2: tap22,

                ),
                buildTabBarView(
                  tabController: tabController,
                  page1: page1,
                  page2: page2,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
