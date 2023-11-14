import 'dart:ffi';

import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/padding.dart';
import '../constant/text.dart';
import '../constant/text_style.dart';

class AppBarWidget {
  static AppBar appBarWidgetImage({
    required String URLImage,
    required IconData icon,
    required VoidCallback backPage,
  }) {
    return AppBar(
      title: Image(image: AssetImage(URLImage)),
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
      automaticallyImplyLeading: false,
      leading: SizedBox(),
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
  }) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: SizedBox(),
       title: Image(image: AssetImage(URLImage)),
      
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



  static AppBar appBarWidgetImageAndBackAndLeading({
     required String URLImage,
      required IconData icon,
    required VoidCallback backPage,
    required VoidCallback nextPage,
  }) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
        icon: Icon(icon),
        onPressed: () {
          nextPage();
        },
      ),
       title: Image(image: AssetImage(URLImage)),
      
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
