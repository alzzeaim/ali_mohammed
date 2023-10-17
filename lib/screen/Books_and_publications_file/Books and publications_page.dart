import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Books_and_publications_file/Recently_added_Books.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_actions.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_title.dart';
import 'package:flutter_alli_mohammed_hassan/widget/tabbarPage.dart';

import '../homePage.dart';
import 'Books_and_publications.dart';

class BooksAndPublicationsPage extends StatefulWidget {
  const BooksAndPublicationsPage({super.key});

  @override
  State<BooksAndPublicationsPage> createState() =>
      _BooksAndPublicationsPageState();
}

class _BooksAndPublicationsPageState extends State<BooksAndPublicationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: AppBarTitle(titel: MyText.title6),
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
      // body:
      body: TabBarPage(
        tap11: MyText.textGeneral1,
        tap22:MyText.title5,
        page1: RecentlyAddedBooks(),
        page2: BooksAndPublications(),
      ),
    );
  }
}
