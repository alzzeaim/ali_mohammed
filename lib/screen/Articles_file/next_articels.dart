import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/Articles_page.dart';

import '../../widget/app_bar_actions.dart';
import '../../widget/app_bar_title.dart';

class NextArticles extends StatefulWidget {
  const NextArticles({super.key});

  @override
  State<NextArticles> createState() => _NextArticlesState();
}

class _NextArticlesState extends State<NextArticles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: AppBar(
        leading: SizedBox(),
        title:  AppBarTitle(
            titel:
               MyText.title3),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ArticlesPage(),
              ),
            );
          }),
        ],
      ),
      body: SafeArea(child: Text("fshet")),
    );
  }
}
