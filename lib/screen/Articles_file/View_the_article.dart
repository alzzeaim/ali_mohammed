import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/Articles_page.dart';

import '../../constant/colors.dart';
import '../../constant/text.dart';
import '../../widget/View_The_Religious_And_Articles.dart';
import '../../widget/app_bar_title.dart';

class ViewTheArticle extends StatefulWidget {
  const ViewTheArticle({super.key});

  @override
  State<ViewTheArticle> createState() => _ViewTheArticleState();
}

class _ViewTheArticleState extends State<ViewTheArticle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: myAppBar(
        title: MyText.title47,
        backPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ArticlesPage(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: ViewTheReligiousAndArticles(
          title: MyText.title47,
          dec: MyText.title49,
        ),
      ),
    );;
  }
}