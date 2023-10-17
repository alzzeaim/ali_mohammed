// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_alli_mohammed_hassan/constant/colors.dart';
import 'package:flutter_alli_mohammed_hassan/constant/images.dart';
import 'package:flutter_alli_mohammed_hassan/constant/text.dart';
import 'package:flutter_alli_mohammed_hassan/screen/Articles_file/next_articels.dart';
import 'package:flutter_alli_mohammed_hassan/widget/Video_series.dart';

import '../../widget/type_of_itme/itme_type3_new.dart';

class Articles extends StatelessWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.MyBackGround,
        body: SafeArea(
          child: ItmeType3New(
              numItme: 10,
              URL3: imageMeneger.image2,
              decItme: MyText.title2,
              nextPage: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => NextArticles(),
                  ),
                );
              },
              isNew: false),
        ));
  }
}
