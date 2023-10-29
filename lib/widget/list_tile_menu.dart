import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/padding.dart';
import 'package:flutter_alli_mohammed_hassan/constant/size.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text_style.dart';

class ListTileMenu extends StatelessWidget {
  IconData iconMenu;
  final titleitem_menu;
  VoidCallback movePage;
  ListTileMenu({
    super.key,
    required this.iconMenu,
    required this.titleitem_menu,
    required this.movePage,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Padding(
        padding:  EdgeInsets.only(
          right: AppPadding.p20,
          top: AppPadding.p5,
        ),
        child: Icon(
          iconMenu,
          color:MyColors.MyAction,
          size: AppSize.z24,
        ),
      ),
      title: Text(
        titleitem_menu,
        textAlign: TextAlign.right,
        style: MyTextStyle.style29
      ),
      onTap: () {
        movePage();
      },
    );
  }
}
