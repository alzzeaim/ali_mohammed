import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/screen/bottom_bar.dart';
import 'package:flutter_alli_mohammed_hassan/screen/call_us_file/contact_information.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/build_tab_bar_view.dart';
import 'package:flutter_alli_mohammed_hassan/widget/build_tab_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/list_tile_menu.dart';
import '../../constant/text.dart';
import '../../widget/drawer_widget.dart';
import '../Abut_Sheikh_page.dart';
import '../Articles_file/Articles_page.dart';
import '../Books_and_publications_file/Books and publications_page.dart';
import '../Fatwas_file/Fatwas_page.dart';
import '../Important_links.dart';
import '../Notifications.dart';
import '../Religious pearls_file/Religious_pearls_page.dart';
import '../homePage.dart';
import '../video_file1/video_page.dart';
import '../voice_file/voice_page.dart';
import 'inquiry.dart';

class CallUs extends StatefulWidget {
  const CallUs({super.key});

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> with SingleTickerProviderStateMixin {
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
      appBar: AppBarWidget.appBarWidgetImage(
        backPage2: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RootAppScreen(),
            ),
          );
        },
        URLImage: imageMeneger.image1,
        icon: Icons.notifications_active_outlined,
        backPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Notifcations(),
            ),
          );
        },
      ),
      endDrawer: DrawerWidget.drawerWidget(context),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: AppPadding.p30),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              buildTabBar(
                context: context,
                tabController: tabController,
                title1: MyText.title43,
                title2: MyText.title43,
                icon: Icons.wallet,
              ),
              buildTabBarView(
                  tabController: tabController,
                  page1: ContactInformation(),
                  page2: inquiry())
            ],
          ),
        ),
      ),
    );
  }
}
