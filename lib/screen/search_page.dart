import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Notifications.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/top_search_widget.dart';

import '../widget/drawer_widget.dart';
import '../widget/list_of_search.dart';
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
            padding: EdgeInsets.only(left: AppSize.z10),
            child: TopSearchWidget(),
          ),
          Padding(
            padding:  EdgeInsets.all(AppPadding.p15),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(MyText.removeAll),
                SizedBox(
                  width:AppSize.z10,
                ),
                Icon(Icons.watch_later_outlined),
                SizedBox(
                  width: AppSize.z195,
                ),
                Text(MyText.list_Of_search),
                SizedBox(
                  width: AppSize.z10,
                ),
                Icon(Icons.watch_later_outlined),
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.end,
            children: [
              ListOfSearch(text1: MyText.textGenera2),
              ListOfSearch(text1: MyText.textGenera2),
              ListOfSearch(text1: MyText.ValidationCode),
              ListOfSearch(text1: MyText.enterEmail),
              ListOfSearch(text1: MyText.textGenera2),
              ListOfSearch(text1: MyText.textGenera2),
              ListOfSearch(text1: MyText.emailAddres),
            ],
          ),
        ],
      )),
    );
  }
}
