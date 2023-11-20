import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Notifications.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/top_search_widget.dart';

import 'bottom_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetImage(
        URLImage: imageMeneger.image1,
        icon: Icons.notifications_none_rounded,
        backPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Notifcations(),
            ),
          );
        },
        backPage2: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RootAppScreen(),
            ),
          );
        },
      ),
      endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: TopSearchWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("مسح الكل"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.watch_later_outlined),
                SizedBox(
                  width: 195,
                ),
                Text("سجل البحث"),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.watch_later_outlined),
              ],
            ),
          )
        ],
      )),
    );
  }
}
