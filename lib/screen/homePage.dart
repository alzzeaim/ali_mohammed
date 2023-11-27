// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Abut_Sheikh_page.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Important_links.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Notifications.dart';
import 'package:flutter_alli_mohammed_hassan/screen/video_file1/video_page.dart';
import 'package:flutter_alli_mohammed_hassan/screen/voice_file/voice_page.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/list_tile_menu.dart';
import '../widget/CategoriesHomePage.dart';
import '../widget/drawer_widget.dart';
import '../widget/slidre_image_home.dart';
import 'Articles_file/Articles_page.dart';
import 'Articles_file/next_articels.dart';
import 'Books_and_publications_file/Books and publications_page.dart';
import 'Fatwas_file/Fatwas_page.dart';
import 'Religious pearls_file/Religious_pearls_page.dart';
import 'bottom_bar.dart';
import 'call_us_file/call_us.dart';

// import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      //  Drawer(
      //   child: Container(
      //     height: AppSize.z400,
      //     color: MyColors.blackColor,
      //     child: ListView(
      //       children: [
      //         DrawerHeader(
      //           child: Center(
      //             child: Container(
      //                 padding: EdgeInsets.all(AppPadding.p10),
      //                 decoration: BoxDecoration(
      //                     color: MyColors.whiteColor,
      //                     borderRadius: BorderRadius.circular(AppSize.z10)),
      //                 child: Image(image: AssetImage(imageMeneger.image1))),
      //           ),
      //         ),
      //         ListView.builder(
      //           itemCount: mapdrawer.length,
      //           shrinkWrap: true,
      //           itemBuilder: (BuildContext context, int index) {
      //             return ListTileMenu(
      //                 iconMenu: mapdrawer[index]["icon"],
      //                 titleitem_menu: mapdrawer[index]["name"],
      //                 movePage: mapdrawer[index]["fun"]);
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NextArticles(),
                            ),
                          );
                        },
                        child: SliderImages(URL: imageMeneger.image6)),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NextArticles(),
                            ),
                          );
                        },
                        child: SliderImages(URL: imageMeneger.image5)),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NextArticles(),
                            ),
                          );
                        },
                        child: SliderImages(URL: imageMeneger.image4)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: AppMargin.m10,
                  right: AppMargin.m10,
                  top: AppMargin.m10,
                  bottom: AppMargin.m10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.grey300Color,
                  borderRadius: BorderRadius.circular(AppSize.z15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: List.generate(
                        HomeData.listRow1.length,
                        (index) => CategoriesHomePage(
                          iconn: HomeData.listRow1[index]['icon'],
                          name_cato: HomeData.listRow1[index]['title'],
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeData.listRow1[index]['page'],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        HomeData.listRow2.length,
                        (index) => CategoriesHomePage(
                          iconn: HomeData.listRow2[index]['icon'],
                          name_cato: HomeData.listRow2[index]['title'],
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeData.listRow2[index]['page'],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        HomeData.listRow3.length,
                        (index) => CategoriesHomePage(
                          wi: HomeData.listRow3[index]['width'],
                          iconn: HomeData.listRow3[index]['icon'],
                          name_cato: HomeData.listRow3[index]['title'],
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    HomeData.listRow3[index]['page'],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomeData {
  static List<Map<String, dynamic>> listRow1 = [
    {
      'icon': Icons.insert_drive_file_outlined,
      'title': MyText.title9,
      'page': FatwasPage()
    },
    {
      'icon': Icons.mic_none,
      'title': MyText.title29,
      'page': VoicePage(),
    },
    {
      'icon': Icons.videocam_outlined,
      'title': MyText.title23,
      'page': videoPage(),
    },
  ];
  static List<Map<String, dynamic>> listRow2 = [
    {
      'icon': Icons.phone_outlined,
      'title': MyText.title39,
      'page': CallUs(),
    },
    {
      'icon': Icons.menu_book_rounded,
      'title': MyText.title1,
      'page': ArticlesPage(),
    },
    {
      'icon': Icons.person_pin_outlined,
      'title': MyText.title36,
      'page': AbutSheikhPage(),
    },
  ];
  static List<Map<String, dynamic>> listRow3 = [
    {
      'icon': Icons.book_outlined,
      'title': MyText.title5,
      'page': BooksAndPublicationsPage(),
      'width': 235.0
    },
    {
      'icon': Icons.insert_drive_file_outlined,
      'title': MyText.title19,
      'page': ReligiousPearlsPage(),
      'width': 110.0
    },
  ];
}
