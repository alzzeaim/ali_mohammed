import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/Recently_added_Articles.dart';
import 'package:flutter_alli_mohammed_hassan/screen/bottom_bar.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';

import '../../constant/padding.dart';
import '../../constant/size.dart';
import '../../widget/build_tab_bar_view.dart';
import '../../widget/build_tab_bar_widget.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage>
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
          Title: MyText.title1,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RootAppScreen(),
              ),
            );
          },
        ),
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
                    icon: Icons.ac_unit,
                    context: context,
                    tabController: tabController,
                    title2: MyText.title1,
                  ),
                  buildTabBarView(
                    tabController: tabController,
                    page1: RecentlyAddedArticles(isNew: true),
                    page2: RecentlyAddedArticles(isNew: false),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
