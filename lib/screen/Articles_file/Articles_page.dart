import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/Recently_added_Articles.dart';
import 'package:flutter_alli_mohammed_hassan/screen/homePage.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';
import 'Articles.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: const AppBarTitle(titel: "المقالات"),
        actions: [
          AppBarActions(backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          }),
        ],
      ),
      body: SafeArea(
          child: TabBarPage(
        tap11: "المضاف مؤاخراً",
        tap22: "المقالات",
        page1: RecentlyAddedArticles(),
        page2: const Articles(),
      )),
    );
  }
}