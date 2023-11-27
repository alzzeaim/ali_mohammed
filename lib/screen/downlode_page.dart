import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import '../constant/colors.dart';
import '../constant/size.dart';
import '../widget/app_bar_widget.dart';
import '../widget/drawer_widget.dart';
import '../widget/item_of_voice.dart';
import '../widget/top_search_widget.dart';
import 'Notifications.dart';
import 'bottom_bar.dart';

class DownloedPage extends StatefulWidget {
  const DownloedPage({super.key});

  @override
  State<DownloedPage> createState() => _DownloedPageState();
}

class _DownloedPageState extends State<DownloedPage> {
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
            Center(
              child: Container(
                margin: EdgeInsets.only(top: AppSize.z10),
                padding: EdgeInsets.symmetric(
                    vertical: AppPadding.p10, horizontal: AppPadding.p30),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(AppSize.z15),
                    topRight: Radius.circular(AppSize.z15),
                  ),
                  color: MyColors.MyAction,
                ),
                child: Text(MyText.downloed),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: AppPadding.p10),
              child: TopSearchWidget(),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return ItemOfVoice(
                    icona: Icons.play_arrow_rounded,
                  );
                },
              ),
            ),
          ],
        ),

        
      ),
    );
  }
}
