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
    List<Map<String, dynamic>> mapdrawer = [
      {
        // homee
        'name': MyText.title37,
        'icon': Icons.home,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RootAppScreen(),
            ),
          );
        }
      },
      {
        // AbutSheikhPage
        'name': MyText.title36,
        'icon': Icons.person_pin_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AbutSheikhPage(),
            ),
          );
        }
      },
      {
        // videoPage
        'name': MyText.title23,
        'icon': Icons.videocam_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => videoPage(),
            ),
          );
        }
      },
      {
        // VoicePage
        'name': MyText.title29,
        'icon': Icons.mic_none_rounded,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => VoicePage(),
            ),
          );
        }
      },
      {
        // FatwasPage
        'name': MyText.title9,
        'icon': Icons.insert_drive_file_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => FatwasPage(),
            ),
          );
        }
      },
      {
        // ArticlesPage
        'name': MyText.title1,
        'icon': Icons.menu_book_rounded,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ArticlesPage(),
            ),
          );
        }
      },
      {
        // ReligiousPearlsPage
        'name': MyText.title19,
        'icon': Icons.insert_drive_file_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ReligiousPearlsPage(),
            ),
          );
        }
      },
      {
        // BooksAndPublicationsPage
        'name': MyText.title5,
        'icon': Icons.book_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BooksAndPublicationsPage(),
            ),
          );
        }
      },
      {
        // Important_links
        'name': MyText.title38,
        'icon': Icons.link_rounded,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Important_links(),
            ),
          );
        }
      },
      {
        // CallUs
        'name': MyText.title39,
        'icon': Icons.phone_in_talk_outlined,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CallUs(),
            ),
          );
        }
      },
    ];
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetImage(
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
      endDrawer: Drawer(
        child: Container(
          height: AppSize.z400,
          color: MyColors.blackColor,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Container(
                      padding: EdgeInsets.all(AppPadding.p10),
                      decoration: BoxDecoration(
                          color: MyColors.whiteColor,
                          borderRadius: BorderRadius.circular(AppSize.z10)),
                      child: Image(image: AssetImage(imageMeneger.image1))),
                ),
              ),
              ListView.builder(
                itemCount: mapdrawer.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return ListTileMenu(
                      iconMenu: mapdrawer[index]["icon"],
                      titleitem_menu: mapdrawer[index]["name"],
                      movePage: mapdrawer[index]["fun"]);
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
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
      )

          // TabBarPage(
          //     tap11: MyText.title43,
          //     tap22: MyText.title44,
          //     page1: ContactInformation(),
          //     page2: inquiry()),
          ),
    );
  }
}
