import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/Articles_page.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/View_the_article.dart';
import 'package:flutter_alli_mohammed_hassan/widget/app_bar_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/top_search_widget.dart';
import 'package:flutter_alli_mohammed_hassan/widget/type_of_itme/itme_type4_2_new.dart';

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
      appBar: AppBarWidget.appBarWidgetTitle(
          Title: MyText.title3,
          backPage: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ArticlesPage(),
              ),
            );
          }),
      body: SafeArea(
        child: Column(
          children: [
            TopSearchWidget(),
            ItmeType4_2New(
                URL3: imageMeneger.image6,
                decItme: MyText.title2,
                nextPage: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ViewTheArticle(),
                    ),
                  );
                },
                isNew: false)
          ],
        ),
      ),
    );
  }
}
