import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/margin.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';

import 'Notifications.dart';
import 'bottom_bar.dart';
import 'homePage.dart';

class AbutSheikhPage extends StatefulWidget {
  const AbutSheikhPage({super.key});

  @override
  State<AbutSheikhPage> createState() => _AbutSheikhPageState();
}

class _AbutSheikhPageState extends State<AbutSheikhPage> {
  List myListTitle = [
    {'title': MyText.title31},
    {'title': MyText.title32},
    {'title': MyText.title33},
    {'title': MyText.title34},
    {'title': MyText.title35},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBarWidget.appBarWidgetImageAndBackAndLeading(
        backPage2: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => RootAppScreen(),
            ),
          );
        },
        URLImage: imageMeneger.image1,
        icon: Icons.notifications_active_outlined,
        nextPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Notifcations(),
            ),
          );
        },
        backPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const RootAppScreen(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(AppMargin.m20),
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p30, vertical: AppPadding.p10),
              decoration: BoxDecoration(
                color: MyColors.MyAction,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(AppSize.z20),
                  topRight: Radius.circular(AppSize.z20),
                ),
              ),
              child: Text(MyText.title36, style: MyTextStyle.style15),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: MyColors.grey200Color,
                  borderRadius: BorderRadius.circular(AppSize.z20),
                ),
                child: ListView.builder(
                  itemCount: myListTitle.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ItemOfAbutSheikh(
                      dec_text: myListTitle[index]["title"],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemOfAbutSheikh extends StatelessWidget {
  String dec_text;
  ItemOfAbutSheikh({
    super.key,
    required this.dec_text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppMargin.m20),
      width: double.infinity,
      height: AppSize.z100,
      decoration: BoxDecoration(
        color: MyColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSize.z20),
      ),
      child: Row(
        children: [
          Container(
            width: AppSize.z30,
            height: double.infinity,
            decoration: BoxDecoration(
              color: MyColors.MyAction,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppSize.z20),
                bottomLeft: Radius.circular(AppSize.z20),
              ),
            ),
            child: Icon(
              Icons.chevron_left_outlined,
              color: MyColors.whiteColor,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(AppPadding.p15),
              child: Text(
                dec_text,
                style: MyTextStyle.style16,
                textAlign: TextAlign.right,
              ),
            ),
          )
        ],
      ),
    );
  }
}
