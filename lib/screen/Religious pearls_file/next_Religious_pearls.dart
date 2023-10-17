// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/widget/appbar.dart';

import '../../widget/View_The_Religious_And_Articles.dart';
import 'Religious_pearls_page.dart';

class NextReligiousPearls extends StatefulWidget {
  const NextReligiousPearls({super.key});

  @override
  State<NextReligiousPearls> createState() => _NextReligiousPearlsState();
}

class _NextReligiousPearlsState extends State<NextReligiousPearls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.MyBackGround,
      appBar: myAppBar(
        tilte: MyText.title47,
        backPage: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const ReligiousPearlsPage(),
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
    );
  }
}
