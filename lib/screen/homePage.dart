// ignore_for_file: file_names

import 'package:flutter/material.dart';
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
import 'coll_us_file/call_us.dart';

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
      backgroundColor: const Color.fromRGBO(238, 237, 232, 1),
      endDrawer: Drawer(
        // surfaceTintColor: Colors.pink,
        // shadowColor: Colors.red,
        // backgroundColor: Colors.amber,

        child: Container(
          color: Colors.black,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child:
                          Image(image: AssetImage("assets/images/image2.png"))),
                ),
              ),
              ListTileMenu(
                iconMenu: Icons.home,
                titleitem_menu: "الرئيسية",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.person_pin_outlined,
                titleitem_menu: "عن الشيخ",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AbutSheikhPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.videocam_outlined,
                titleitem_menu: "المرئيات",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const videoPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.mic_none_rounded,
                titleitem_menu: "الصوتيات",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => VoicePage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.insert_drive_file_outlined,
                titleitem_menu: "الفتاوى",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => FatwasPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.menu_book_rounded,
                titleitem_menu: "المقالات",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ArticlesPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.book_outlined,
                titleitem_menu: "الكتب والمؤلفات",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const BooksAndPublicationsPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.insert_drive_file_outlined,
                titleitem_menu: "الدرر الدينية",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ReligiousPearlsPage(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.link_rounded,
                titleitem_menu: "روابط تهمك",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Important_links(),
                    ),
                  );
                },
              ),
              ListTileMenu(
                iconMenu: Icons.phone_in_talk_outlined,
                titleitem_menu: "اتصل بنا",
                movePage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CallUs(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Image(
          image: AssetImage("assets/images/image2.png"),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.notifications_active_outlined,
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Notifcations(),
              ),
            );
          },
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SliderImages(URL: "assets/images/dorerr1.png"),
                  SliderImages(URL: "assets/images/arc1.png"),
                  SliderImages(URL: "assets/images/dorerr1.png"),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 250,
                bottom: 10,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      CategoriesHomePage(
                        iconn: Icons.insert_drive_file_outlined,
                        name_cato: "الفتاوى",
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
                        name_cato: "الصوتيات",
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
                        name_cato: "المرئيات",
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
                        name_cato: "اتصل بنا",
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
                        name_cato: "المقالات",
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
                        name_cato: "عن الشيخ",
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
                        name_cato: " الكتب والمؤلفات",
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
                        name_cato: "الدرر الدينية",
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
    );
  }
}
