import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

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
        padding: const EdgeInsets.only(
          left: 0,
          right: 20,
          top: 5,
          bottom: 0,
        ),
        child: Icon(
          iconMenu,
          color: Color.fromRGBO(148, 137, 74, 1),
          size: 24,
        ),
      ),
      title: Text(
        titleitem_menu,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: () {
        movePage();
      },
    );
  }
}
