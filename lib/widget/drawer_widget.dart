import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Religious%20pearls_file/Religious_pearls_page.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';
import '../constant/text.dart';
import '../screen/Abut_Sheikh_page.dart';
import '../screen/Articles_file/Articles_page.dart';
import '../screen/Books_and_publications_file/Books and publications_page.dart';
import '../screen/Fatwas_file/Fatwas_page.dart';
import '../screen/Important_links.dart';
import '../screen/bottom_bar.dart';
import '../screen/call_us_file/call_us.dart';
import '../screen/video_file1/video_page.dart';
import '../screen/voice_file/voice_page.dart';
import 'list_tile_menu.dart';

class DrawerWidget {

  static Drawer drawerWidget(BuildContext context) {
    
    List<Map<String, dynamic>> mapdrawer = [
      {
        // homee
        'name': MyText.title37,
        'icon': Icons.home,
        'fun': () {
          Navigator.of(context ).push(
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
          Navigator.of(context ).push(
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
          Navigator.of(context ).push(
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
          Navigator.of(context as BuildContext).push(
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
          Navigator.of(context as BuildContext).push(
            MaterialPageRoute(
              builder: (context) => CallUs(),
            ),
          );
        }
      },
    ];
    return Drawer(
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
    );
  }
}