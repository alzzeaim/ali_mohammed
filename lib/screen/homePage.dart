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
import 'package:flutter_alli_mohammed_hassan/widget/list_tile_menu.dart';
import '../widget/CategoriesHomePage.dart';
import '../widget/slidre_image_home.dart';
import 'Articles_file/Articles_page.dart';
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
    List<Map<String, dynamic>> mapdrawer = [
      {
        // homee
        'name': MyText.title37,
        'icon': Icons.home,
        'fun': () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => HomePage(),
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
                          borderRadius: BorderRadius.circular(AppPadding.p10)),
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
      appBar: AppBar(
        title: Image(
          image: AssetImage(imageMeneger.image1),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_active_outlined,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BottomBar(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SliderImages(URL: imageMeneger.image6),
                    SliderImages(URL: imageMeneger.image5),
                    SliderImages(URL: imageMeneger.image4),
                    SliderImages(URL: imageMeneger.image3),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: AppMargin.m10,
                  right: AppMargin.m10,
                  top: AppMargin.m240,
                  bottom: AppMargin.m10,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: MyColors.grey300Color,
                  borderRadius: BorderRadius.circular(AppPadding.p15),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CategoriesHomePage(
                          iconn: Icons.insert_drive_file_outlined,
                          name_cato: MyText.title9,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => FatwasPage(),
                              ),
                            );
                          },
                        ),
                        CategoriesHomePage(
                          iconn: Icons.mic_none,
                          name_cato: MyText.title29,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => VoicePage(),
                              ),
                            );
                          },
                        ),
                        CategoriesHomePage(
                          iconn: Icons.videocam_outlined,
                          name_cato: MyText.title23,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const videoPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoriesHomePage(
                          iconn: Icons.phone_outlined,
                          name_cato: MyText.title39,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CallUs(),
                              ),
                            );
                          },
                        ),
                        CategoriesHomePage(
                          iconn: Icons.menu_book_rounded,
                          name_cato: MyText.title1,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ArticlesPage(),
                              ),
                            );
                          },
                        ),
                        CategoriesHomePage(
                          iconn: Icons.person_pin_outlined,
                          name_cato: MyText.title36,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AbutSheikhPage(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CategoriesHomePage(
                          iconn: Icons.book_outlined,
                          name_cato: MyText.title5,
                          wi: 235,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BooksAndPublicationsPage(),
                              ),
                            );
                          },
                        ),
                        CategoriesHomePage(
                          iconn: Icons.insert_drive_file_outlined,
                          name_cato: MyText.title19,
                          newPage: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ReligiousPearlsPage(),
                              ),
                            );
                          },
                        ),
                      ],
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
