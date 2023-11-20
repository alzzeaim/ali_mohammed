
import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/screen/bottom_bar.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/size.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';
import '../screen/Abut_Sheikh_page.dart';
import '../screen/Articles_file/Articles_page.dart';
import '../screen/Books_and_publications_file/Books and publications_page.dart';
import '../screen/Fatwas_file/Fatwas_page.dart';
import '../screen/Important_links.dart';
import '../screen/Religious pearls_file/Religious_pearls_page.dart';
import '../screen/call_us_file/call_us.dart';
import '../screen/video_file1/video_page.dart';
import '../screen/voice_file/voice_page.dart';
import 'list_tile_menu.dart';

class AppBarWidget {
  static AppBar appBarWidgetImage({
    required String URLImage,
    required IconData icon,
    required VoidCallback backPage,
    required VoidCallback backPage2,
  }) {
    return AppBar(
      backgroundColor: MyColors.MyBackGround,
      title: GestureDetector(
          onTap: () {
            backPage2();
          },
          child: Image(image: AssetImage(URLImage))),
      leading: IconButton(
        icon: Icon(icon),
        onPressed: () {
          backPage();
        },
      ),
    );
  }

  static AppBar appBarWidgetTitle({
    required String Title,
    required VoidCallback backPage,
  }) {
    return AppBar(
      backgroundColor: MyColors.MyBackGround,
      automaticallyImplyLeading: false,
      title: Center(
          child: Text(Title,
              textAlign: TextAlign.center, style: MyTextStyle.style26)),
      actions: [
        GestureDetector(
          onTap: () {
            backPage();
          },
          child: Padding(
            padding: EdgeInsets.only(
              right: AppPadding.p15,
              top: AppPadding.p15,
            ),
            child: Row(
              children: [
                Text(
                  MyText.textGenera7,
                  style: MyTextStyle.style30,
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: MyColors.greyColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static AppBar appBarWidgetImageAndBack({
    required String URLImage,
    required VoidCallback backPage,
    required VoidCallback backPage2,
  }) {
    return AppBar(
      backgroundColor: MyColors.MyBackGround,
      automaticallyImplyLeading: false,
      leading: SizedBox(),
      title: GestureDetector(
        onTap: () {
          backPage2();
        },
        child: Image(image: AssetImage(URLImage)),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            backPage();
          },
          child: Padding(
            padding: EdgeInsets.only(
              right: AppPadding.p15,
              top: AppPadding.p15,
            ),
            child: Row(
              children: [
                Text(
                  MyText.textGenera7,
                  textAlign: TextAlign.center,
                  style: MyTextStyle.style30,
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: MyColors.greyColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  static AppBar appBarWidgetImageAndBackAndLeading({
    required String URLImage,
    required IconData icon,
    required VoidCallback backPage,
    required VoidCallback backPage2,
    required VoidCallback nextPage,
  }) {
    return AppBar(
      backgroundColor: MyColors.MyBackGround,
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(icon),
        onPressed: () {
          nextPage();
        },
      ),
      title: GestureDetector(
        onTap: () {
          backPage2();
        },
        child: Image(image: AssetImage(URLImage)),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            backPage();
          },
          child: Padding(
            padding: EdgeInsets.only(
              right: AppPadding.p15,
              top: AppPadding.p15,
            ),
            child: Row(
              children: [
                Text(
                  MyText.textGenera7,
                  style: MyTextStyle.style30,
                ),
                Icon(
                  Icons.chevron_right_rounded,
                  color: MyColors.greyColor,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

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
