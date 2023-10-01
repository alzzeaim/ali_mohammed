import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/widget/list_tile_menu.dart';
import '../../widget/tabbarPage.dart';
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
import 'contact_information.dart';
import 'inquiry.dart';

class CallUs extends StatefulWidget {
  const CallUs({super.key});

  @override
  State<CallUs> createState() => _CallUsState();
}

class _CallUsState extends State<CallUs> {
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
                      builder: (context) => const AbutSheikhPage(),
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
                      builder: (context) => const VoicePage(),
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
                      builder: (context) => const ReligiousPearlsPage(),
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
            TabBarPage(
                tap11: "معلومات الاتصال",
                tap22: "استفسار",
                page1: contactInformation(),
                page2: inquiry())
          ],
        ),
      ),
    );
  }
}
