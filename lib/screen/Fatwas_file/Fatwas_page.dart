import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Fatwas_file/Recently_added_Fatwas.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';

import '../../constant/padding.dart';
import '../../constant/size.dart';
import '../../widget/build_tab_bar_view.dart';
import '../../widget/build_tab_bar_widget.dart';
import '../bottom_bar.dart';

class FatwasPage extends StatefulWidget {
  const FatwasPage({super.key});

  @override
  State<FatwasPage> createState() => _FatwasPageState();
}

class _FatwasPageState extends State<FatwasPage>
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
          Title: MyText.title9,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RootAppScreen(),
              ),
            );
          }),

      // body: SafeArea(child: Text("Fatwas_page")),
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
                buildTabBar(icon: Icons.wallet,
                    context: context,
                    tabController: tabController,
                    title2: MyText.title9),
                buildTabBarView(
                  tabController: tabController,
                  page1: RecentlyAddedFatwas(isNew: true),
                  page2: RecentlyAddedFatwas(isNew: false),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
