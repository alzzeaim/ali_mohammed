import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/homePage.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

import 'Recently_added_Religious.dart';
import 'ReligiousPearls.dart';

class ReligiousPearlsPage extends StatefulWidget {
  const ReligiousPearlsPage({super.key});

  @override
  State<ReligiousPearlsPage> createState() => _ReligiousPearlsPageState();
}

class _ReligiousPearlsPageState extends State<ReligiousPearlsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(titel: MyText.title19),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }),
        ],
      ),
      // body: SafeArea(child: Text("Religious pearls_page")),
      body: TabBarPage(
          tap11: MyText.text_general1,
          tap22: MyText.title19,
          page1: RecentlyAddedReligious(),
          page2: ReligiousPearls()),
    );
  }
}
